# ANNEX K — BASIS, APPLICABILITY AND SOURCES

Issued under the authority of the Head of Red Team.

This annex records the derivation of the methodology, the limits on importing requirements
from external frameworks, and the authoritative sources used. It exists so that each
control can be defended by its purpose and provenance rather than by preference or custom.

The source baseline was reviewed on 3 August 2026. A source being listed does not by itself
make it legally binding on an engagement.

---

## K.1 Applicability and hierarchy

K.1.1 Applicability is determined for the organisation, jurisdiction, sector and engagement
under Annex G. Financial-sector frameworks are used as mature reference models outside
their legal scope; they shall not be represented as mandatory where they are not.

| Source family | Status in this methodology | Use |
|---|---|---|
| Applicable law, regulation, contract, mandate and provider terms | Binding when applicable | Legal authority, privacy, sector obligations, system and provider permission |
| TIBER-EU 2025 | Voluntary, entity- and sector-agnostic framework unless adopted by an authority; also operational guidance for DORA TLPT | Control Team, threat-led lifecycle, production-risk governance, purple teaming and remediation |
| DORA and its delegated TLPT rules | Binding for financial entities and tests within their legal scope; reference model otherwise | Regulatory applicability, internal-tester safeguards, formal deliverables and mutual recognition |
| CBEST 2024 | Supervisory framework for participating United Kingdom financial institutions; reference model otherwise | Golden thread, operational risk assessment, third-party scope, detection and response, read-across |
| G7 Fundamental Elements for TLPT | Non-binding financial-sector policy baseline | Proportionality, stakeholder responsibilities, provider assurance, closure and anonymised thematic learning |
| NIST Special Publications | Authoritative guidance, not law unless adopted by an authority or contract | Test lifecycle, assessment planning, measurement quality, incident response and evidence handling |
| CREST CTI, TISA and TLPT standards | Accreditation and competence benchmark | Provider and personnel capability, assurance and management expectations |
| MITRE ATT&CK and Attack Flow | Open knowledge base and data model | Versioned behaviour vocabulary, traceability and attack-path representation |
| NCSC, CISA and OWASP guidance | Authoritative implementation guidance | Exercise design, outcome measures, red team safeguards and technical test coverage |
| ISO/IEC 27037 | International evidence-handling guidance | Identification, collection, acquisition and preservation where evidential handling is required |
| Practitioner and exercise publications | Non-normative supporting material | Usability, tradecraft and exercise design, subject to verification against authoritative sources |

K.1.2 Where sources conflict, the order of precedence is:

1. applicable law and lawful direction;
2. regulator or competent-authority requirements;
3. contract, mandate, classification policy and provider terms;
4. the signed Rules of Engagement and Letter of Authorisation;
5. this methodology and its annexes;
6. external guidance and practitioner material.

K.1.3 A lower item cannot enlarge authority granted by a higher item. The most restrictive
applicable condition governs unless the body entitled to change it does so lawfully and in
writing.

K.1.4 Edition, jurisdiction and review date matter. References to ATT&CK, cloud-provider
policies, regulatory technical standards and operational guidance are versioned in the
engagement plan. A web page without a recorded access date is not adequate evidence of a
provider permission.

---

## K.2 Controls derived from authoritative frameworks

### K.2.1 TIBER-EU 2025

K.2.1.1 TIBER-EU is the European framework for controlled, intelligence-led red team
testing of critical or important functions and the live production systems, people,
processes and technologies supporting them. Although developed in a financial-sector
context, the 2025 framework expressly permits use by entities of any type or size across
financial and other sectors. It uses **Control Team** and **Control Team Lead**. The former
term **White Team** is retained only when citing an older edition or an external framework
that still uses it.

```{.mermaid filename="annex-k-tiber-lifecycle"}
flowchart LR
    A["Preparation<br/>initiate, scope, procure"] -->
    B["Testing<br/>threat intelligence, plan,<br/>controlled active testing"] -->
    C["Closure<br/>blue report, purple teaming,<br/>remediation, summary and attestation"]
```

**Figure K-1. TIBER-EU 2025 lifecycle**

K.2.1.2 The framework separates the entity's Control Team and Control Team Lead, the Blue
Team, threat intelligence and red team providers, and the authority's TIBER Cyber Team and
Test Manager. The entity retains end-to-end ownership and risk accountability.

K.2.1.3 The following controls are adapted here:

a. scope begins with critical or important functions and follows their supporting systems,
people, processes and third parties;

b. scenarios follow targeted threat intelligence and maintain a traceable path from threat
evidence to objective, scenario, action and measure;

c. testing of live production is governed as operational risk, with explicit safety,
deconfliction, cessation, restoration and escalation controls;

d. the defensive element reports what it observed before full disclosure;

e. purple teaming is planned as a closure activity, not left to chance;

f. remediation, retest and senior ownership complete the lifecycle; and

g. formal deliverables and attestation are produced only where the applicable scheme
requires them.

K.2.1.4 TIBER's active-testing duration and provider model are regime-specific and are not
universal minimums for this internal capability. Its internal-tester safeguards are,
however, a strong benchmark for high-assurance work: a qualified lead, at least two
additional testers, recent organisational knowledge, continuing training, backups,
conflict controls and external challenge. Annex A scales those controls for a small team.

### K.2.2 DORA threat-led penetration testing

K.2.2.1 Regulation (EU) 2022/2554 and Delegated Regulation (EU) 2025/1190 govern
threat-led penetration testing for financial entities within their scope. Applicability,
frequency, competent-authority direction and formal deliverables are legal determinations,
not assumptions made by the red team.

K.2.2.2 For internal testers, the delegated regulation establishes safeguards concerning
policy, capability and resources, organisational placement and conflicts, and requires a
test manager supported by at least two additional testers. It also addresses knowledge of
the entity and training. DORA also requires external testers every three tests when internal
testers are used, and requires some institutions to use only external testers. These exact
requirements are applied where DORA applies and are otherwise treated as a maturity
benchmark, not copied as law.

K.2.2.3 This methodology does not claim DORA certification, mutual recognition or
regulatory attestation. A formal TIBER or DORA engagement uses the competent authority's
current forms and process in addition to this methodology.

### K.2.3 G7 Fundamental Elements for TLPT

K.2.3.1 The G7 Cyber Expert Group provides a non-binding baseline for authorities,
financial entities and providers. It treats TLPT as one component of a wider assessment
toolkit and requires proportionality to entity importance, size, complexity, sophistication
and risk.

K.2.3.2 Its six elements are scoping and risk management; resourcing; threat intelligence;
penetration testing; closure and remediation; and anonymised thematic data. This
methodology adapts the first five directly. Thematic reporting is used only where authority,
classification, confidentiality and data-protection controls prevent identification of an
engagement, entity or individual.

### K.2.4 CBEST 2024

K.2.4.1 CBEST organises an assessment into initiation, threat intelligence, penetration
testing, and closure. Its principal contribution is the **golden thread**: critical
business services lead to threat scenarios, target systems, red team actions, defensive
observations, findings and remediation.

K.2.4.2 The following are adopted:

a. the test is itself managed as an operational risk;

b. threat intelligence is independently challenged;

c. material third parties and concentration dependencies are considered in scope design;

d. the defensive element conducts a detection-and-response assessment;

e. remediation includes read-across to comparable services and systems; and

f. closure demonstrates not merely that a task was completed, but that the risk reduction
was verified.

### K.2.5 NIST guidance

K.2.5.1 NIST SP 800-115 establishes testing as a managed process of planning, discovery,
attack and reporting. Planning contains no target interaction. Discovery and attack may
iterate, but only inside the approved boundary.

```{.mermaid filename="annex-k-nist-lifecycle"}
flowchart LR
    P["Planning"] --> D["Discovery"] --> A["Attack"] --> R["Reporting"]
    A -. "new authorised information" .-> D
```

**Figure K-2. NIST SP 800-115 assessment process**

K.2.5.2 NIST SP 800-55 Volumes 1 and 2 support Annex F: every measure has a decision
purpose, definition, source, owner, collection and analysis method, validation, limitations
and review cycle. Data quality, uncertainty, sample size and comparability are reported.

K.2.5.3 NIST SP 800-61 Revision 3 and SP 800-53 Revision 5 support integration with
incident response, assessment controls and governance. Red team activity never displaces
the incident-response authority during a suspected genuine event.

K.2.5.4 NIST SP 800-86 supports the proportionate preservation controls in Annex E. A
routine assurance record is not called forensic evidence unless the required handling and
provenance have been maintained.

### K.2.6 MITRE ATT&CK and Attack Flow

K.2.6.1 ATT&CK is the common behaviour vocabulary; it is not a test plan, a severity model,
proof of threat relevance or a denominator that must be exhausted.

K.2.6.2 Every profile, plan and report records the ATT&CK release used. At the date of this
publication the current major release is ATT&CK v19, published 28 April 2026. That release
changed the Enterprise tactic model, including separating behaviours formerly grouped
under Defense Evasion into Stealth and Defense Impairment. Historical results retain their
original mapping and are not silently remapped.

K.2.6.3 MITRE adversary-emulation plans and Center for Threat-Informed Defense resources
may inform procedures, but current threat evidence and the local environment determine
selection. A micro-emulation is a short, risk-controlled chain chosen for one decision, not
a reduced claim of full actor emulation.

K.2.6.4 Attack Flow 4.0 may be used where branching, dependencies and control outcomes
cannot be represented clearly in a linear ATT&CK list. Flow identifiers connect the threat
profile, plan, operator record, evidence and report.

### K.2.7 CREST

K.2.7.1 CREST competence and accreditation material is used as a benchmark for threat
intelligence, assurance, technical delivery and red team management. It does not confer
legal authority and does not replace assessment of an individual's relevant experience.

K.2.7.2 In 2026 CREST introduced Cyber Threat Intelligence (CTI), Threat Intelligence for
Simulated Attack (TISA) and Threat-Led Penetration Testing (TLPT) accreditation
terminology. References to older STAR terminology are historical unless the commissioning
scheme expressly retains it. Procurement and personnel criteria use the current scheme
required by the customer or regulator at the date of engagement.

K.2.7.3 The controls adapted here are qualified leadership, documented methodology,
quality review independent of delivery, practical remediation, retest support, protected
information handling, complaints and escalation routes, and competence matched to the
technology and activity actually in scope.

### K.2.8 NCSC, CISA and OWASP

K.2.8.1 United Kingdom National Cyber Security Centre (NCSC) guidance supports outcome-led
exercise design and proportionate penetration testing. Its 2026 security-operations
metrics guidance is reflected in Annex F: ticket, alert, rule and log-volume counts are
means data and can create harmful incentives. The outward question is whether material
activity was detected, examined, contained and recovered from in time.

K.2.8.2 United States Cybersecurity and Infrastructure Security Agency (CISA) red team
assessments reinforce strict need-to-know controls, separation from defensive operations,
deconfliction, protection of collected data and translation of observations into
mitigations.

K.2.8.3 The Open Worldwide Application Security Project (OWASP) Web Security Testing Guide
is the technical baseline when web or application testing is authorised. It informs test
cases; it does not enlarge scope or convert a red team engagement into an exhaustive
application assessment.

### K.2.9 Privacy, evidence and service-provider conditions

K.2.9.1 GDPR and European Data Protection Board (EDPB) principles inform minimisation,
purpose limitation, storage limitation, security and accountability where personal data is
processed. Controller and processor roles, lawful basis, notices or lawful restrictions,
international transfers, incident handling and any data-protection impact assessment are
determined with the responsible privacy and legal functions.

K.2.9.2 ISO/IEC 27037 informs identification, collection, acquisition and preservation.
The stricter evidential controls are activated where the intended use requires them.

K.2.9.3 AWS, Microsoft Azure and Google Cloud publish materially different testing
policies. Permission may depend on the service, source infrastructure, technique and notice
period. Current provider terms are therefore checked and evidenced per service before
Gate G1 and again before Gate G3; no methodology text is treated as standing provider
permission.

### K.2.10 Exercise and practitioner sources

K.2.10.1 The Purple Team Exercise Framework v4 informs scheduled and operationalised
collaboration at Annex H. Publications from the NATO Cooperative Cyber Defence Centre of
Excellence (CCDCOE) inform complex cyber-exercise design where that model fits the
organisation. Neither is automatically applicable to routine internal engagements.

K.2.10.2 Practitioner works support tradecraft and usability only after the proposed
practice is checked against applicable authority, current official guidance and this
methodology's safety controls.

---

## K.3 Adoption decisions

| Practice | Source | Position in this methodology | Qualification |
|---|---|---|---|
| Scope from critical functions | TIBER, CBEST | Default | Follow dependencies to systems, people, processes and third parties |
| Intelligence-led scenario selection | TIBER, DORA, CBEST | Required for red team engagements | Threat evidence, confidence, currency and limitations are recorded |
| Independent challenge of threat profile | TIBER, CBEST | Required | May be a qualified peer for a small internal team |
| Control Team separate from delivery and defence | TIBER, CBEST | Required for covert work | A Trusted Agent may be the whole Control Team on a tightly scoped engagement |
| Live-production testing | TIBER, DORA | Conditional | Only with explicit safety case, authority, provider permission and restoration controls |
| Golden-thread traceability | CBEST | Required | Threat to objective, action, evidence, observation, finding and remediation |
| Purple teaming at closure | TIBER 2025 | Default | Mandatory when the applicable scheme requires it; omission otherwise needs rationale |
| Internal-test safeguards | DORA, TIBER | Scaled benchmark | Exact regulatory conditions apply only where legally applicable |
| Versioned ATT&CK mapping | MITRE | Required where ATT&CK is used | Coverage is not inferred from technique count alone |
| Attack Flow representation | Center for Threat-Informed Defense | Optional | Used when a branching path improves decision value |
| Measure specifications and quality limits | NIST SP 800-55, NCSC | Required | No target or trend without a defensible definition and comparison basis |
| Provider-policy and permission register | Provider policies | Required for hosted or managed services | Checked shortly before execution because terms change |
| Evidence identifiers, provenance and integrity | NIST, ISO/IEC 27037 | Proportionate requirement | Formal chain of custody is claimed only when actually maintained |
| Formal regulator report or attestation | TIBER, DORA, CBEST | Scheme-specific | This methodology's internal cleanup attestation is not a regulatory attestation |
| Minimum active-test duration | TIBER | Scheme-specific | Not imported into ordinary internal work |
| External validation of the internal capability | DORA, CREST | Mandatory at the DORA cadence where applicable; planned at managed maturity otherwise | Also used whenever conflicts cannot be controlled internally |
| Retest and verified correction | CBEST, CREST, NIST | Required | Closure requires evidence, not task status |
| Full campaign emulation | MITRE resources | Advanced option | Used only where the decision and defensive maturity justify cost and exposure |

---

## K.4 Commissioning questions

K.4.1 An engagement is not approved until the accountable parties can answer these
questions in writing.

| # | Question | Control concern |
|---|---|---|
| 1 | What decision will the result inform? | Value and objective |
| 2 | Which critical function or material risk is being assessed? | Business relevance |
| 3 | What may go wrong, and who owns each consequence? | Operational risk |
| 4 | Could activity interrupt a critical service or impair recovery? | Safety and resilience |
| 5 | Whose system, third-party and provider permission is required? | Authority |
| 6 | What personal, confidential or classified data may be encountered? | Data risk |
| 7 | What happens if a genuine intrusion or reportable event is discovered? | Incident and notification duty |
| 8 | Who may know, stop, change, verify and receive the report? | Decision rights and secrecy |
| 9 | How will a claim be traced to trustworthy evidence? | Assurance |
| 10 | What constitutes detection, containment, recovery and successful improvement? | Measurement validity |
| 11 | How will every modification, credential, channel and infrastructure asset be removed? | Restoration |
| 12 | How will correction be funded, read across and retested? | Durable risk reduction |

K.4.2 A capability able to answer these questions can be considered for approval. A team
that cannot answer them should reduce the service line, move to a laboratory or open purple
exercise, obtain external support, or defer the activity.

K.4.3 The corresponding customer questions begin on pro forma T01. The engagement-specific
answers are then carried into T02, T03 and T04.

---

## K.5 Concentration of effort

### K.5.1 Areas of highest return

K.5.1.1 Early capacity is concentrated where it can produce verified defensive change.
The order is adjusted to the organisation's risk profile.

| Priority area | Why it matters | Practical first action |
|---|---|---|
| Identity, privilege and authentication | Most material paths cross identity controls | Establish what a compromised ordinary account can reach and how privilege is governed |
| Detection, examination and containment | Prevention alone does not show whether a surviving action is handled | Replay a short threat-relevant chain and reconcile each control stage |
| Remediation and retest | An unverified recommendation is not risk reduction | Retest critical and high findings and record exceptions transparently |
| Endpoint and identity telemetry quality | Rules cannot compensate for absent or unusable source data | Prove whether required events exist, are timely and carry stable identifiers |
| Recovery and backup administration | Adversary access to recovery systems changes mission consequence | Assess one authorised path from administration to recovery infrastructure |
| Cloud and hosted control planes | Material actions may bypass network controls | Validate one identity or control-plane action against provider and defensive records |
| Email and collaboration | Initial access and rapid human reporting remain material | Measure delivery, reporting and time to first report without identifying individuals |
| Segmentation as implemented | Documented boundaries frequently differ from effective controls | Prove or disprove one material boundary and its monitoring |
| Third-party and machine access | Persistent trust paths are often weakly inventoried | Map supplier and workload identities; test only with direct permission |
| Decision and escalation practice | A technically correct alert can still fail operationally | Exercise one high-consequence escalation through containment and recovery |

### K.5.2 Effort deferred at startup

| Deferred activity | Reason | Substitute |
|---|---|---|
| Custom command-and-control development | High maintenance and assurance cost | Approved established capability, isolated and tested |
| Broad covert campaigns | Exposure exceeds early programme learning capacity | Open or assumed-breach micro-emulation |
| Unknown-vulnerability research | Rarely the first control question | Emulate evidenced behaviours and known attack paths |
| Most advanced actor by default | Can produce predictable failure without useful discrimination | Test one capability step above demonstrated defence |
| Physical entry before governance is proven | High legal and personal-safety consequence | Tabletop, open exercise or specialist external support |
| Evasion for its own sake | Obscures whether base telemetry and process work | Add evasion only when the threat profile and objective require it |
| Exhaustive enumeration | Measures breadth of testing, not mission consequence | Follow a bounded path to a business objective |

---

## K.6 Controlled source register

### K.6.1 Source-control rules

K.6.1.1 The register below identifies the authoritative public baseline. The Head of Red
Team owns operational-source review; the legal adviser owns the determination of applicable
law and regulation. Locally retained copies record source URL, title, edition, publication
date, retrieval date and cryptographic hash.

K.6.1.2 Review occurs at least every six months, before a regulated engagement, and when an
authority, provider or standards body announces a relevant change. Provider testing terms
are additionally rechecked within the period set at Annex G, paragraph G.2.5.

K.6.1.3 A changed source does not silently alter an authorised engagement. The effect is
assessed, the source register and affected controls are amended, and active Rules of
Engagement are changed through their written change procedure.

### K.6.2 Authoritative and official sources

| Source and current baseline at issue | Used for | Review trigger |
|---|---|---|
| [ECB TIBER-EU Framework 2025](https://www.ecb.europa.eu/pub/pdf/other/ecb.tiber_eu_framework_2025~b32eff9a10.en.pdf) and [TIBER-EU portal](https://www.ecb.europa.eu/paym/cyber-resilience/tiber-eu/html/index.en.html) | Threat-led lifecycle, Control Team, purple teaming, remediation | ECB framework or guidance update |
| [TIBER Control Team Guidance 2025](https://www.ecb.europa.eu/pub/pdf/annex/ecb.tiber_control_team_2025.en.pdf), [Red Team Test Plan Guidance 2025](https://www.ecb.europa.eu/pub/pdf/annex/ecb.tiber_red_team_test_plan_guidance_2025.en.pdf), [Blue Team Test Report Guidance 2025](https://www.ecb.europa.eu/pub/pdf/annex/ecb.tiber_blue_team_test_report_2025.en.pdf), and [Attestation Guidance 2025](https://www.ecb.europa.eu/pub/pdf/annex/ecb.tiber_attestation_guidance_2025.en.pdf) | Role, plan, closure and scheme deliverables | ECB supporting-guidance update |
| [Regulation (EU) 2022/2554, DORA](https://eur-lex.europa.eu/eli/reg/2022/2554/oj/eng) and [Delegated Regulation (EU) 2025/1190](https://eur-lex.europa.eu/eli/reg_del/2025/1190/oj/eng) | Financial-sector applicability and internal tester safeguards | EUR-Lex amendment, corrigendum or new technical standard |
| [Bank of England CBEST Implementation Guide 2024](https://www.bankofengland.co.uk/financial-stability/operational-resilience-of-the-financial-sector/cbest-threat-intelligence-led-assessments-implementation-guide) | Golden thread, operational risk, detection and response, read-across | Bank of England guide update |
| [G7 Fundamental Elements for Threat-Led Penetration Testing](https://www.gov.uk/government/publications/g7-fundamental-elements-for-threat-led-penetration-testing) | Proportional TLPT design, provider assurance, closure and thematic learning | G7 Cyber Expert Group update |
| [NIST SP 800-115](https://csrc.nist.gov/pubs/sp/800/115/final) | Assessment lifecycle and planning | Revision or withdrawal |
| [NIST SP 800-55 Volume 1](https://csrc.nist.gov/pubs/sp/800/55/v1/final) and [Volume 2](https://csrc.nist.gov/pubs/sp/800/55/v2/final) | Measure programmes, specifications, data quality and analysis | Revision or errata |
| [NIST SP 800-61 Revision 3](https://csrc.nist.gov/pubs/sp/800/61/r3/final), [SP 800-53 Revision 5](https://csrc.nist.gov/pubs/sp/800/53/r5/upd1/final), and [SP 800-86](https://csrc.nist.gov/pubs/sp/800/86/final) | Incident integration, assessment controls and evidence handling | Revision or withdrawal |
| [MITRE ATT&CK updates](https://attack.mitre.org/resources/updates/) and [adversary emulation plans](https://attack.mitre.org/resources/adversary-emulation-plans/) | Versioned behaviour mapping and emulation inputs | ATT&CK release |
| [Attack Flow 4.0](https://center-for-threat-informed-defense.github.io/attack-flow/) | Branching attack-path model and stable flow identifiers | Specification release |
| [NCSC SOC metrics guidance](https://www.ncsc.gov.uk/blogs/could-your-choice-of-metrics-be-harming-your-soc), [penetration-testing guidance](https://www.ncsc.gov.uk/guidance/penetration-testing), and [exercise guidance](https://www.ncsc.gov.uk/guidance/effective-steps-to-cyber-exercise-creation) | Outcome measures, proportionate testing and exercise design | NCSC update |
| [CREST 2026 CTI, TISA and TLPT scheme notice](https://www.crest-approved.org/applications-now-open-for-crest-cti-tisa-and-tlpt-accreditations/), [financial-services TLPT guidance](https://www.crest-approved.org/threat-led-penetration-testing-guidance-for-financial-services/), and [CREST Certified Red Team Manager syllabus v2.1](https://www.crest-approved.org/wp-content/uploads/2025/05/CREST-Certified-Red-Team-Manager-Technical-Syllabus-v2.1.pdf) | Provider assurance, competence and red team management | Scheme or syllabus change |
| [CISA Red Team Assessment advisory](https://www.cisa.gov/news-events/cybersecurity-advisories/aa23-059a) | Need-to-know controls, deconfliction and mitigation focus | CISA replacement guidance |
| [OWASP Web Security Testing Guide](https://owasp.org/www-project-web-security-testing-guide/) | Authorised web and application test design | Stable guide release |
| [ISO/IEC 27037:2012](https://www.iso.org/standard/44381.html) | Digital evidence identification, collection, acquisition and preservation | ISO revision or systematic-review outcome |
| [GDPR consolidated text](https://eur-lex.europa.eu/eli/reg/2016/679/oj/eng) and [European Data Protection Board basic principles](https://www.edpb.europa.eu/topics/key-gdpr-concepts/basic-principles_en) | Personal-data governance and accountability | Legislative, Court of Justice of the European Union or EDPB material change |
| [AWS penetration-testing policy](https://aws.amazon.com/security/penetration-testing/), [Microsoft Cloud penetration-testing rules](https://learn.microsoft.com/en-us/azure/security/fundamentals/pen-testing), and [Google Cloud testing guidance](https://support.google.com/cloud/answer/6262505?hl=en) | Provider-specific permission and prohibitions | Before each affected engagement |

### K.6.3 Non-normative supporting sources

| Source | Permitted use |
|---|---|
| Vest and Tubberville, *Red Team Development and Operations* | Operator-record usability, engagement structure and tradecraft prompts |
| Zenko, *Red Team: How to Succeed by Thinking Like the Enemy* | Organisational independence and institutional failure modes |
| [Purple Team Exercise Framework v4](https://github.com/scythe-io/purple-team-exercise-framework) | Collaborative exercise design |
| [Penetration Testing Execution Standard](https://www.pentest-standard.org/) | Technical phase prompts where consistent with the ROE |
| NATO Cooperative Cyber Defence Centre of Excellence, *Crossed Swords: A Cyber Red Team Oriented Technical Exercise* | Complex exercise design |

K.6.3.1 Practitioner sources may improve a procedure but cannot establish authority,
regulatory compliance or provider permission. Technical claims are checked against current
official documentation before use.

K.6.3.2 Third-party collections of books or PDFs, including public “hacking books”
repositories, are discovery aids only. They are not ingested, redistributed or cited as
controlled sources unless copyright or licence, provenance, completeness, edition and
integrity have been established. A title found in such a collection is obtained from its
publisher, author, library or another authorised source before it informs this methodology.

\newpage

### K.6.4 Derivation map

| Control subject | Principal source basis | Implemented at |
|---|---|---|
| Authority, scope and provider permission | Applicable law; TIBER; DORA; provider policies | Chapters 5 and 8; Annexes B and G; T02 and T10 |
| Role separation and small-team safeguards | TIBER; DORA; CBEST | Chapter 6; Annex A |
| Service selection, proportionality and commissioning | TIBER; G7; NCSC; CISA | Chapters 2 and 4; Annex H; T01 |
| Lifecycle and gates | TIBER; CBEST; NIST SP 800-115 | Chapter 7; Annex C |
| Threat-led planning and golden thread | TIBER; CBEST; MITRE | Annex D; T03 and T04 |
| Behaviour and attack-path representation | MITRE ATT&CK; Attack Flow; TIBER | Annexes D and E; T03, T04 and T08 |
| Execution records and evidence integrity | NIST SP 800-115; SP 800-86; ISO/IEC 27037 | Annex E; T05 and T08 |
| Deconfliction and genuine-intrusion handling | TIBER; CISA; NIST SP 800-61 | Chapters 7 and 8; Annexes E and G; T02 and T07 |
| Detection, response and measure quality | NIST SP 800-55; NCSC; TIBER | Chapter 9; Annex F; T08 |
| Incident, privacy and data safeguards | NIST SP 800-61; GDPR/EDPB | Annexes E and G |
| Tooling, laboratory, competence and training | TIBER; DORA; CREST; NIST | Chapter 10; Annexes A and J; T04 and T05 |
| Exercise and purple-team practice | TIBER; NCSC; Purple Team Exercise Framework; NATO CCDCOE | Annex H; T04, T08 and T11 |
| Specialised-environment and safety controls | Applicable law, mandate and classification policy; TIBER | Chapters 4 and 8; Annexes G and I; T02 |
| Cleanup, restoration and retest | TIBER; CBEST; CREST | Annex C; Annex F; T11 and T12 |

K.6.4.1 This is a control-family provenance map, not a clause-by-clause compliance
statement. Where a law, contract, provider term or formal testing scheme applies, the
current applicability assessment, authority requirements and scheme deliverables are
recorded separately with the engagement.

---
