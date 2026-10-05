# Publication Tooling

This hidden directory contains the controlled PDF publication tooling and intermediate
assets. It is not part of the Red Team Methodology publication.

## Prerequisites

```powershell
winget install --id JohnMacFarlane.Pandoc
winget install --id MiKTeX.MiKTeX
npm install -g @mermaid-js/mermaid-cli mermaid-filter
```

## Build

```powershell
.\.publication\build-pdf.cmd
.\.publication\build-pdf.cmd -Target annexes
.\.publication\build-pdf.cmd -Target templates
.\.publication\build-pdf.cmd -Target all
```

The wrapper produces `RedTeamMethodology-v1.0.pdf`, `RedTeamAnnexes-v1.0.pdf` and
`RedTeamTemplates-v1.0.pdf`. It also publishes T01 to T12 as separate working forms under
`templates/published/`.

The three reference publications retain their controlled cover, blank leaves and contents.
Individual forms open directly on the form. Outputs carry `UNCLASSIFIED` marks,
`x/total` pagination, adaptive table widths and alternating light-grey rows.

## Verify

Run both audits after every publication build:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\.publication\audit-source.ps1
powershell -NoProfile -ExecutionPolicy Bypass -File .\.publication\audit-pdf.ps1
```

The PDF audit writes hashes and publication statistics to
`.publication/build/audit/pdf-inventory.csv`.

## Publication Hash

After approval and signature, record the final publication hash in the approval record.

```powershell
Get-FileHash -Algorithm SHA256 .\RedTeamMethodology-v1.0.pdf | Format-List
```
