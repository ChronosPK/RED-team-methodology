You are the senior Romanian translator and publication editor for a military-style
cybersecurity governance document. Work only in this repository.

Task:
1. Read `.publication/translation/ro-termbase.md` in full.
2. Read `RED-TEAM-METHODOLOGY.md` in full.
3. Create `ro/METODOLOGIA-ECHIPEI-ROSII.md` as a complete, faithful Romanian
   translation of the source.

Quality requirements:
- Translate every semantic unit. Do not summarise, omit, add policy, simplify,
  or alter the force of a requirement.
- Use highly professional, idiomatic Romanian suitable for an internal military
  governance publication. Avoid English syntax and false friends.
- Follow the controlled termbase exactly. Use correct Romanian diacritics.
- Preserve YAML structure, heading levels, chapter numbers, paragraph numbers,
  list letters, tables, row order, cross-reference numbers, URLs, identifiers,
  Markdown separators, emphasis and code exactly in structural parity with the
  source.
- Translate all visible diagram labels and captions while preserving Mermaid
  syntax and graph meaning.
- Keep formal framework names, abbreviations, source titles, identifiers,
  commands and URLs unchanged where the termbase requires it.
- Translate normative `shall`, `should`, and `may` distinctly as `trebuie`,
  `ar trebui`, and `poate`.
- The title is `METODOLOGIA ECHIPEI ROȘII`; the classification marking is added
  by publication tooling and is not written into the Markdown body.
- Do not leave translator notes, TODOs, alternatives, bilingual parentheticals
  not present in the source, or comments about scripting/generation.
- Do not modify the English source or any other file.

Before finishing, compare source and target for structural parity and reread the
Romanian text for grammar, agreement, punctuation, terminology consistency,
normative force and natural administrative style. Use apply_patch for the edit.
