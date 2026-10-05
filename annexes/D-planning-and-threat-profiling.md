# ANNEX D — PLANNING AND THREAT PROFILING

Supporting Chapter 7, phases 2 and 3, of the Red Team Methodology. Issued under the
authority of the Head of Red Team.

---

## D.1 Principle

D.1.1 The actions of a red team are derived from a threat. They are not selected from a
toolset.

D.1.2 Planning that begins from available capability produces engagements reflecting the
habits of the team. The resulting findings cause the defensive element to build detections
against the red team rather than against an adversary. Planning that begins from the threat
produces findings that reflect actual exposure.

D.1.3 The analysis required costs a small number of days per engagement and is the practice
that distinguishes red teaming from technical testing.

---

## D.2 The threat profile

D.2.1 The threat profile is produced during phase 2 on pro forma T03 and forms Appendix 8
to the Rules of Engagement.

### D.2.2 Selection of the adversary

D.2.2.1 The following questions are answered in order and the answers recorded.

| | Question | Sources |
|---|---|---|
| 1 | What does the assessed organisation hold that an adversary would seek? | Mission, data, access, position in a supply chain, symbolic value |
| 2 | Which adversaries have acted against comparable organisations in the preceding 24 months? | National computer emergency response team reporting, sector information sharing, vendor reporting, published incident accounts |
| 3 | Which adversaries have acted against this organisation? | Incident history, escalations, phishing telemetry |
| 4 | What is the geopolitical and sector exposure? | Country, alliance membership, criticality, current situation |
| 5 | Which of these adversaries has publicly documented techniques capable of emulation? | ATT&CK Groups, Centre for Threat-Informed Defense emulation library, vendor reporting |
| 6 | Which is most instructive to defend against? | The adversary whose techniques overlap the widest set of plausible threats |

D.2.2.2 One primary adversary is selected. A secondary may be selected where a contrasting
technique set is required. More than two produces an incoherent scenario.

D.2.2.3 Where no documented group corresponds to the target, a composite profile is built
from a threat category, using techniques common to several documented groups. A composite
profile is legitimate and is frequently more useful than a named group with no demonstrated
interest in the sector concerned. The profile shall state that it is composite.

### D.2.3 Contents of the profile

| Section | Content |
|---|---|
| Identity | Name, aliases, ATT&CK group identifier, or the designation "composite" |
| Currency | Intelligence cut-off date; profile publication date; period of activity represented |
| Basis | The reporting from which the profile is built, with references, source reliability, analytic confidence and material disagreement |
| ATT&CK reference | Enterprise ATT&CK version and the date the current matrix was verified |
| Motivation | Espionage, financial gain, disruption, activism, pre-positioning |
| Objectives against the target | What this adversary would seek from this organisation |
| Capability level | 1 to 4 per Annex B paragraph B.7, with the basis stated |
| Initial access | Documented entry vectors, ranked by observed frequency |
| Tooling | Known tools, malware families, native binaries, custom capability |
| Infrastructure pattern | Hosting, domain naming, certificate practice, protocols, callback timing |
| Technique set | The ordered technique list to be emulated |
| Indicators | Indicators from reporting, used to seed detections and to distinguish emulation from the genuine actor |
| Techniques not emulated | Techniques excluded on grounds of safety, legality or capability, with the basis |

D.2.4 The final row is mandatory. Emulation is always partial, and stating the omission
prevents the report being read as assurance against the adversary as a whole.

---

## D.3 MITRE ATT&CK reference

D.3.1 The tactic list forms the structure of every threat profile and every coverage
report. The following is reproduced from the MITRE ATT&CK enterprise matrix, in the order
presented there, with the stage of execution each ordinarily serves.

| | Identifier | Tactic | Adversary intent | Stage |
|---|---|---|---|---|
| 1 | TA0043 | Reconnaissance | Gather information to plan operations | Get In |
| 2 | TA0042 | Resource Development | Establish resources to support operations | Get In |
| 3 | TA0001 | Initial Access | Gain entry to the network | Get In |
| 4 | TA0002 | Execution | Run malicious code | Get In |
| 5 | TA0003 | Persistence | Maintain the foothold | Stay In |
| 6 | TA0004 | Privilege Escalation | Obtain higher-level permissions | Stay In |
| 7 | TA0005 | Stealth | Conceal activity and appear as normal behaviour | Stay In |
| 8 | TA0112 | Defense Impairment | Break security mechanisms and tooling so that defenders cannot see or trust what is occurring | Stay In |
| 9 | TA0006 | Credential Access | Obtain account names and passwords | Stay In |
| 10 | TA0007 | Discovery | Establish the composition of the environment | Act |
| 11 | TA0008 | Lateral Movement | Move through the environment | Act |
| 12 | TA0009 | Collection | Gather data of interest | Act |
| 13 | TA0011 | Command and Control | Communicate with compromised systems | Stay In |
| 14 | TA0010 | Exfiltration | Remove data | Act |
| 15 | TA0040 | Impact | Manipulate, interrupt or destroy systems and data | Act |

D.3.2 At issue of this annex, ATT&CK v19 is current from 28 April 2026. It split the former
Defense Evasion tactic into Stealth and Defense Impairment. ATT&CK is subject to revision;
the table shall be verified against the current matrix at the commencement of every threat
profile, and both version and verification date recorded. A coverage report constructed on
a different matrix is not directly comparable until mappings and changes are reconciled.

D.3.3 Source: <https://attack.mitre.org/tactics/enterprise/>.

---

## D.4 The technique table

D.4.1 The action table forms the structure of the plan, execution record and coverage
report. It is constructed during phase 2 and uses stable identifiers that are retained
through closure.

| Action ID | Tactic and technique | Procedure | Threat source IDs | Approval level | Plan status |
|---|---|---|---|---|---|
| A-01 | Initial Access — T1566.001 Spearphishing Attachment | The specific method to be used | | | Planned |
| A-02 | Execution — T1204.002 User Execution | | | | Planned |
| A-03 | Persistence — T1053.005 Scheduled Task | | | | Planned |

D.4.2 The procedure column is the operative one. Ten teams emulating a single technique
will implement it in ten ways, and defensive elements detect procedures rather than
technique identifiers. Recording the exact procedure is what renders the engagement
reproducible and the detection work meaningful.

D.4.3 Execution and defensive outcomes are not predicted into a single coverage field.
Each action is recorded as not attempted, substituted, blocked or executed; applicable
actions then record usable telemetry, alert, investigation, containment and recovery
separately. See Annex F.

---

## D.5 Objectives

### D.5.1 Characteristics

D.5.1.1 A valid objective is specific, verifiable, and connected to mission impact.

| Deficient objective | Deficiency | Adequate objective |
|---|---|---|
| Compromise the domain | Technical rather than consequential; administrative control is a step, not an effect | Demonstrate the capability to authorise a transaction above a stated value without second approval |
| Identify vulnerabilities | This is a penetration test | Determine whether an adversary holding a standard user account can read a stated data set within ten working days |
| Assess the defensive element | Not verifiable | Determine whether identity-based lateral movement is detected and escalated within the agreed period |
| Obtain access | No end state | Obtain and demonstrate access to the administrative interface of a stated system from an external starting posture |

### D.5.2 Specification

D.5.2.1 Each objective shall record:

a. the end state, in one sentence;

b. the mission rationale;

c. the assessment objective served, per paragraph 3.3 of the methodology;

d. the method of verification;

e. the standard of evidence, and its limit;

f. the proof that is prohibited;

g. the period after which the attempt ceases.

D.5.2.2 Sub-paragraph f is what prevents an engagement becoming a data protection incident.
It is settled before execution.

### D.5.3 Markers

D.5.3.1 Where the objective is a location rather than a capability, a marker is placed in
the target location by the Trusted Agent before execution.

D.5.3.2 Markers are preferred because retrieval demonstrates access without contact with
live data, because the result is unambiguous, and because retrieval is itself an event
against which the defensive element can be assessed.

D.5.3.3 A marker shall carry a unique identifier, shall contain no sensitive content, shall
be recorded by the Trusted Agent with its location and the time of placement, and shall be
removed at cleanup.

---

## D.6 Scenario design

### D.6.1 Components

| Component | Content |
|---|---|
| Premise | The adversary, its purpose, and the point in its campaign at which the engagement commences |
| Starting posture | External, assumed breach, insider, or supply chain |
| Objectives | As specified at paragraph D.5 |
| Phasing | The techniques allocated to Get In, Stay In and Act |
| Decision points | Where the plan branches according to what is found |
| Contingencies | The action where the primary route fails |
| Constraints | Period, capability level, prohibited techniques |
| Safety measures | Per technique |

### D.6.2 Starting posture

D.6.2.1 The starting posture is the most consequential planning decision.

| Posture | Assesses | Selected where | Cost |
|---|---|---|---|
| External, no access | The full chain including perimeter and initial access | Perimeter and phishing resilience are genuinely in question | High; may consume the whole period without obtaining access |
| Assumed breach, user workstation | Everything following initial access | Detection and response are the subject of assessment | Low |
| Assumed breach, server or service account | Post-exploitation within the server estate | Segmentation and privileged access are the subject | Low |
| Insider | Controls against a malicious or compromised insider | Insider risk is a stated concern | Low |
| Supply chain | Trust relationships with suppliers | Third-party access is significant | Moderate; requires supplier consent |

D.6.2.2 Assumed breach from a standard user workstation is the recommended default. A
capable adversary will eventually obtain initial access; expending the whole period
establishing that produces limited information. The defensive questions of consequence
arise after access is obtained.

D.6.2.3 Where perimeter resilience requires assessment, it is conducted as a separate,
time-bounded activity in parallel.

### D.6.3 Attack path hypotheses

D.6.3.1 Before execution, three to five routes are recorded from the starting posture to
each objective. For each: the steps, the controls expected to be encountered, and the
prediction of whether each will prevent, detect or miss the activity.

D.6.3.2 The predictions constitute a finding in themselves. Where the organisation
predicted that a control would detect an action and it did not, the difference between
belief and effect is among the more useful outputs of an engagement. Predictions are
recorded before execution and compared in the report.

### D.6.4 End-to-end traceability

D.6.4.1 Every engagement maintains a golden thread from the business service at risk to the
verified improvement. Stable identifiers are carried between T01 to T12 and are not replaced
by titles alone.

| Link | From | To | Required record |
|---|---|---|---|
| 1 | Critical or important service | Threat evidence | Why this threat matters to this service |
| 2 | Threat evidence | Scenario | Source references, confidence and intelligence cut-off |
| 3 | Scenario | Objective or flag | Mission effect and success criterion |
| 4 | Objective or flag | Procedure and action | Scenario ID, objective ID, procedure ID and operator-log references |
| 5 | Action | Defensive observation | Event, telemetry, alert, investigation and response references |
| 6 | Observation | Finding and remediation | Evidence references, owner, due date and expected control effect |
| 7 | Remediation | Retest and closure | Original procedure, changed control, retest result and residual risk |

D.6.4.2 For a narrow engagement, the traceability table and attack-path diagram are
sufficient. Where the scenario has dependencies, parallel paths or fallbacks that are hard
to represent clearly, the team should also produce an Attack Flow. The current Centre for
Threat-Informed Defense specification may be used for a machine-readable flow, but tooling
or a formal exchange format is not a gate for a small team.

---

## D.7 Operational risk assessment

D.7.1 An operational risk assessment is completed during phase 3 for every planned
technique category, recording:

a. the technique;

b. the credible failure modes, including loss of service, account lockout, data corruption,
alert saturation and effect on a third party;

c. likelihood and impact;

d. the mitigation applied before the action;

e. the method of reversal;

f. the means by which harm would be detected;

g. the level at which approval is required.

D.7.2 A technique assessed as high impact with no method of reversal shall not be executed
without written approval from the Approving Authority naming the technique and the risk
accepted.

D.7.3 The following require the approval of the Trusted Agent immediately before execution,
irrespective of the Rules of Engagement.

a. Action against a domain controller, identity provider or certificate authority.

b. Action against a hypervisor, backup system or storage platform.

c. Action against operational technology, safety systems or medical devices.

d. Credential attacks capable of causing account lockout at scale.

e. Modification of group policy, access control or authentication configuration.

f. First use of any technique in the environment.

g. Any action during a change freeze, period of financial close, or major operational
event.

---

## D.8 Infrastructure

### D.8.1 Tiered structure

D.8.1.1 Infrastructure is constructed in tiers so that the loss of one component does not
end the engagement, and so that the components most likely to be discovered are furthest
from those that must not be.

```{.mermaid filename="annex-d-infrastructure"}
flowchart TB
    NET(("Internet"))
    R1["Redirector"]
    R2["Redirector"]
    R3["Redirector"]
    T1["Tier 1, delivery<br/>Phishing and staging<br/>Expected to be discovered"]
    T2["Tier 2, short haul<br/>Interactive operation<br/>May be discovered"]
    T3["Tier 3, long haul<br/>Survivable access<br/>Low rate; used only if Tier 2 is lost"]
    TS["Team server<br/>Not reachable from the internet<br/>Accepts redirector traffic only, over a<br/>private or authenticated overlay network"]
    NET --> R1 --> T1 --> TS
    NET --> R2 --> T2 --> TS
    NET --> R3 --> T3 --> TS
```

**Figure D-1. Infrastructure tiers**

### D.8.2 Standards

D.8.2.1 The following shall be observed.

a. All command and control traffic is encrypted.

b. The team server is not reachable from the internet and accepts traffic only from
redirectors.

c. All infrastructure activity is logged automatically, independent of operator action.

d. Every asset is recorded in the inventory at creation, with the appointment responsible
for its decommissioning.

e. Not fewer than two independent channels are available at each stage.

f. The current provider and service terms permit the activity from and against the recorded
accounts and resources, and any required approval for command and control, simulated events,
phishing, malware testing or high-volume activity is in force. The permission register at
Annex G, paragraph G.2.5, is the record.

D.8.2.2 The following shall not occur.

a. Reuse of infrastructure or naming across engagements or across tiers.

b. Use of infrastructure that cannot be fully decommissioned.

c. Use of infrastructure belonging to a third party without its consent.

### D.8.3 Inventory

D.8.3.1 The inventory records, for each asset: type, identifier, provider, tier, purpose,
date of creation, the person who created it, method of decommissioning, date of
decommissioning, and the person who verified it.

D.8.3.2 Undocumented infrastructure is the ordinary cause of live infrastructure remaining
directed at an assessed organisation after an engagement has closed.

---

## D.9 Collection of records

D.9.1 The following are settled before execution.

| Matter | Standard |
|---|---|
| Location of evidence | A single encrypted repository, access controlled to the engagement team |
| Time standard | Coordinated Universal Time, on every system and in every record |
| Clock assurance | Time source, verification time, observed offset and locally approved tolerance recorded for every source system |
| Automatic capture | Infrastructure records, session records, tool output |
| Manual capture | Operator records, screenshots, rationale for decisions |
| Screenshot standard | Full window, including a visible time reference and host identity, redacted at the point of capture |
| Integrity | Cryptographic hash and algorithm recorded at collection or first consolidation; original source and repository path retained |
| Provenance | Collector, collection time, source system and any transfer or transformation recorded |
| Retention | As set in the Rules of Engagement, followed by destruction and a certificate |
| Classification | The highest classification of any material observed |

D.9.2 Automatic session capture shall be enabled and verified on every operator system
before execution. Reliance on operator recollection produces gaps at the points of greatest
consequence.

---

## D.10 Communications

D.10.1 The following channels are established.

| Channel | Purpose | Parties | Frequency |
|---|---|---|---|
| Internal | Operational coordination | Red team | Continuous |
| Deconfliction line | Cessation, deconfliction, incident | Red Team Lead and Trusted Agent | On demand, throughout the execution period |
| Situation report | Status | Red Team Lead to Trusted Agent | Daily, at close of day |
| Steering | Progress, changes, decisions | Red Team Lead, Trusted Agent, Approving Authority | Weekly |
| Emergency | Suspected loss of service or genuine intrusion | Any party to the Trusted Agent | Immediate, by telephone |

D.10.2 The deconfliction line shall be a telephone number answered by a person. A shared
mailbox, chat channel or ticket queue is not sufficient. Where an operator believes a
production system has been affected, the response time of the channel determines the
consequence.

D.10.3 In a covert engagement, engagement communications shall use channels outside the
monitored infrastructure of the assessed organisation. Otherwise the defensive element may
discover the engagement in the course of its ordinary duties, which both invalidates the
assessment and teaches the wrong lesson.
