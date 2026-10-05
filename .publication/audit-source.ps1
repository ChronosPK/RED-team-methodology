[CmdletBinding()]
param()

$ErrorActionPreference = 'Stop'
$toolRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$projectRoot = Split-Path -Parent $toolRoot
$issues = [System.Collections.Generic.List[string]]::new()
$checks = 0

function Add-Issue {
    param([string]$Path, [int]$Line, [string]$Message)
    $location = if ($Line -gt 0) { '{0}:{1}' -f $Path, $Line } else { $Path }
    $issues.Add("$location - $Message")
}

function Get-TableColumnCount {
    param([string]$Line)
    $body = $Line.Trim()
    if ($body.StartsWith('|')) { $body = $body.Substring(1) }
    if ($body.EndsWith('|')) { $body = $body.Substring(0, $body.Length - 1) }
    return [regex]::Split($body, '(?<!\\)\|').Count
}

$publicationFiles = @(
    Join-Path $projectRoot 'RED-TEAM-METHODOLOGY.md'
) + @(
    Get-ChildItem -LiteralPath (Join-Path $projectRoot 'annexes') -Filter '*.md' -File |
        Sort-Object Name |
        ForEach-Object FullName
) + @(
    Get-ChildItem -LiteralPath (Join-Path $projectRoot 'templates') -Filter '*.md' -File |
        Sort-Object Name |
        ForEach-Object FullName
)

$utf8Strict = [System.Text.UTF8Encoding]::new($false, $true)
$allControlIds = @{}
$allSectionIds = @{}

foreach ($file in $publicationFiles) {
    $relative = $file.Substring($projectRoot.Length).TrimStart([char[]]@('\', '/'))
    $bytes = [System.IO.File]::ReadAllBytes($file)
    try {
        $text = $utf8Strict.GetString($bytes)
    }
    catch {
        Add-Issue $relative 0 'not valid UTF-8'
        continue
    }
    $checks++

    if ($text.Contains([char]0xFFFD)) {
        Add-Issue $relative 0 'contains the Unicode replacement character'
    }
    if (-not $text.EndsWith([Environment]::NewLine) -and -not $text.EndsWith([char]10)) {
        Add-Issue $relative 0 'does not end with a newline'
    }

    $lines = $text -split "\r?\n"
    $headings = @{}
    $lastHeadingLevel = 0
    $expectedTableColumns = 0

    for ($index = 0; $index -lt $lines.Count; $index++) {
        $line = $lines[$index]
        $lineNumber = $index + 1

        if ($line -match '[ \t]+$') {
            Add-Issue $relative $lineNumber 'trailing whitespace'
        }

        if ($line -match '^(#{1,6})\s+(.+?)\s*$') {
            $level = $Matches[1].Length
            $heading = $Matches[2].Trim().ToLowerInvariant()
            if ($lastHeadingLevel -gt 0 -and $level -gt ($lastHeadingLevel + 1)) {
                Add-Issue $relative $lineNumber "heading level jumps from $lastHeadingLevel to $level"
            }
            $lastHeadingLevel = $level
            if ($headings.ContainsKey($heading)) {
                Add-Issue $relative $lineNumber "duplicate heading '$($Matches[2].Trim())'"
            }
            else {
                $headings[$heading] = $lineNumber
            }

            $sectionMatch = [regex]::Match(
                $Matches[2],
                '^(?:PART\s+)?(?<id>[A-K](?:[1-9][0-9]*)?\.[0-9]+(?:\.[0-9]+)*)\b',
                [System.Text.RegularExpressions.RegexOptions]::IgnoreCase
            )
            if ($sectionMatch.Success) {
                $allSectionIds[$sectionMatch.Groups['id'].Value.ToUpperInvariant()] = $true
            }
        }

        if ($line -match '^\s*\|.*\|\s*$') {
            $columns = Get-TableColumnCount $line
            if ($expectedTableColumns -eq 0) {
                $expectedTableColumns = $columns
            }
            elseif ($columns -ne $expectedTableColumns) {
                Add-Issue $relative $lineNumber "table has $columns columns; expected $expectedTableColumns"
            }
        }
        else {
            $expectedTableColumns = 0
        }

        $controlMatch = [regex]::Match(
            $line,
            '^\s*(?<id>(?:[1-9][0-9]*|[A-K](?:[1-9][0-9]*)?)\.[0-9]+(?:\.[0-9]+)*)\s'
        )
        if ($controlMatch.Success) {
            $id = $controlMatch.Groups['id'].Value
            if ($allControlIds.ContainsKey($id) -and
                $allControlIds[$id].Path -eq $relative) {
                Add-Issue $relative $lineNumber "duplicate control identifier '$id'"
            }
            else {
                $allControlIds[$id] = @{ Path = $relative; Line = $lineNumber }
            }
        }
    }
}

$mainText = Get-Content -LiteralPath (Join-Path $projectRoot 'RED-TEAM-METHODOLOGY.md') -Raw -Encoding UTF8
$mainControlIds = @{}
foreach ($match in [regex]::Matches(
    $mainText,
    '(?m)^\s*(?<id>[1-9][0-9]*\.[0-9]+(?:\.[0-9]+)*)\s'
)) {
    $mainControlIds[$match.Groups['id'].Value] = $true
}

foreach ($file in $publicationFiles) {
    $relative = $file.Substring($projectRoot.Length).TrimStart([char[]]@('\', '/'))
    $lines = Get-Content -LiteralPath $file -Encoding UTF8
    for ($index = 0; $index -lt $lines.Count; $index++) {
        $line = $lines[$index]
        foreach ($match in [regex]::Matches(
            $line,
            '\bparagraphs?\s+(?<id>(?:[A-K](?:[1-9][0-9]*)?\.)?[0-9]+(?:\.[0-9]+)+)',
            [System.Text.RegularExpressions.RegexOptions]::IgnoreCase
        )) {
            $id = $match.Groups['id'].Value.ToUpperInvariant()
            if ($id -match '^[A-K]') {
                if (-not $allControlIds.ContainsKey($id) -and -not $allSectionIds.ContainsKey($id)) {
                    Add-Issue $relative ($index + 1) "unresolved paragraph reference '$id'"
                }
            }
            elseif (-not $mainControlIds.ContainsKey($id)) {
                Add-Issue $relative ($index + 1) "unresolved methodology paragraph reference '$id'"
            }
        }
    }
}
$checks++

$annexLetters = 65..75 | ForEach-Object { [char]$_ }
foreach ($letter in $annexLetters) {
    $checks++
    $match = Get-ChildItem -LiteralPath (Join-Path $projectRoot 'annexes') -Filter "$letter-*.md" -File
    if ($match.Count -ne 1) {
        Add-Issue 'annexes' 0 "expected exactly one Annex $letter source; found $($match.Count)"
    }
}

1..12 | ForEach-Object {
    $id = 'T{0:D2}' -f $_
    $checks++
    $match = Get-ChildItem -LiteralPath (Join-Path $projectRoot 'templates') -Filter "$id-*.md" -File
    if ($match.Count -ne 1) {
        Add-Issue 'templates' 0 "expected exactly one $id source; found $($match.Count)"
    }
}

$controlledParts = [System.Collections.Generic.List[string]]::new()
$controlledParts.Add(
    (Get-Content -LiteralPath (Join-Path $projectRoot 'RED-TEAM-METHODOLOGY.md') -Raw -Encoding UTF8)
)
$publicationFiles |
    Where-Object { $_ -like '*\annexes\*' } |
    ForEach-Object {
        $controlledParts.Add((Get-Content -LiteralPath $_ -Raw -Encoding UTF8))
    }
$controlledText = $controlledParts -join [Environment]::NewLine

$forbidden = [ordered]@{
    'electronic mail' = 'use email'
    'tiber-eu.fr' = 'uncontrolled secondary TIBER source'
    'ROE Annex I' = 'ROE change record is Appendix 9'
    'Annex H of the ROE' = 'threat profile is ROE Appendix 8'
    'no protection whatsoever' = 'unsupported absolute legal claim'
    'scripted document' = 'publication-production wording'
    'generated document' = 'publication-production wording'
    'Attack Flow 3.2' = 'stale Attack Flow edition; the reviewed baseline uses version 4.0'
}

foreach ($phrase in $forbidden.Keys) {
    $checks++
    if ($controlledText.IndexOf($phrase, [System.StringComparison]::OrdinalIgnoreCase) -ge 0) {
        Add-Issue 'controlled sources' 0 "'$phrase' remains: $($forbidden[$phrase])"
    }
}

$requiredCurrentBaselines = [ordered]@{
    'ATT&CK v19' = 'current ATT&CK major release at the review date'
    'Attack Flow 4.0' = 'current Attack Flow specification at the review date'
    'Purple Team Exercise Framework v4' = 'current PTEF edition at the review date'
}

foreach ($phrase in $requiredCurrentBaselines.Keys) {
    $checks++
    if ($controlledText.IndexOf($phrase, [System.StringComparison]::OrdinalIgnoreCase) -lt 0) {
        Add-Issue 'controlled sources' 0 "missing '$phrase': $($requiredCurrentBaselines[$phrase])"
    }
}

$checks++
$httpsLinks = [regex]::Matches(
    $controlledText,
    'https://[^\s)>]+'
) | ForEach-Object { $_.Value.TrimEnd('.', ',', ';') } | Sort-Object -Unique
if ($httpsLinks.Count -lt 30) {
    Add-Issue 'controlled sources' 0 "contains only $($httpsLinks.Count) distinct HTTPS references; expected a substantive controlled-source register"
}

$checks++
if ([regex]::IsMatch($controlledText, 'http://', [System.Text.RegularExpressions.RegexOptions]::IgnoreCase)) {
    Add-Issue 'controlled sources' 0 'contains an insecure HTTP reference'
}

$checks++
$basisText = Get-Content -LiteralPath (Join-Path $projectRoot 'annexes\K-basis-and-sources.md') -Raw -Encoding UTF8
if ($basisText -notmatch 'The source baseline was reviewed on 3 August 2026\.') {
    Add-Issue 'annexes/K-basis-and-sources.md' 0 'missing the controlled source-baseline review date'
}

$checks++
$unresolved = [regex]::Matches(
    $controlledText,
    '\{\{[A-Z][A-Z0-9_]*\}\}|\[(?:DATE|NAME|ORGANISATION|CLASSIFICATION|REFERENCE|OTHER REFERENCES)\]',
    [System.Text.RegularExpressions.RegexOptions]::IgnoreCase
)
if ($unresolved.Count -gt 0) {
    Add-Issue 'controlled sources' 0 "contains $($unresolved.Count) unresolved publication placeholder(s)"
}

$checks++
$whiteTeamMatches = [regex]::Matches(
    $controlledText,
    'White Team',
    [System.Text.RegularExpressions.RegexOptions]::IgnoreCase
)
if ($whiteTeamMatches.Count -gt 2) {
    Add-Issue 'controlled sources' 0 "contains $($whiteTeamMatches.Count) White Team references; only controlled historical aliases are expected"
}

$checks++
$visibleNonDocuments = Get-ChildItem -LiteralPath $projectRoot -Recurse -File -Force |
    Where-Object {
        $relative = $_.FullName.Substring($projectRoot.Length).TrimStart([char[]]@('\', '/'))
        $segments = $relative -split '[\\/]'
        -not ($segments | Where-Object { $_.StartsWith('.') }) -and
        $_.Extension -notin @('.md', '.pdf')
    }
if ($visibleNonDocuments) {
    $relativeFiles = $visibleNonDocuments | ForEach-Object {
        $_.FullName.Substring($projectRoot.Length).TrimStart([char[]]@('\', '/'))
    }
    Add-Issue '.' 0 "visible non-document files: $($relativeFiles -join ', ')"
}

$checks++
$headerPath = Join-Path $toolRoot 'pdf-header.tex'
$frontPath = Join-Path $toolRoot 'pdf-before-toc.tex'
$headerText = Get-Content -LiteralPath $headerPath -Raw -Encoding UTF8
$frontText = Get-Content -LiteralPath $frontPath -Raw -Encoding UTF8
foreach ($required in @('UNCLASSIFIED', '\pageref*{LastPage}', '\fancyhead', '\fancyfoot')) {
    if (-not $headerText.Contains($required)) {
        Add-Issue '.publication/pdf-header.tex' 0 "missing publication control '$required'"
    }
}
if (-not $frontText.Contains('\null') -or -not $frontText.Contains('\clearpage')) {
    Add-Issue '.publication/pdf-before-toc.tex' 0 'missing intentional classified blank leaf'
}

if ($issues.Count -gt 0) {
    Write-Host "SOURCE AUDIT FAILED: $($issues.Count) issue(s) across $checks checks."
    $issues | ForEach-Object { Write-Host " - $_" }
    exit 1
}

Write-Host "SOURCE AUDIT PASSED: $checks checks; $($publicationFiles.Count) publication sources."
