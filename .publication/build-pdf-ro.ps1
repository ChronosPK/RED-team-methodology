[CmdletBinding()]
param(
    [ValidateSet('methodology', 'annexes', 'forms', 'all')]
    [string]$Target = 'methodology'
)

$ErrorActionPreference = 'Stop'
$toolRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$projectRoot = Split-Path -Parent $toolRoot
$roRoot = Join-Path $projectRoot 'ro'
$previousLocation = (Get-Location).Path

function Resolve-Executable {
    param(
        [Parameter(Mandatory = $true)][string]$Name,
        [Parameter(Mandatory = $true)][string[]]$Candidates
    )

    $command = Get-Command $Name -CommandType Application -ErrorAction SilentlyContinue |
        Select-Object -First 1
    if ($command) { return $command.Source }

    foreach ($candidate in $Candidates) {
        if ($candidate -and (Test-Path -LiteralPath $candidate -PathType Leaf)) {
            return $candidate
        }
    }

    throw "Required executable '$Name' was not found."
}

function Invoke-PandocBuild {
    param(
        [Parameter(Mandatory = $true)][string[]]$Inputs,
        [Parameter(Mandatory = $true)][string]$Output,
        [Parameter(Mandatory = $true)][string]$FontSize,
        [Parameter(Mandatory = $true)][string]$Title,
        [string]$Subtitle = '',
        [bool]$IncludeFrontMatter = $true,
        [ValidateSet('publication', 'template')][string]$PublicationKind = 'publication'
    )

    $arguments = @($Inputs) + @(
        '-o', $Output,
        '-F', $script:mermaidFilter,
        '--lua-filter', $script:tableLayout,
        "--pdf-engine=$script:pdfLatex",
        '--pdf-engine-opt=--enable-installer',
        "--include-in-header=$script:classificationHeader",
        "--include-in-header=$script:pdfHeader",
        "--resource-path=$script:projectRoot",
        '-V', 'geometry:margin=2.5cm',
        '-V', 'papersize:a4',
        '-V', "fontsize:$FontSize",
        '-V', 'colorlinks=true',
        '-V', 'lang=ro-RO'
    )

    if ($IncludeFrontMatter) {
        $arguments += @(
            "--include-before-body=$script:beforeToc",
            '--toc',
            '--toc-depth=2',
            '-M', "title=$Title",
            '-M', "subtitle=$Subtitle",
            '-M', 'author=Versiunea 1.0',
            '-M', 'date=2026',
            '-M', 'toc-title=Cuprins'
        )
    }
    else {
        $arguments += @(
            "--include-before-body=$script:templateBefore",
            '-M', "title-meta=$Title"
        )
    }

    Write-Host "Building $Output ..."
    $previousPublicationKind = $env:RT_PUBLICATION_KIND
    $env:RT_PUBLICATION_KIND = $PublicationKind
    try {
        & $script:pandoc @arguments
        $pandocExitCode = $LASTEXITCODE
    }
    finally {
        if ($null -eq $previousPublicationKind) {
            Remove-Item Env:RT_PUBLICATION_KIND -ErrorAction SilentlyContinue
        }
        else {
            $env:RT_PUBLICATION_KIND = $previousPublicationKind
        }
    }

    $filterLog = Join-Path $projectRoot 'mermaid-filter.err'
    if (Test-Path -LiteralPath $filterLog -PathType Leaf) {
        $log = Get-Item -LiteralPath $filterLog
        if ($log.Length -eq 0) {
            Remove-Item -LiteralPath $filterLog -Force
        }
        else {
            $logDirectory = Join-Path $toolRoot 'build'
            $null = New-Item -ItemType Directory -Force -Path $logDirectory
            Move-Item -LiteralPath $filterLog `
                -Destination (Join-Path $logDirectory 'mermaid-filter-ro.err') -Force
        }
    }

    if ($pandocExitCode -ne 0) {
        throw "Pandoc failed while building '$Output' (exit code $pandocExitCode)."
    }

    $pdf = Get-Item -LiteralPath $Output
    $hash = Get-FileHash -Algorithm SHA256 -LiteralPath $Output
    Write-Host ("Built {0} ({1:N0} bytes)" -f $pdf.FullName, $pdf.Length)
    Write-Host ("SHA-256: {0}" -f $hash.Hash)
}

try {
    Set-Location -LiteralPath $projectRoot

    $pandocCandidates = @(
        (Join-Path $env:LOCALAPPDATA 'Pandoc\pandoc.exe'),
        (Join-Path $env:ProgramFiles 'Pandoc\pandoc.exe')
    )
    $latexCandidates = @(
        (Join-Path $env:LOCALAPPDATA 'Programs\MiKTeX\miktex\bin\x64\pdflatex.exe'),
        (Join-Path $env:ProgramFiles 'MiKTeX\miktex\bin\x64\pdflatex.exe')
    )
    $mermaidCandidates = @((Join-Path $env:APPDATA 'npm\mermaid-filter.cmd'))

    $script:pandoc = Resolve-Executable -Name 'pandoc.exe' -Candidates $pandocCandidates
    $script:pdfLatex = Resolve-Executable -Name 'pdflatex.exe' -Candidates $latexCandidates
    $script:mermaidFilter = Resolve-Executable -Name 'mermaid-filter.cmd' -Candidates $mermaidCandidates
    $script:projectRoot = $projectRoot
    $script:pdfHeader = Join-Path $toolRoot 'pdf-header.tex'
    $script:classificationHeader = Join-Path $toolRoot 'pdf-classification-ro.tex'
    $script:beforeToc = Join-Path $toolRoot 'pdf-before-toc.tex'
    $script:templateBefore = Join-Path $toolRoot 'pdf-template-before.tex'
    $script:tableLayout = Join-Path $toolRoot 'table-layout.lua'

    $toolDirectories = @(
        (Split-Path -Parent $script:pandoc),
        (Split-Path -Parent $script:pdfLatex),
        (Split-Path -Parent $script:mermaidFilter)
    )
    $env:Path = (($toolDirectories | Select-Object -Unique) -join ';') + ';' + $env:Path

    $diagramDirectory = Join-Path $toolRoot 'build\mermaid-ro'
    $null = New-Item -ItemType Directory -Force -Path $diagramDirectory
    $env:MERMAID_FILTER_LOC = '.publication/build/mermaid-ro'
    $env:MERMAID_FILTER_FORMAT = 'png'
    $env:MERMAID_FILTER_BACKGROUND = 'white'
    $env:MERMAID_FILTER_THEME = 'neutral'
    $env:MERMAID_FILTER_SCALE = '2'
    $env:MERMAID_FILTER_WIDTH = '800'
    $env:MERMAID_FILTER_IMAGE_CLASS = 'rt-diagram'
    $env:MERMAID_FILTER_MERMAID_CONFIG = Join-Path $toolRoot 'mermaid-config.json'

    if ($Target -in @('methodology', 'all')) {
        Invoke-PandocBuild `
            -Inputs @('ro/METODOLOGIA-RED-TEAM.md') `
            -Output 'ro/MetodologiaRedTeam-v1.0.pdf' `
            -FontSize '11pt' `
            -Title 'METODOLOGIA RED TEAM' `
            -Subtitle 'Planificarea, autorizarea, desfășurarea și raportarea misiunilor Red Team'
    }

    if ($Target -in @('annexes', 'all')) {
        $annexInputs = Get-ChildItem -LiteralPath (Join-Path $roRoot 'anexe') -Filter '*.md' |
            Sort-Object Name | ForEach-Object FullName
        if (-not $annexInputs) { throw 'No Romanian annex files were found.' }

        Invoke-PandocBuild `
            -Inputs @($annexInputs) `
            -Output 'ro/AnexeRedTeam-v1.0.pdf' `
            -FontSize '10pt' `
            -Title 'METODOLOGIA RED TEAM' `
            -Subtitle 'ANEXE - Standarde operaționale, proceduri și materiale de referință'
    }

    if ($Target -in @('forms', 'all')) {
        $formInputs = Get-ChildItem -LiteralPath (Join-Path $roRoot 'formulare') -Filter '*.md' |
            Sort-Object Name | ForEach-Object FullName
        if (-not $formInputs) { throw 'No Romanian form files were found.' }

        Invoke-PandocBuild `
            -Inputs @($formInputs) `
            -Output 'ro/FormulareRedTeam-v1.0.pdf' `
            -FontSize '10pt' `
            -Title 'METODOLOGIA RED TEAM' `
            -Subtitle 'FORMULARE OPERAȚIONALE - T01-T12' `
            -PublicationKind 'template'

        $publishedDirectory = Join-Path $roRoot 'formulare\publicate'
        $null = New-Item -ItemType Directory -Force -Path $publishedDirectory

        foreach ($formInput in $formInputs) {
            $titleLine = Get-Content -LiteralPath $formInput -Encoding UTF8 |
                Where-Object { $_ -match '^#\s+' } | Select-Object -First 1
            if (-not $titleLine) { throw "No level-one title was found in '$formInput'." }

            $formTitle = $titleLine -replace '^#\s+', ''
            $baseName = [System.IO.Path]::GetFileNameWithoutExtension($formInput)
            $individualOutput = Join-Path $publishedDirectory "$baseName-v1.0.pdf"

            Invoke-PandocBuild `
                -Inputs @($formInput) `
                -Output $individualOutput `
                -FontSize '10pt' `
                -Title $formTitle `
                -IncludeFrontMatter $false `
                -PublicationKind 'template'
        }
    }
}
finally {
    Set-Location -LiteralPath $previousLocation
}
