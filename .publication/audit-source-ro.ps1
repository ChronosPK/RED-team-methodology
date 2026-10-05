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

function Get-Count {
    param([string]$Text, [string]$Pattern)
    return [regex]::Matches($Text, $Pattern).Count
}

function Get-ControlIds {
    param([string]$Text)
    return @([regex]::Matches(
        $Text,
        '(?m)^(?<id>(?:[1-9][0-9]*|[A-K](?:[1-9][0-9]*)?)\.[0-9]+(?:\.[0-9]+)*)\s'
    ) | ForEach-Object { $_.Groups['id'].Value })
}

$pairs = @(
    @('RED-TEAM-METHODOLOGY.md', 'ro\METODOLOGIA-RED-TEAM.md'),
    @('annexes\A-roles-and-decision-rights.md', 'ro\anexe\A-roluri-si-drepturi-de-decizie.md'),
    @('annexes\B-rules-of-engagement-standard.md', 'ro\anexe\B-standardul-regulilor-de-angajare.md'),
    @('annexes\C-engagement-lifecycle.md', 'ro\anexe\C-ciclul-de-viata-al-misiunii.md'),
    @('annexes\D-planning-and-threat-profiling.md', 'ro\anexe\D-planificarea-si-profilul-amenintarii.md'),
    @('annexes\E-execution-and-tradecraft.md', 'ro\anexe\E-executie-si-procedee-operationale.md'),
    @('annexes\F-reporting-and-metrics.md', 'ro\anexe\F-raportare-si-indicatori.md'),
    @('annexes\G-legal-safety-and-data.md', 'ro\anexe\G-aspecte-juridice-siguranta-si-date.md'),
    @('annexes\H-service-lines.md', 'ro\anexe\H-categorii-de-misiuni.md'),
    @('annexes\I-military-and-classified-environments.md', 'ro\anexe\I-medii-specializate.md'),
    @('annexes\J-capability-tooling-and-training.md', 'ro\anexe\J-capabilitate-instrumente-laborator-si-instruire.md'),
    @('annexes\K-basis-and-sources.md', 'ro\anexe\K-fundamentare-aplicabilitate-si-surse.md'),
    @('templates\T01-engagement-request.md', 'ro\formulare\T01-cerere-initiere-misiune.md'),
    @('templates\T02-rules-of-engagement.md', 'ro\formulare\T02-reguli-de-angajare.md'),
    @('templates\T03-threat-profile.md', 'ro\formulare\T03-threat-profile.md'),
    @('templates\T04-engagement-plan.md', 'ro\formulare\T04-planul-misiunii.md'),
    @('templates\T05-operator-log.md', 'ro\formulare\T05-jurnalul-operatorului.md'),
    @('templates\T06-sitrep.md', 'ro\formulare\T06-sitrep.md'),
    @('templates\T07-deconfliction-record.md', 'ro\formulare\T07-evidenta-deconflictarii.md'),
    @('templates\T08-engagement-report.md', 'ro\formulare\T08-raportul-misiunii.md'),
    @('templates\T09-finding.md', 'ro\formulare\T09-constatare.md'),
    @('templates\T10-letter-of-authorisation.md', 'ro\formulare\T10-scrisoare-de-autorizare.md'),
    @('templates\T11-lessons-learned.md', 'ro\formulare\T11-lectii-identificate.md'),
    @('templates\T12-cleanup-register.md', 'ro\formulare\T12-cleanup-and-rollback-register.md')
)

$structuralPatterns = [ordered]@{
    headings = '(?m)^#{1,6}\s+'
    tableLines = '(?m)^\|'
    checkboxes = '☐'
    separators = '(?m)^---\s*$'
    numberedItems = '(?m)^\d+\.\s'
    letteredItems = '(?m)^[a-z]\.\s'
    mermaidBlocks = '(?m)^```\{\.mermaid'
    forcedPages = '(?m)^\\newpage\s*$'
    htmlBreaks = '(?m)^<br'
}

$utf8Strict = [System.Text.UTF8Encoding]::new($false, $true)
$romanianTexts = [System.Collections.Generic.List[string]]::new()

foreach ($pair in $pairs) {
    $sourcePath = Join-Path $projectRoot $pair[0]
    $targetPath = Join-Path $projectRoot $pair[1]
    foreach ($path in @($sourcePath, $targetPath)) {
        if (-not (Test-Path -LiteralPath $path -PathType Leaf)) {
            Add-Issue $path 0 'required bilingual source is missing'
        }
    }
    if (-not (Test-Path -LiteralPath $sourcePath -PathType Leaf) -or
        -not (Test-Path -LiteralPath $targetPath -PathType Leaf)) { continue }

    try {
        $source = $utf8Strict.GetString([System.IO.File]::ReadAllBytes($sourcePath))
        $target = $utf8Strict.GetString([System.IO.File]::ReadAllBytes($targetPath))
    }
    catch {
        Add-Issue $pair[1] 0 'source is not valid UTF-8'
        continue
    }
    $romanianTexts.Add($target)
    $checks++

    if (-not $target.EndsWith("`n")) { Add-Issue $pair[1] 0 'does not end with a newline' }
    if ($target.Contains([char]0xFFFD)) { Add-Issue $pair[1] 0 'contains a replacement character' }
    if ($target -match '[şţŞŢ]') { Add-Issue $pair[1] 0 'contains cedilla-form Romanian characters' }
    if ($target -match 'Ã|â€') { Add-Issue $pair[1] 0 'contains likely mojibake' }

    foreach ($name in $structuralPatterns.Keys) {
        $sourceCount = Get-Count $source $structuralPatterns[$name]
        $targetCount = Get-Count $target $structuralPatterns[$name]
        $checks++
        if ($sourceCount -ne $targetCount) {
            Add-Issue $pair[1] 0 "$name count differs from English source: $targetCount versus $sourceCount"
        }
    }

    $sourceIds = Get-ControlIds $source
    $targetIds = Get-ControlIds $target
    $checks++
    if (($sourceIds -join '|') -cne ($targetIds -join '|')) {
        Add-Issue $pair[1] 0 'numbered provision identifiers or ordering differ from English source'
    }

    $sourceUrls = @([regex]::Matches($source, 'https?://[^)\s]+') | ForEach-Object Value)
    $targetUrls = @([regex]::Matches($target, 'https?://[^)\s]+') | ForEach-Object Value)
    $checks++
    if (($sourceUrls -join '|') -cne ($targetUrls -join '|')) {
        Add-Issue $pair[1] 0 'URL set or ordering differs from English source'
    }

    $sourceBlocks = @([regex]::Split($source.Trim(), '\r?\n\s*\r?\n') |
        Where-Object { $_.Trim() })
    $targetBlocks = @([regex]::Split($target.Trim(), '\r?\n\s*\r?\n') |
        Where-Object { $_.Trim() })
    $checks++
    if ($sourceBlocks.Count -ne $targetBlocks.Count) {
        Add-Issue $pair[1] 0 "content-block count differs from English source: $($targetBlocks.Count) versus $($sourceBlocks.Count)"
    }

    $sourceQuoteBlocks = @($sourceBlocks | Where-Object { $_.TrimStart().StartsWith('>') })
    $targetQuoteBlocks = @($targetBlocks | Where-Object { $_.TrimStart().StartsWith('>') })
    $checks++
    if ($sourceQuoteBlocks.Count -ne $targetQuoteBlocks.Count) {
        Add-Issue $pair[1] 0 "block-quote count differs from English source: $($targetQuoteBlocks.Count) versus $($sourceQuoteBlocks.Count)"
    }

    $stableIdPattern = '(?<![A-Za-z0-9])(?:[A-K](?:\d)?\.\d+(?:\.\d+)*|T\d{2}|G[0-7]|SL-[1-4]|[A-Z]{1,5}-\d{2,3}|TA\d{4}|T\d{4}(?:\.\d{3})?)(?![A-Za-z0-9])'
    $sourceStableIds = @([regex]::Matches($source, $stableIdPattern) | ForEach-Object Value)
    $targetStableIds = @([regex]::Matches($target, $stableIdPattern) | ForEach-Object Value)
    $checks++
    if (($sourceStableIds -join '|') -cne ($targetStableIds -join '|')) {
        Add-Issue $pair[1] 0 'stable identifiers or cross-reference tokens differ from English source'
    }

    $lines = $target -split "\r?\n"
    $expectedColumns = 0
    $lastHeadingLevel = 0
    for ($index = 0; $index -lt $lines.Count; $index++) {
        $line = $lines[$index]
        $lineNumber = $index + 1
        if ($line -match '[ \t]+$') { Add-Issue $pair[1] $lineNumber 'trailing whitespace' }

        if ($line -match '^(#{1,6})\s+(.+?)\s*$') {
            $level = $Matches[1].Length
            $heading = $Matches[2].Trim().ToLowerInvariant()
            if ($lastHeadingLevel -gt 0 -and $level -gt ($lastHeadingLevel + 1)) {
                Add-Issue $pair[1] $lineNumber "heading level jumps from $lastHeadingLevel to $level"
            }
            $lastHeadingLevel = $level
        }

        if ($line -match '^\s*\|.*\|\s*$') {
            $columns = Get-TableColumnCount $line
            if ($expectedColumns -eq 0) { $expectedColumns = $columns }
            elseif ($columns -ne $expectedColumns) {
                Add-Issue $pair[1] $lineNumber "table has $columns columns; expected $expectedColumns"
            }
        }
        else { $expectedColumns = 0 }
    }
    $checks++
}

$allRomanian = $romanianTexts -join "`n"
$forbidden = [ordered]@{
    'echipa roșie' = 'retain Red Team in English'
    'echipei roșii' = 'retain Red Team in English'
    'echipă roșie' = 'retain Red Team in English'
    'echipa albastră' = 'retain Blue Team in English'
    'echipa violet' = 'retain Purple Team in English'
    'echipa albă' = 'retain White Team in English'
    'echipa verde' = 'retain Green Team in English'
    'echipei verzi' = 'retain Green Team in English'
    'echipa galbenă' = 'retain Yellow Team in English'
    'echipei galbene' = 'retain Yellow Team in English'
    'echipa de control' = 'retain Control Team in English'
    'agent de încredere' = 'retain Trusted Agent in English'
    'ingineria socială' = 'retain social engineering in English'
    'accesul inițial' = 'retain initial access in English'
    'Persistența' = 'retain persistence in English'
    'profil al amenințării' = 'retain Threat Profile in English'
    'profilurile amenințărilor' = 'retain Threat Profile in English'
    'fir de trasabilitate' = 'retain golden thread in English'
    'emularea adversarului' = 'retain adversary emulation in English'
    'procedee operaționale' = 'retain tradecraft in English'
    'eliminarea artefactelor' = 'retain cleanup in English'
    'misiune acoperită' = 'retain covert in English'
    'misiunilor acoperite' = 'retain covert in English'
    'redirectoare' = 'retain redirector in English'
    'lanțul de aprovizionare' = 'retain supply chain in English'
    'poștă electronică' = 'use e-mail'
    'document scriptat' = 'remove publication-production wording'
    'document generat' = 'remove publication-production wording'
    'generated document' = 'remove publication-production wording'
    'electronic mail' = 'use e-mail'
}
foreach ($phrase in $forbidden.Keys) {
    $checks++
    if ($allRomanian.IndexOf($phrase, [System.StringComparison]::OrdinalIgnoreCase) -ge 0) {
        Add-Issue 'ro' 0 "forbidden phrase '$phrase': $($forbidden[$phrase])"
    }
}

foreach ($required in @(
    'METODOLOGIA RED TEAM', 'NECLASIFICAT', 'Red Team Lead', 'Trusted Agent',
    'Control Team', 'Threat Profile', 'threat intelligence', 'Get In', 'Stay In', 'Act',
    'Green Team', 'Yellow Team', 'adversary emulation', 'tradecraft', 'cleanup',
    'covert', 'open', 'golden thread', 'read-across'
)) {
    $checks++
    if ($required -eq 'NECLASIFICAT') { continue }
    if ($allRomanian.IndexOf($required, [System.StringComparison]::OrdinalIgnoreCase) -lt 0) {
        Add-Issue 'ro' 0 "required controlled term '$required' is absent"
    }
}

$checks++
$basis = Get-Content -LiteralPath (Join-Path $projectRoot 'ro\anexe\K-fundamentare-aplicabilitate-si-surse.md') -Raw -Encoding UTF8
if ($basis -notmatch 'Baza de surse a fost revizuită la 3 august 2026\.') {
    Add-Issue 'ro/anexe/K-fundamentare-aplicabilitate-si-surse.md' 0 'missing source-baseline review date'
}

$checks++
$classification = Get-Content -LiteralPath (Join-Path $toolRoot 'pdf-classification-ro.tex') -Raw -Encoding UTF8
if ($classification -notmatch '\\newcommand\{\\rtclassification\}\{NECLASIFICAT\}') {
    Add-Issue '.publication/pdf-classification-ro.tex' 0 'Romanian classification override is missing'
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

if ($issues.Count -gt 0) {
    Write-Host "ROMANIAN SOURCE AUDIT FAILED: $($issues.Count) issue(s) across $checks checks."
    $issues | ForEach-Object { Write-Host " - $_" }
    exit 1
}

Write-Host "ROMANIAN SOURCE AUDIT PASSED: $checks checks; $($pairs.Count) bilingual source pairs."
