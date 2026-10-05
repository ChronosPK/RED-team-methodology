[CmdletBinding()]
param(
    [ValidateSet('methodology', 'annexes', 'templates', 'all')]
    [string]$Target = 'methodology'
)

$ErrorActionPreference = 'Stop'
$toolRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$projectRoot = Split-Path -Parent $toolRoot
$previousLocation = (Get-Location).Path

function Resolve-Executable {
    param(
        [Parameter(Mandatory = $true)]
        [string]$Name,

        [Parameter(Mandatory = $true)]
        [string[]]$Candidates
    )

    $command = Get-Command $Name -CommandType Application -ErrorAction SilentlyContinue |
        Select-Object -First 1
    if ($command) {
        return $command.Source
    }

    foreach ($candidate in $Candidates) {
        if ($candidate -and (Test-Path -LiteralPath $candidate -PathType Leaf)) {
            return $candidate
        }
    }

    throw "Required executable '$Name' was not found. See README.md for installation instructions."
}

function Invoke-PandocBuild {
    param(
        [Parameter(Mandatory = $true)]
        [string[]]$Inputs,

        [Parameter(Mandatory = $true)]
        [string]$Output,

        [Parameter(Mandatory = $true)]
        [string]$FontSize,

        [Parameter(Mandatory = $true)]
        [string]$Title,

        [string]$Subtitle = '',

        [bool]$IncludeFrontMatter = $true,

        [ValidateSet('publication', 'template')]
        [string]$PublicationKind = 'publication'
    )

    $arguments = @($Inputs) + @(
        '-o', $Output,
        '-F', $script:mermaidFilter,
        '--lua-filter', $script:tableLayout,
        "--pdf-engine=$script:pdfLatex",
        '--pdf-engine-opt=--enable-installer',
        "--include-in-header=$script:pdfHeader",
        "--resource-path=$script:projectRoot",
        '-V', 'geometry:margin=2.5cm',
        '-V', 'papersize:a4',
        '-V', "fontsize:$FontSize",
        '-V', 'colorlinks=true'
    )

    if ($IncludeFrontMatter) {
        $arguments += @(
            "--include-before-body=$script:beforeToc",
            '--toc',
            '--toc-depth=2',
            '-M', "title=$Title",
            '-M', "subtitle=$Subtitle",
            '-M', 'author=Version 1.0',
            '-M', 'date=2026',
            '-M', 'toc-title=Contents'
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

    $filterLog = Join-Path $script:projectRoot 'mermaid-filter.err'
    if (Test-Path -LiteralPath $filterLog -PathType Leaf) {
        $log = Get-Item -LiteralPath $filterLog
        if ($log.Length -eq 0) {
            Remove-Item -LiteralPath $filterLog -Force
        }
        else {
            $logDirectory = Join-Path $script:toolRoot 'build'
            $null = New-Item -ItemType Directory -Force -Path $logDirectory
            Move-Item -LiteralPath $filterLog `
                -Destination (Join-Path $logDirectory 'mermaid-filter.err') `
                -Force
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
    $mermaidCandidates = @(
        (Join-Path $env:APPDATA 'npm\mermaid-filter.cmd')
    )

    $script:pandoc = Resolve-Executable -Name 'pandoc.exe' -Candidates $pandocCandidates
    $script:pdfLatex = Resolve-Executable -Name 'pdflatex.exe' -Candidates $latexCandidates
    $script:mermaidFilter = Resolve-Executable -Name 'mermaid-filter.cmd' -Candidates $mermaidCandidates
    $script:toolRoot = $toolRoot
    $script:pdfHeader = Join-Path $toolRoot 'pdf-header.tex'
    $script:beforeToc = Join-Path $toolRoot 'pdf-before-toc.tex'
    $script:templateBefore = Join-Path $toolRoot 'pdf-template-before.tex'
    $script:tableLayout = Join-Path $toolRoot 'table-layout.lua'

    $toolDirectories = @(
        (Split-Path -Parent $script:pandoc),
        (Split-Path -Parent $script:pdfLatex),
        (Split-Path -Parent $script:mermaidFilter)
    )
    $env:Path = (($toolDirectories | Select-Object -Unique) -join ';') + ';' + $env:Path

    $diagramDirectory = Join-Path $toolRoot 'build\mermaid'
    $null = New-Item -ItemType Directory -Force -Path $diagramDirectory
    $env:MERMAID_FILTER_LOC = '.publication/build/mermaid'
    $env:MERMAID_FILTER_FORMAT = 'png'
    $env:MERMAID_FILTER_BACKGROUND = 'white'
    $env:MERMAID_FILTER_THEME = 'neutral'
    $env:MERMAID_FILTER_SCALE = '2'
    $env:MERMAID_FILTER_WIDTH = '800'
    $env:MERMAID_FILTER_IMAGE_CLASS = 'rt-diagram'
    $env:MERMAID_FILTER_MERMAID_CONFIG = Join-Path $toolRoot 'mermaid-config.json'

    if ($Target -in @('methodology', 'all')) {
        Invoke-PandocBuild `
            -Inputs @('RED-TEAM-METHODOLOGY.md') `
            -Output 'RedTeamMethodology-v1.0.pdf' `
            -FontSize '11pt' `
            -Title 'RED TEAM METHODOLOGY' `
            -Subtitle 'Planning, Authorisation, Conduct and Reporting of Red Team Engagements'
    }

    if ($Target -in @('annexes', 'all')) {
        $annexInputs = Get-ChildItem -LiteralPath (Join-Path $projectRoot 'annexes') -Filter '*.md' |
            Sort-Object Name |
            ForEach-Object { $_.FullName }

        if (-not $annexInputs) {
            throw 'No Markdown files were found in the annexes directory.'
        }

        Invoke-PandocBuild `
            -Inputs @($annexInputs) `
            -Output 'RedTeamAnnexes-v1.0.pdf' `
            -FontSize '10pt' `
            -Title 'RED TEAM METHODOLOGY' `
            -Subtitle 'ANNEXES - Operational Standards, Procedures and Reference Material'
    }

    if ($Target -in @('templates', 'all')) {
        $templateInputs = Get-ChildItem -LiteralPath (Join-Path $projectRoot 'templates') -Filter '*.md' |
            Sort-Object Name |
            ForEach-Object { $_.FullName }

        if (-not $templateInputs) {
            throw 'No Markdown files were found in the templates directory.'
        }

        Invoke-PandocBuild `
            -Inputs @($templateInputs) `
            -Output 'RedTeamTemplates-v1.0.pdf' `
            -FontSize '10pt' `
            -Title 'RED TEAM METHODOLOGY' `
            -Subtitle 'ENGAGEMENT PRO FORMAS - T01 TO T12' `
            -PublicationKind 'template'

        $publishedDirectory = Join-Path $projectRoot 'templates\published'
        $null = New-Item -ItemType Directory -Force -Path $publishedDirectory

        foreach ($templateInput in $templateInputs) {
            $titleLine = Get-Content -LiteralPath $templateInput -Encoding UTF8 |
                Where-Object { $_ -match '^#\s+' } |
                Select-Object -First 1
            if (-not $titleLine) {
                throw "No level-one title was found in '$templateInput'."
            }

            $templateTitle = $titleLine -replace '^#\s+', ''
            $baseName = [System.IO.Path]::GetFileNameWithoutExtension($templateInput)
            $individualOutput = Join-Path $publishedDirectory "$baseName-v1.0.pdf"

            Invoke-PandocBuild `
                -Inputs @($templateInput) `
                -Output $individualOutput `
                -FontSize '10pt' `
                -Title $templateTitle `
                -IncludeFrontMatter $false `
                -PublicationKind 'template'
        }
    }
}
finally {
    Set-Location -LiteralPath $previousLocation
}
