# ANNEX J — CAPABILITY: TOOLING, LABORATORY AND TRAINING

Supporting Chapters 6 and 10 of the Red Team Methodology. Issued under the authority of the
Head of Red Team.

This is the annex most subject to change. It is reviewed annually and whenever the estate or
the toolset changes.

Part J1 covers tooling and the laboratory. Part J2 covers skills and training.

---

# PART J1 — TOOLING AND LABORATORY

## J1.1 Principles

| | Principle |
|---|---|
| 1 | A tool is not used against a target until its artefacts, network signature and failure modes are understood |
| 2 | A tool is not used against a target until it has been exercised in a laboratory environment representative of that target |
| 3 | Native and signed system tooling is preferred where the objective and capability level permit |
| 4 | Tools are obtained from authoritative sources and their integrity verified. Offensive tooling is itself a target for supply-chain compromise. |
| 5 | Every tool in the baseline is recorded, versioned and owned |
| 6 | Offensive tooling is not held on personal devices |
| 7 | Capability is developed only where it cannot be obtained. Custom development is addressed at paragraph J1.8. |

---

## J1.2 The laboratory

J1.2.1 The laboratory is the precondition for the standing instruction at paragraph 8.6 of
the methodology and is established before the first engagement.

| Component | Purpose | Minimum |
|---|---|---|
| Directory environment | Assessment of identity techniques against the production directory model | One controller, two members, representative policy and organisational structure |
| Endpoint build | Assessment of techniques against the production image and endpoint protection configuration | The production image |
| Server build | Assessment of server-side techniques | Representative of production roles |
| Telemetry replica | Establishing what telemetry a technique produces | The same agents and forwarding configuration as production |
| Cloud tenancy | Assessment of control-plane techniques | A separate tenancy, never production |
| Network segment | Isolation | No route to production |
| Snapshot capability | Reset between tests | Any hypervisor |

J1.2.2 The telemetry replica is the component most frequently omitted and the component of
greatest value. Without it the question of what a technique produces in the organisation's
own telemetry cannot be answered, and every purple team exercise and detection
recommendation depends upon that answer.

---

## J1.3 Categories of tooling

| Category | Selection criteria |
|---|---|
| Command and control | Actively maintained; encrypted transport; support for redirectors; comprehensive automatic recording; controllable traffic profile |
| Reconnaissance | Passive by default; rate-limitable |
| Enumeration | Rate-limitable; predictable behaviour against fragile targets |
| Identity and directory | Read-only by default; understands the directory model in use |
| Credential recovery | Understood artefacts; deterministic behaviour |
| Lateral movement | Multiple protocol options |
| Cloud and hosted services | Provider-specific; read-only by default |
| Application | Standard proxy tooling |
| Social engineering | Per-recipient tracking; rate limiting; reliable exclusion of listed individuals |
| Payload construction | Understood output; testable against the production endpoint protection configuration |
| Physical | Only where authorised, and never without separate authorisation |
| Reporting | Encrypted; access-controlled; audited |

---

## J1.4 Selection of a command and control framework

J1.4.1 This is the most consequential tooling decision. Candidates are assessed against the
following.

| | Criterion | Basis |
|---|---|---|
| 1 | Comprehensive automatic recording | Where an operation cannot be reconstructed from the framework's own records, the framework is unsuitable for authorised work |
| 2 | Encrypted transport | Required by paragraph 8.13 of the methodology |
| 3 | Support for redirectors | Required by the tiered structure at Annex D |
| 4 | Controllable traffic profile | To correspond with the emulated adversary |
| 5 | Multiple operators, with actions attributable | Required for the operator record |
| 6 | Active maintenance | Abandoned frameworks become both detectable and unsupported |
| 7 | Lawful provenance and licensing | |
| 8 | Familiarity within the team | A framework that is only partly understood is a liability under pressure |

J1.4.2 Criteria 1 and 8 outrank capability. A well-understood and comprehensively recorded
framework is preferable to a more capable one that is partly understood.

---

## J1.5 Approval of a tool

J1.5.1 The following sequence applies before a tool enters the baseline.

a. The operator proposes the tool, its purpose and its source.

b. Provenance is verified: an authoritative source, integrity checked, licensing confirmed.

c. The tool is examined for undocumented behaviour, including whether it contacts any third
party.

d. The tool is exercised in the laboratory, and its artefacts, network signature and failure
modes are recorded.

e. The tool is exercised against the production endpoint protection configuration to
establish the expected detection.

f. The Red Team Lead approves the tool and records it in the inventory with its version.

J1.5.2 Sub-paragraph c is not discretionary. Offensive tooling obtained from unverified
sources has been found to transmit operator data to third parties. Execution of such a tool
within an assessed environment constitutes a compromise caused by the red team.

---

## J1.6 Inventory

J1.6.1 The inventory records, for each tool: name, version, category, source, verification
of integrity, laboratory testing, documentation of artefacts, the approving appointment, the
date, and the owner.

---

## J1.7 Record of artefacts

J1.7.1 A record is maintained for each tool, populated from laboratory testing. It permits an
operator to assess risk and a detection engineer to construct a rule.

| Field | Content |
|---|---|
| Tool and version | |
| Function | |
| Files written | Paths, names, and whether removed on exit |
| Configuration changes | |
| Processes created | Names, parents, command lines |
| Network signature | Protocols, ports, patterns, certificate characteristics |
| Records generated | Which logs, which identifiers |
| Detection by the production configuration | Prevented, alerted, telemetry only, or not observed |
| Failure modes | What fails, and what it affects |
| Cleanup required | What must be removed |

---

## J1.8 Custom capability

| | Requirement |
|---|---|
| 1 | Custom development is not undertaken where an established tool performs the function adequately |
| 2 | It is justified only where the threat profile requires a capability that nothing available provides |
| 3 | Custom tooling is version-controlled, reviewed by a second person, and documented to the standard at paragraph J1.7 |
| 4 | Custom tooling records to the same standard as established frameworks |
| 5 | Custom tooling is not distributed outside the team |
| 6 | Custom command and control or implant development is not undertaken before the process domain has reached maturity level 2. See Annex F, paragraph F2.5.7. |

J1.8.1 Requirement 6 exists because implant development is the most engaging work available
to a red team and, at low maturity, the least productive.

---

## J1.9 Operator systems

a. Dedicated and controlled. Never personal devices.

b. Full disk encryption.

c. Automatic session capture enabled and verified before every engagement.

d. Synchronised to Coordinated Universal Time.

e. No standing access to production systems.

f. Engagement data held in the controlled repository and not on local storage.

g. Rebuilt between engagements where classification requires it.

h. Inventoried, with a named owner.

---

## J1.10 Annual review

J1.10.1 The Head of Red Team reviews the following annually.

1. Whether every tool in the baseline remains maintained.
2. Whether any has been superseded.
3. Whether the artefact records remain accurate against the current production endpoint configuration.
4. Whether any tool now triggers detections that change how it should be used.
5. Whether licensing remains current and lawful.
6. Whether the laboratory still represents production.
7. Whether the threat landscape has created a capability gap.

J1.10.2 Item 3 is material. An artefact record produced against a superseded endpoint
configuration describes a system that no longer exists.

---

# PART J2 — SKILLS AND TRAINING

## J2.1 Priority of skills

J2.1.1 The following are ranked by the frequency with which their absence constrains a red
team. The ordering differs from that implied by most training paths.

| | Skill | Basis for the position |
|---|---|---|
| 1 | Written expression | The report is the product. A team that finds everything and writes poorly delivers nothing. This is consistently the largest gap in technically strong teams. |
| 2 | Identity and directory services | The route of most modern attack paths |
| 3 | Operating system internals | Enables assessment of risk and construction of detection recommendations |
| 4 | Networking | Underpins movement and infrastructure |
| 5 | Detection and telemetry | A detection cannot be recommended that the recommender could not construct |
| 6 | Cloud and hosted services | Increasingly where the attack path runs, and frequently outside the visibility of the defensive element |
| 7 | Scripting | Adaptation of tooling; automation of evidence collection |
| 8 | Threat intelligence analysis | Conversion of reporting into an emulation plan |
| 9 | Applications | Where initial access or the objective frequently sits |
| 10 | Social engineering | High value, high legal sensitivity |
| 11 | Physical | Only where in scope. Highest personal risk. |

J2.1.2 Written expression is placed first because its absence most reliably destroys the
value of everything else, and because it is the skill for which time is least often
allocated.

---

## J2.2 Skills matrix

J2.2.1 Maintained by the Head of Red Team and reviewed twice yearly. Levels: 0 none;
1 aware; 2 able with support; 3 independent; 4 able to instruct.

| Skill | Minimum required |
|---|---|
| Written expression | 3 for the Red Team Lead; 2 for all |
| Identity and directory | 3 for one; 2 for all |
| Windows internals | 3 for one; 2 for all |
| Linux internals | 2 for one |
| Networking | 2 for all |
| Detection and telemetry | 3 for one |
| Cloud and hosted services | 2 for one |
| Scripting | 2 for all |
| Threat intelligence | 2 for one |
| Command and control operation | 3 for all |
| Infrastructure construction | 3 for one |
| Applications | 2 for one |
| Social engineering | 2 for one |
| Evidence and recording discipline | **3 for all** |
| Rules of Engagement and legal awareness | **3 for all** |

J2.2.2 The final two rows require level 3 of every member. Neither is technical. Both are
what keep the capability lawful and safe, and neither may be delegated to whichever member
is competent at it.

J2.2.3 No capability shall rest with a single individual. See Annex A, paragraph A.5.4.

---

## J2.3 Development

### J2.3.1 First ninety days

| Period | Activity | Outcome |
|---|---|---|
| Week 1 | Read the methodology and annexes. Sign the acknowledgement of conduct. | The rules are known |
| Weeks 1 to 2 | Construct and reconstruct the laboratory | An environment is owned |
| Weeks 2 to 4 | Attend a purple team exercise as recorder | The full cycle is observed |
| Weeks 3 to 6 | Exercise five techniques in the laboratory and document their artefacts to the standard at paragraph J1.7 | First contribution |
| Weeks 5 to 8 | Operate in a purple team exercise under supervision | Supervised execution |
| Weeks 8 to 10 | Write a section of a report and have it reviewed | The most instructive activity of the period |
| Weeks 10 to 12 | Operate in an engagement under supervision | Supervised engagement |

J2.3.1.1 No operator works unsupervised in an assessed environment within ninety days of
joining. Prior experience elsewhere does not vary this. The constraint is knowledge of this
methodology and of this estate, not technical skill.

### J2.3.2 Continuing

| Frequency | Activity |
|---|---|
| Weekly | Four hours of protected laboratory and research time per operator |
| Monthly | A purple team exercise |
| Monthly | One technique studied in depth and documented to the artefact standard |
| Quarterly | One external competition or exercise |
| Twice yearly | Review of the skills matrix and of individual development plans |
| Annually | One formal course per operator |
| Annually | One external exercise |

J2.3.2.1 Twenty per cent of establishment time is reserved for development, per Annex A,
paragraph A.5.4.

---

## J2.4 Sources of training

### J2.4.1 Freely available

| Resource | Value |
|---|---|
| MITRE ATT&CK | The common language. The foundation. |
| Centre for Threat-Informed Defense emulation library and micro-emulation plans | Ready-made plans, and the model for the organisation's own |
| Purple Team Exercise Framework | The operating model at Annex H, part H4 |
| Atomic Red Team | Per-technique tests, suited to constructing a micro-plan library |
| Vendor threat reporting | The raw material for threat profiles |
| Published incident accounts and advisories | Documented adversary behaviour |
| The laboratory | The environment of greatest value available |

### J2.4.2 Formal training and certification

J2.4.2.1 Certification is a target within the skills matrix and a signal of credibility for
external engagements. It is not a precondition for contribution.

J2.4.2.2 Where resources are constrained, expenditure is prioritised in the following order.

a. The laboratory: infrastructure and licences.

b. Instruction in identity and directory services for the most capable operator.

c. Participation in an external exercise.

d. Certification.

---

## J2.5 Retention of knowledge

J2.5.1 Capability held only by individuals departs with them. The following are maintained.

| Artefact | Owner | Content |
|---|---|---|
| Records of tool artefacts | The operator who tested the tool | Per paragraph J1.7 |
| Technique library | The team | Per technique: procedure, artefacts, telemetry produced, detection guidance |
| Micro-emulation plans | The team | Re-runnable chains of three to five techniques |
| Scenario library | The Head of Red Team | Reusable scenarios mapped to threat profiles |
| Threat profile library | The Threat Intelligence Analyst | Reusable profiles, refreshed annually |
| Lessons | The Head of Red Team | Per engagement, on pro forma T11 |
| Environment knowledge | The team | What is known of the estate, refreshed at each engagement |

J2.5.2 A library of ten re-runnable micro-emulation plans is of greater value to a team of
this establishment than a custom implant, and is the asset that renders the departure of an
operator survivable.

---

## J2.6 Rotation and fatigue

| Risk | Mitigation |
|---|---|
| Narrowing of skill | Operators rotate across focus areas between engagements |
| Fatigue during extended engagements | Breaks enforced; no high-risk action when tired, per Annex E paragraph E.9 |
| Isolation from the defensive element | Purple team exercises; rotation of operators through the defensive element |
| Loss of purpose | Defensive improvements attributable to the capability are recorded and reported, per Annex F paragraph F2.4 |
| Single points of knowledge | Every capability documented; no undocumented dependency upon one individual |

---
