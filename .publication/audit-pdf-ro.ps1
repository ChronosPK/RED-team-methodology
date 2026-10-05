[CmdletBinding()]
param()

$ErrorActionPreference = 'Stop'
$toolRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$projectRoot = Split-Path -Parent $toolRoot
$auditRoot = Join-Path $toolRoot 'build\audit-ro'
$null = New-Item -ItemType Directory -Force -Path $auditRoot

$issues = [System.Collections.Generic.List[string]]::new()
$checks = 0
$pagesAudited = 0
$wordsAudited = 0
$collisionsAudited = 0

function Add-Issue {
    param(
        [string]$File,
        [int]$Page,
        [string]$Message
    )

    $location = if ($Page -gt 0) { "$File page $Page" } else { $File }
    $issues.Add("$location - $Message")
}

function Resolve-PdfTool {
    param([Parameter(Mandatory = $true)][string]$Name)

    $command = Get-Command "$Name.exe" -CommandType Application -ErrorAction SilentlyContinue |
        Select-Object -First 1
    if ($command) {
        return $command.Source
    }

    $candidates = @(
        (Join-Path $env:LOCALAPPDATA "Programs\MiKTeX\miktex\bin\x64\$Name.exe"),
        (Join-Path $env:ProgramFiles "MiKTeX\miktex\bin\x64\$Name.exe"),
        (Join-Path $env:ProgramFiles "Git\usr\bin\$Name.exe")
    )
    foreach ($candidate in $candidates) {
        if ($candidate -and (Test-Path -LiteralPath $candidate -PathType Leaf)) {
            return $candidate
        }
    }

    throw "Required PDF audit tool '$Name.exe' was not found."
}

function Invoke-PdfCommand {
    param(
        [Parameter(Mandatory = $true)][string]$Executable,
        [Parameter(Mandatory = $true)][string[]]$Arguments
    )

    # MiKTeX's Poppler wrappers may warn on stderr when their user-level log
    # directory is unavailable in a restricted build environment. The PDF
    # operation remains valid, so judge the native process by its exit code.
    $previousPreference = $ErrorActionPreference
    try {
        $ErrorActionPreference = 'Continue'
        $output = & $Executable @Arguments 2>$null
        $exitCode = $LASTEXITCODE
    }
    finally {
        $ErrorActionPreference = $previousPreference
    }

    if ($exitCode -ne 0) {
        throw "PDF tool '$([System.IO.Path]::GetFileName($Executable))' failed with exit code $exitCode."
    }
    return @($output)
}

function Get-InfoMap {
    param([Parameter(Mandatory = $true)][string]$Pdf)

    $lines = Invoke-PdfCommand -Executable $script:pdfinfo -Arguments @($Pdf)

    $result = @{}
    foreach ($line in $lines) {
        if ($line -match '^([^:]+):\s*(.*)$') {
            $result[$Matches[1].Trim()] = $Matches[2].Trim()
        }
    }
    return $result
}

function Get-PageText {
    param(
        [Parameter(Mandatory = $true)][string]$Pdf,
        [Parameter(Mandatory = $true)][string]$Stem,
        [Parameter(Mandatory = $true)][int]$ExpectedPages
    )

    $path = Join-Path $auditRoot "$Stem-layout.txt"
    $null = Invoke-PdfCommand -Executable $script:pdftotext `
        -Arguments @('-q', '-enc', 'UTF-8', '-eol', 'unix', '-layout', $Pdf, $path)
    if (-not (Test-Path -LiteralPath $path -PathType Leaf)) {
        throw "pdftotext layout extraction failed for '$Pdf'."
    }

    $text = [System.IO.File]::ReadAllText($path, [System.Text.Encoding]::UTF8)
    $pages = [regex]::Split($text, "\f")
    if ($pages.Count -gt 0 -and [string]::IsNullOrWhiteSpace($pages[-1])) {
        $pages = $pages[0..($pages.Count - 2)]
    }
    if ($pages.Count -ne $ExpectedPages) {
        Add-Issue ([System.IO.Path]::GetFileName($Pdf)) 0 `
            "text extraction returned $($pages.Count) page(s); PDF reports $ExpectedPages"
    }

    return @($pages)
}

function Get-BodyText {
    param([string]$PageText)

    $bodyLines = foreach ($line in [regex]::Split($PageText, "\r?\n")) {
        $trimmed = $line.Trim()
        if (-not $trimmed) { continue }
        if ($trimmed -eq 'NECLASIFICAT') { continue }
        if ($trimmed -match '^\d+/\d+$') { continue }
        $trimmed
    }
    return ($bodyLines -join "`n").Trim()
}

function Test-WordGeometry {
    param(
        [Parameter(Mandatory = $true)][string]$Pdf,
        [Parameter(Mandatory = $true)][string]$Stem,
        [Parameter(Mandatory = $true)][int]$ExpectedPages,
        [Parameter(Mandatory = $true)][hashtable]$Rotations
    )

    $fileName = [System.IO.Path]::GetFileName($Pdf)
    $path = Join-Path $auditRoot "$Stem-words.tsv"
    $null = Invoke-PdfCommand -Executable $script:pdftotext `
        -Arguments @('-q', '-enc', 'UTF-8', '-eol', 'unix', '-tsv', $Pdf, $path)
    if (-not (Test-Path -LiteralPath $path -PathType Leaf)) {
        throw "pdftotext TSV extraction failed for '$Pdf'."
    }

    $rows = Import-Csv -LiteralPath $path -Delimiter "`t" -Encoding UTF8
    $pageRows = @($rows | Where-Object { $_.level -eq '1' -and $_.text -eq '###PAGE###' })
    $wordRows = @($rows | Where-Object { $_.level -eq '5' })
    $script:wordsAudited += $wordRows.Count
    if ($pageRows.Count -ne $ExpectedPages) {
        Add-Issue $fileName 0 "TSV contains $($pageRows.Count) page records; expected $ExpectedPages"
    }

    $pageDimensions = @{}
    foreach ($row in $pageRows) {
        $page = [int]$row.page_num
        $width = [double]::Parse($row.width, [Globalization.CultureInfo]::InvariantCulture)
        $height = [double]::Parse($row.height, [Globalization.CultureInfo]::InvariantCulture)
        if ($Rotations[$page] -in @(90, 270)) {
            $visualWidth = $height
            $visualHeight = $width
        }
        else {
            $visualWidth = $width
            $visualHeight = $height
        }
        $pageDimensions[$page] = @{
            Width = $visualWidth
            Height = $visualHeight
        }
    }

    $normalisedWords = foreach ($row in $wordRows) {
        $left = [double]::Parse($row.left, [Globalization.CultureInfo]::InvariantCulture)
        $top = [double]::Parse($row.top, [Globalization.CultureInfo]::InvariantCulture)
        $width = [double]::Parse($row.width, [Globalization.CultureInfo]::InvariantCulture)
        $height = [double]::Parse($row.height, [Globalization.CultureInfo]::InvariantCulture)
        [PSCustomObject]@{
            Page = [int]$row.page_num
            Paragraph = [int]$row.par_num
            Block = [int]$row.block_num
            Line = [int]$row.line_num
            Word = [int]$row.word_num
            Left = $left
            Top = $top
            Right = $left + $width
            Bottom = $top + $height
            Width = $width
            Height = $height
            Text = $row.text
        }
    }

    foreach ($word in $normalisedWords) {
        $dimensions = $pageDimensions[$word.Page]
        if (-not $dimensions) { continue }
        if ($word.Left -lt -0.25 -or $word.Top -lt -0.25 -or
            $word.Right -gt ($dimensions.Width + 0.25) -or
            $word.Bottom -gt ($dimensions.Height + 0.25)) {
            Add-Issue $fileName $word.Page `
                "text '$($word.Text)' lies outside the page boundary at [$($word.Left),$($word.Top),$($word.Right),$($word.Bottom)]"
        }
    }
    $script:checks++

    for ($page = 1; $page -le $ExpectedPages; $page++) {
        $pageWords = @($normalisedWords | Where-Object Page -eq $page | Sort-Object Top, Left)
        for ($firstIndex = 0; $firstIndex -lt $pageWords.Count; $firstIndex++) {
            $first = $pageWords[$firstIndex]
            for ($secondIndex = $firstIndex + 1; $secondIndex -lt $pageWords.Count; $secondIndex++) {
                $second = $pageWords[$secondIndex]
                if ($second.Top -ge ($first.Bottom - 0.25)) { break }

                $xOverlap = [Math]::Min($first.Right, $second.Right) -
                    [Math]::Max($first.Left, $second.Left)
                if ($xOverlap -le 0.75) { continue }
                $yOverlap = [Math]::Min($first.Bottom, $second.Bottom) -
                    [Math]::Max($first.Top, $second.Top)
                $minimumHeight = [Math]::Min($first.Height, $second.Height)
                if ($yOverlap -le (0.30 * $minimumHeight)) { continue }

                $script:collisionsAudited++
                Add-Issue $fileName $page `
                    "overlapping text boxes: '$($first.Text)' and '$($second.Text)'"
            }
        }
    }
    $script:checks++

    foreach ($page in 1..$ExpectedPages) {
        $dimensions = $pageDimensions[$page]
        if (-not $dimensions) { continue }
        $marks = @($normalisedWords | Where-Object {
            $_.Page -eq $page -and $_.Text -ceq 'NECLASIFICAT'
        })
        if ($marks.Count -ne 2) {
            Add-Issue $fileName $page "expected two positioned NECLASIFICAT marks; found $($marks.Count)"
            continue
        }

        $topMark = $marks | Sort-Object Top | Select-Object -First 1
        $bottomMark = $marks | Sort-Object Bottom -Descending | Select-Object -First 1
        if ($topMark.Top -gt (0.12 * $dimensions.Height)) {
            Add-Issue $fileName $page 'top classification mark is not in the top page band'
        }
        if ($bottomMark.Bottom -lt (0.88 * $dimensions.Height)) {
            Add-Issue $fileName $page 'bottom classification mark is not in the bottom page band'
        }
    }
    $script:checks++
}

$script:pdfinfo = Resolve-PdfTool 'pdfinfo'
$script:pdftotext = Resolve-PdfTool 'pdftotext'
$script:pdffonts = Resolve-PdfTool 'pdffonts'
$script:pdfimages = Resolve-PdfTool 'pdfimages'

$definitions = @(
    [PSCustomObject]@{
        Path = Join-Path $projectRoot 'ro\MetodologiaRedTeam-v1.0.pdf'
        Kind = 'front'
        Title = 'METODOLOGIA RED TEAM'
        BodyMarker = 'EVIDENȚA MODIFICĂRILOR'
        MinimumImages = 3
    },
    [PSCustomObject]@{
        Path = Join-Path $projectRoot 'ro\AnexeRedTeam-v1.0.pdf'
        Kind = 'front'
        Title = 'METODOLOGIA RED TEAM'
        BodyMarker = 'ANEXA A - ROLURI ȘI DREPTURI DE DECIZIE'
        MinimumImages = 10
    },
    [PSCustomObject]@{
        Path = Join-Path $projectRoot 'ro\FormulareRedTeam-v1.0.pdf'
        Kind = 'front'
        Title = 'METODOLOGIA RED TEAM'
        BodyMarker = 'T01 - CERERE DE INIȚIERE ȘI CALIFICARE A MISIUNII'
        MinimumImages = 0
    }
)

foreach ($template in Get-ChildItem -LiteralPath (Join-Path $projectRoot 'ro\formulare\publicate') `
    -Filter 'T??-*-v1.0.pdf' -File | Sort-Object Name) {
    $definitions += [PSCustomObject]@{
        Path = $template.FullName
        Kind = 'standalone'
        Title = $template.BaseName.Substring(0, 3)
        BodyMarker = $template.BaseName.Substring(0, 3)
        MinimumImages = 0
    }
}

$checks++
if ($definitions.Count -ne 15) {
    Add-Issue 'publication set' 0 "expected 15 PDFs; found $($definitions.Count)"
}

$inventory = [System.Collections.Generic.List[object]]::new()
$forbiddenPhrases = @(
    'electronic mail',
    'poștă electronică',
    'echipa roșie',
    'echipei roșii',
    'echipă roșie',
    'echipa albastră',
    'echipa violet',
    'echipa albă',
    'echipa verde',
    'echipei verzi',
    'echipa galbenă',
    'echipei galbene',
    'echipa de control',
    'agent de încredere',
    'ingineria socială',
    'accesul inițial',
    'Persistența',
    'profil al amenințării',
    'profilurile amenințărilor',
    'fir de trasabilitate',
    'emularea adversarului',
    'procedee operaționale',
    'eliminarea artefactelor',
    'misiune acoperită',
    'misiunilor acoperite',
    'redirectoare',
    'lanțul de aprovizionare',
    'document scriptat',
    'document generat',
    'scripted document',
    'generated document',
    'tiber-eu.fr',
    'ROE Annex I',
    'Annex H of the ROE',
    'no protection whatsoever'
)

foreach ($definition in $definitions) {
    $pdf = $definition.Path
    $fileName = [System.IO.Path]::GetFileName($pdf)
    $stem = [System.IO.Path]::GetFileNameWithoutExtension($pdf)
    if (-not (Test-Path -LiteralPath $pdf -PathType Leaf)) {
        Add-Issue $fileName 0 'PDF does not exist'
        continue
    }

    $file = Get-Item -LiteralPath $pdf
    if ($file.Length -lt 10000) {
        Add-Issue $fileName 0 "PDF is unexpectedly small ($($file.Length) bytes)"
    }
    $checks++

    $info = Get-InfoMap $pdf
    $pageCount = [int]$info['Pages']
    $pagesAudited += $pageCount
    if ($pageCount -lt 1) {
        Add-Issue $fileName 0 'PDF contains no pages'
        continue
    }
    foreach ($field in 'Author', 'Creator', 'Producer') {
        if ($info[$field]) {
            Add-Issue $fileName 0 "$field metadata is not blank"
        }
    }
    if ($info['Encrypted'] -ne 'no') { Add-Issue $fileName 0 'PDF is encrypted' }
    if ($info['JavaScript'] -ne 'no') { Add-Issue $fileName 0 'PDF contains JavaScript' }
    if ($info['Suspects'] -ne 'no') { Add-Issue $fileName 0 'PDF parser marked the file as suspect' }
    if ($info['PDF version'] -notmatch '^1\.[4-7]$') {
        Add-Issue $fileName 0 "unexpected PDF version '$($info['PDF version'])'"
    }
    if ($definition.Kind -eq 'front' -and $info['Title'] -ne $definition.Title) {
        Add-Issue $fileName 0 "unexpected title metadata '$($info['Title'])'"
    }
    if ($definition.Kind -eq 'standalone' -and $info['Title'] -notmatch "^$([regex]::Escape($definition.Title))\b") {
        Add-Issue $fileName 0 "title metadata does not begin with $($definition.Title)"
    }
    $checks++

    $boxLines = Invoke-PdfCommand -Executable $script:pdfinfo `
        -Arguments @('-box', '-f', '1', '-l', [string]$pageCount, $pdf)
    $sizeMatches = @($boxLines | Where-Object {
        $_ -match '^Page\s+(\d+)\s+size:\s+([0-9.]+)\s+x\s+([0-9.]+)'
    })
    if ($sizeMatches.Count -ne $pageCount) {
        Add-Issue $fileName 0 "page-box output contains $($sizeMatches.Count) size records; expected $pageCount"
    }
    foreach ($line in $sizeMatches) {
        $null = $line -match '^Page\s+(\d+)\s+size:\s+([0-9.]+)\s+x\s+([0-9.]+)'
        $page = [int]$Matches[1]
        $width = [double]::Parse($Matches[2], [Globalization.CultureInfo]::InvariantCulture)
        $height = [double]::Parse($Matches[3], [Globalization.CultureInfo]::InvariantCulture)
        $isPortraitA4 = [Math]::Abs($width - 595.276) -lt 1.0 -and
            [Math]::Abs($height - 841.89) -lt 1.0
        $isLandscapeA4 = [Math]::Abs($width - 841.89) -lt 1.0 -and
            [Math]::Abs($height - 595.276) -lt 1.0
        if (-not $isPortraitA4 -and -not $isLandscapeA4) {
            Add-Issue $fileName $page "page size is not A4: $width x $height pt"
        }
    }
    $rotationMap = @{}
    $rotationLines = @($boxLines | Where-Object { $_ -match '^Page\s+\d+\s+rot:' })
    foreach ($line in $rotationLines) {
        if ($line -match '^Page\s+(\d+)\s+rot:\s+(-?\d+)') {
            $page = [int]$Matches[1]
            $rotation = [int]$Matches[2]
            $rotationMap[$page] = $rotation
            if ($rotation -notin @(0, 90)) {
                Add-Issue $fileName $page "unexpected page rotation $rotation degrees"
            }
        }
    }
    $checks++

    $fontLines = Invoke-PdfCommand -Executable $script:pdffonts -Arguments @($pdf)
    $fontRecords = @($fontLines | Select-Object -Skip 2 | Where-Object { $_.Trim() })
    if ($fontRecords.Count -eq 0) {
        Add-Issue $fileName 0 'no fonts were reported'
    }
    foreach ($line in $fontRecords) {
        if ($line -notmatch '\s+(yes|no)\s+(yes|no)\s+(yes|no)\s+\d+\s+\d+\s*$') {
            Add-Issue $fileName 0 "could not parse font record '$line'"
            continue
        }
        if ($Matches[1] -ne 'yes') { Add-Issue $fileName 0 'contains a non-embedded font' }
        if ($Matches[3] -ne 'yes') { Add-Issue $fileName 0 'contains a font without a Unicode map' }
    }
    $checks++

    $imageLines = Invoke-PdfCommand -Executable $script:pdfimages -Arguments @('-list', $pdf)
    $imageCount = @($imageLines | Where-Object { $_ -match '^\s*\d+\s+\d+\s+image\s+' }).Count
    if ($imageCount -lt $definition.MinimumImages) {
        Add-Issue $fileName 0 "contains $imageCount primary image(s); expected at least $($definition.MinimumImages)"
    }
    $checks++

    $urlLines = Invoke-PdfCommand -Executable $script:pdfinfo -Arguments @('-url', $pdf)
    $urls = @($urlLines | ForEach-Object {
        if ($_ -match '(https?://\S+)') { $Matches[1] }
    })
    foreach ($url in $urls) {
        if (-not $url.StartsWith('https://', [System.StringComparison]::OrdinalIgnoreCase)) {
            Add-Issue $fileName 0 "non-HTTPS link '$url'"
        }
        if ($url -match 'tiber-eu\.fr') {
            Add-Issue $fileName 0 "uncontrolled secondary TIBER link '$url'"
        }
    }
    if ($fileName -eq 'AnexeRedTeam-v1.0.pdf' -and ($urls | Sort-Object -Unique).Count -lt 25) {
        Add-Issue $fileName 0 'fewer than 25 distinct source links are embedded'
    }
    $checks++

    $pages = Get-PageText -Pdf $pdf -Stem $stem -ExpectedPages $pageCount
    $wholeText = $pages -join "`n"
    if ($wholeText.Contains([char]0xFFFD) -or
        $wholeText.Contains([char]0x00C3) -or
        $wholeText -match 'â€|[şţŞŢ]') {
        Add-Issue $fileName 0 'extracted text contains replacement or mojibake characters'
    }
    foreach ($phrase in $forbiddenPhrases) {
        if ($wholeText.IndexOf($phrase, [System.StringComparison]::OrdinalIgnoreCase) -ge 0) {
            Add-Issue $fileName 0 "forbidden stale phrase '$phrase' remains"
        }
    }
    $checks++

    for ($pageIndex = 0; $pageIndex -lt [Math]::Min($pages.Count, $pageCount); $pageIndex++) {
        $pageNumber = $pageIndex + 1
        $classificationCount = [regex]::Matches(
            $pages[$pageIndex],
            '(?m)^\s*NECLASIFICAT\s*$'
        ).Count
        if ($classificationCount -ne 2) {
            Add-Issue $fileName $pageNumber "expected two NECLASIFICAT labels; found $classificationCount"
        }
        $counterPattern = "(?m)^\s*$pageNumber/$pageCount\s*$"
        $counterCount = [regex]::Matches($pages[$pageIndex], $counterPattern).Count
        if ($counterCount -ne 1) {
            Add-Issue $fileName $pageNumber "expected page counter $pageNumber/$pageCount exactly once; found $counterCount"
        }
    }
    $checks++

    $bodyPages = @($pages | ForEach-Object { Get-BodyText $_ })
    $blankPages = [System.Collections.Generic.List[int]]::new()
    for ($index = 0; $index -lt $bodyPages.Count; $index++) {
        if ([string]::IsNullOrWhiteSpace($bodyPages[$index])) {
            $blankPages.Add($index + 1)
        }
    }

    if ($definition.Kind -eq 'front') {
        if ($bodyPages[0] -notmatch [regex]::Escape($definition.Title) -or
            $bodyPages[0] -notmatch 'Versiunea 1\.0' -or
            $bodyPages[0] -notmatch '(?m)^2026$') {
            Add-Issue $fileName 1 'cover is missing the title, version or year'
        }
        if (-not $blankPages.Contains(2)) {
            Add-Issue $fileName 2 'required blank leaf after the cover is not blank'
        }
        if ($bodyPages.Count -lt 3 -or $bodyPages[2] -notmatch '(?m)^Cuprins$') {
            Add-Issue $fileName 3 'contents do not begin on page 3'
        }

        $postContentsBlank = @($blankPages | Where-Object { $_ -gt 2 } | Select-Object -First 1)
        if ($postContentsBlank.Count -ne 1) {
            Add-Issue $fileName 0 'no blank leaf follows the contents'
        }
        else {
            $blankPage = [int]$postContentsBlank[0]
            if ($blankPage -ge $pageCount) {
                Add-Issue $fileName $blankPage 'blank contents leaf is the final page'
            }
            else {
                $normalisedBodyStart = $bodyPages[$blankPage] `
                    -replace '[\u2010-\u2015]', '-' `
                    -replace '\s+', ' '
            }
            if ($blankPage -lt $pageCount -and
                $normalisedBodyStart -notmatch [regex]::Escape($definition.BodyMarker)) {
                Add-Issue $fileName ($blankPage + 1) `
                    "body does not begin with expected marker '$($definition.BodyMarker)'"
            }

            $unexpectedBlanks = @($blankPages | Where-Object { $_ -ne 2 -and $_ -ne $blankPage })
            if ($unexpectedBlanks.Count -gt 0) {
                Add-Issue $fileName 0 "unexpected blank page(s): $($unexpectedBlanks -join ', ')"
            }
        }
    }
    else {
        $normalisedFirstPage = $bodyPages[0] `
            -replace '[\u2010-\u2015]', '-' `
            -replace '\s+', ' '
        if ($normalisedFirstPage -notmatch "(?i)$([regex]::Escape($definition.BodyMarker))") {
            Add-Issue $fileName 1 "standalone form does not start with $($definition.BodyMarker)"
        }
        if ($wholeText -match '(?m)^Cuprins$' -or $wholeText -match '(?m)^Versiunea 1\.0$') {
            Add-Issue $fileName 0 'standalone form contains publication-pack front matter'
        }
        if ($blankPages.Count -gt 0) {
            Add-Issue $fileName 0 "standalone form contains blank page(s): $($blankPages -join ', ')"
        }
    }
    $checks++

    if ($fileName -eq 'MetodologiaRedTeam-v1.0.pdf') {
        $normalisedWholeText = $wholeText -replace '\s+', ' '
        foreach ($term in 'Reglementată de', 'Prezenta publicație', 'Nu este reglementată de prezenta publicație') {
            if ($normalisedWholeText.IndexOf($term, [System.StringComparison]::OrdinalIgnoreCase) -lt 0) {
                Add-Issue $fileName 9 "2.10 comparison table is missing '$term'"
            }
        }
    }
    if ($fileName -eq 'AnexeRedTeam-v1.0.pdf') {
        foreach ($letter in 65..75 | ForEach-Object { [char]$_ }) {
            if ($wholeText -notmatch "ANEXA $letter\b") {
                Add-Issue $fileName 0 "Annex $letter is missing"
            }
        }
    }
    if ($fileName -eq 'FormulareRedTeam-v1.0.pdf') {
        foreach ($number in 1..12) {
            $templateId = 'T{0:D2}' -f $number
            if ($wholeText -notmatch "\b$templateId\b") {
                Add-Issue $fileName 0 "$templateId is missing"
            }
        }
    }
    $checks++

    Test-WordGeometry -Pdf $pdf -Stem $stem -ExpectedPages $pageCount -Rotations $rotationMap

    $hash = (Get-FileHash -Algorithm SHA256 -LiteralPath $pdf).Hash
    $inventory.Add([PSCustomObject]@{
        File = $fileName
        Pages = $pageCount
        Bytes = $file.Length
        LandscapePages = @($rotationMap.Values | Where-Object { $_ -eq 90 }).Count
        Images = $imageCount
        DistinctLinks = ($urls | Sort-Object -Unique).Count
        SHA256 = $hash
    })
}

$inventoryPath = Join-Path $auditRoot 'pdf-inventory.csv'
$inventory | Export-Csv -LiteralPath $inventoryPath -NoTypeInformation -Encoding UTF8

if ($issues.Count -gt 0) {
    Write-Host "ROMANIAN PDF AUDIT FAILED: $($issues.Count) issue(s) across $checks checks, $pagesAudited pages and $wordsAudited words."
    $issues | ForEach-Object { Write-Host " - $_" }
    exit 1
}

Write-Host "ROMANIAN PDF AUDIT PASSED: $checks checks; $($definitions.Count) PDFs; $pagesAudited pages; $wordsAudited positioned words; no text collisions."
Write-Host "Inventory: $inventoryPath"
