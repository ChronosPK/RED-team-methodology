# ANNEX A — ROLES AND DECISION RIGHTS

Supporting Chapter 6 of the Red Team Methodology. Issued under the authority of the Head of
Red Team.

---

## A.1 Purpose

A.1.1 This annex sets out the appointments involved in an engagement, their
responsibilities, the combinations of appointment that are permitted and prohibited, the
establishment required, and the controls preserving independence within a chain of command.

A.1.2 Engagements fail more often through confusion of appointment than through want of
technical skill. Three failures recur: authorisation given by a person not competent to
give it; control of the engagement held by the element being assessed; and no appointment
reachable when activity must be suspended.

## A.2 Appointment structure

```{.mermaid filename="annex-a-roles"}
flowchart TB
    AA["APPROVING AUTHORITY<br/>Accepts the risk. Signs the Letter of Authorisation.<br/>Outside the chain of command assessed"]
    TA["TRUSTED AGENT<br/>(Control Team Lead)<br/>Controls the engagement<br/>Unilateral authority to suspend or terminate"]
    CT["Control Team"]
    LA["Legal Adviser"]
    RTL["RED TEAM LEAD"]
    OP["Operators"]
    TI["Threat Intelligence<br/>Analyst"]
    IE["Infrastructure<br/>Engineer"]
    RO["Reviewing Officer"]
    BT["DEFENSIVE ELEMENT<br/>Assessed, and in a covert engagement not informed"]
    AA -->|authorises| TA
    TA --> CT
    TA --> RTL
    TA --- LA
    RTL --> OP
    RTL --> TI
    RTL --> IE
    RTL --> RO
    OP -.->|assesses| BT
```

**Figure A-1. Appointments in an engagement**

---

## A.3 Appointments

### A.3.1 Head of Red Team

A.3.1.1 A standing appointment. Owns the capability, its personnel, its standards and the
annexes to the methodology. May act as Red Team Lead on a given engagement.

**Responsibilities**

a. Maintain the capability, its establishment, tooling and training.

b. Issue and amend the annexes and pro formas, notifying the Approving Authority.

c. Accept or decline requests at gate G0, recording the decision and its basis.

d. Submit the quarterly report to the Approving Authority.

e. Conduct the annual review of the methodology and the maturity assessment.

### A.3.2 Approving Authority

A.3.2.1 Accepts the risk of an engagement. This appointment is frequently filled at too
junior a level. It is correctly filled where the holder would have held authority, in
advance, to approve a four-hour loss of a production service.

| | |
|---|---|
| Held by | An officer holding authority to accept operational risk to the systems in scope |
| Shall not be | The head of the defensive element or any person whose performance or function the engagement measures |
| Signs | The methodology and, where operational risk authority differs from system authority, countersigns the Letter of Authorisation |

A.3.2.2 Command authority and system authority are distinct. Authority to direct an
assessment does not confer authority to consent to access. Where the two are held
separately, both are required. See Annex G, paragraph G.2.4.

**Responsibilities**

a. Confirm that the engagement serves a mission requirement.

b. Accept the residual operational risk in writing.

c. Sign or countersign the Letter of Authorisation, without substituting for the consent of
the system authority where that authority is held elsewhere.

d. Remain reachable, personally or through a named delegate, throughout the execution
period.

e. Ensure remediation is resourced.

f. Adjudicate disputes between the Red Team Lead and the Trusted Agent.

### A.3.3 Trusted Agent (Control Team Lead)

A.3.3.1 Controls the engagement within the assessed organisation. Holds knowledge of
activity, milestones and status that would bias the defensive element if disclosed.

| | |
|---|---|
| Held by | A senior representative of the assessed organisation with standing to halt activity and the technical understanding to judge risk |
| Shall not be | A member of the red team, or a member of the defensive element being assessed |
| Authority | Unilateral authority to suspend or terminate the engagement at any time, without justification and without consultation |

A.3.3.2 The first duty of the Trusted Agent is the prevention of irreversible harm. All
other duties are subordinate to it.

**Responsibilities**

a. Maintain the authorised target space, the exclusion list and the contact list, and
control changes to them.

b. Monitor operational risk during execution and suspend activity where risk exceeds
appetite.

c. Determine whether observed activity is attributable to the red team.

d. Protect the confidentiality of a covert engagement.

e. Obtain the consent of system owners and third parties where required.

### A.3.4 Control Team

A.3.4.1 Personnel supporting the Trusted Agent on larger engagements. On a small
engagement the Trusted Agent may constitute the whole Control Team. The historical term for
this function is recorded in the methodology's Lexicon and is not used as an appointment.

**Responsibilities**

a. Staff the deconfliction line during agreed hours.

b. Verify red team claims against telemetry held by the assessed organisation.

c. Record Control Team decisions with times.

d. Prepare the record of defensive observations used at the debrief.

### A.3.5 Red Team Lead

A.3.5.1 Responsible for the conduct of one engagement, its safety, and the accuracy of its
report.

**Responsibilities**

a. Convert the customer's objectives into a scenario and engagement plan that can be
executed safely.

b. Own the Rules of Engagement from draft to signature.

c. Assign operators and control the allocation of tasks.

d. Approve each tool and technique before its first use in the environment. See Annex E,
paragraph E.2.3.

e. Ensure operator records and evidence are complete and made at the time of the action.

f. Escalate risk to the Trusted Agent without delay or filtering.

g. Suspend activity on any cessation criterion at Chapter 8.

h. Own the report.

A.3.5.2 The Red Team Lead shall refuse to commence or continue an engagement where the
Rules of Engagement are unsigned, scope is ambiguous, contacts are unreachable, or a
cessation criterion is unresolved. That refusal is not subject to override. The defect may
be corrected and readiness reconsidered through the applicable gate.

### A.3.6 Operator

A.3.6.1 Conducts reconnaissance, exploitation, movement, persistence and the capture of
evidence within the environment.

**Responsibilities**

a. Operate within the Rules of Engagement. Where permission is uncertain, cease and consult.

b. Maintain the operator record at the time of the action, to the standard at Annex E.

c. Capture evidence sufficient to demonstrate impact and no more.

d. Consult a second operator before any irreversible, high-risk or first-use action.

e. Report without delay any suspected loss of service, contact with a system outside scope,
indication of a genuine adversary, or exposure of sensitive data beyond the requirement of
proof.

f. Record each modification to a system at the time it is made.

A.3.6.2 An operator is not the last safeguard against harm. Where an operator's judgement
is the only control preventing an incident, the engagement is incorrectly designed.

### A.3.7 Threat Intelligence Analyst

A.3.7.1 Establishes which adversary is emulated and on what basis. At the establishment at
paragraph A.5.1 this is a dedicated post.

**Responsibilities**

a. Identify the adversaries that realistically threaten the target, and record the basis.

b. Produce the threat profile on pro forma T03.

c. Decompose the threat into an ordered set of techniques mapped to MITRE ATT&CK.

d. Conduct target reconnaissance within the authorised bounds.

A.3.7.2 Intelligence produced by the operators who intend to use it tends toward
justification of techniques already selected. The threat profile should be written by a
person who will not execute it. Where that is not practicable, it shall be reviewed by a
second person and the reviewer recorded in the engagement plan.

### A.3.8 Infrastructure Engineer

A.3.8.1 Builds and holds the operational infrastructure.

**Responsibilities**

a. Design and deploy engagement infrastructure to the standard at Annex D, paragraph D.7.

b. Ensure command and control traffic is encrypted and infrastructure is segmented by tier.

c. Maintain automatic logging of infrastructure activity, independent of operator action.

d. Maintain the infrastructure inventory and complete decommissioning at culmination.

e. Maintain the tooling baseline and verify the integrity of tools before deployment.

### A.3.9 Reviewing Officer

A.3.9.1 A qualified person who did not execute the engagement and did not author the report,
appointed to review it before release. The reviewer may be a red team member not assigned to
the engagement, or a suitably cleared internal or external reviewer outside the delivery
cell. The same independence standard applies to threat-profile review where its author will
execute the plan.

**Responsibilities**

a. Verify that every claim in the report is supported by recorded evidence.

b. Verify that no finding identifies an individual.

c. Verify that no credential, token, key or bulk sensitive data appears in the report or its
appendices.

d. Verify that severity assessments are consistent with the model at Annex F.

e. Verify that the cleanup register is complete and signed.

A.3.9.2 The Reviewing Officer shall not be the author of the report.

### A.3.10 Legal Adviser

A.3.10.1 Consulted, not embedded. Engaged at phase 1 and on any novel legal question.

**Responsibilities**

a. Confirm that the authorisation chain is valid for the target and the jurisdiction.

b. Advise on data protection, monitoring of personnel, and social engineering constraints.

c. Advise on third-party and hosting provider terms where scope touches them.

d. Review the Letter of Authorisation before signature.

e. Advise on the handling and retention of evidence.

### A.3.11 Defensive element

A.3.11.1 Not a red team appointment. Its conduct during an engagement is stated here
because engagements produce invalid results where the defensive element behaves
abnormally.

**Responsibilities**

a. Defend normally. Do not alter posture because an engagement is suspected.

b. Follow the standard incident procedure, including escalation.

c. Preserve evidence and telemetry.

d. Participate in the debrief.

e. Own and implement the detection improvements arising from findings.

A.3.11.2 In a covert engagement the defensive element is not informed. In purple team
activity it is a full participant. See Annex H, part H4.

---

## A.4 Separation of duties

### A.4.1 Permitted combinations

A.4.2 At the establishment at paragraph A.5.1 most appointments are held separately. The
following combinations are permitted where establishment does not allow otherwise.

| Combination | Condition |
|---|---|
| Red Team Lead and Threat Intelligence Analyst | Recorded in the plan; the threat profile reviewed by a second person |
| Red Team Lead and Operator | Permitted on small engagements; the authority to suspend is exercised separately |
| Operator and Infrastructure Engineer | Permitted |
| Trusted Agent and Control Team | Permitted on small engagements; one person may constitute the Control Team where availability and an alternate are documented |
| Operator and Reviewing Officer | Only in respect of an engagement on which that operator did not serve |

### A.4.3 Prohibited combinations

A.4.4 The following combinations shall not be held.

| Combination | Reason |
|---|---|
| Red Team Lead and Trusted Agent | The appointment creating the risk would determine whether that risk is acceptable, removing the independent authority to suspend |
| Any red team member and Approving Authority | Self-authorisation, indistinguishable in law from an absence of authorisation |
| Trusted Agent and a member of the assessed defensive element, in a covert engagement | Prior knowledge invalidates the result for that element |
| Author of a report and its sole Reviewing Officer | No independent verification of the claims made |
| Approving Authority within the chain of command assessed | Risk cannot be impartially accepted on behalf of a capability the engagement judges |

A.4.5 The combinations at paragraph A.4.4 are non-waivable. Where establishment cannot
support the separation, a qualified external person shall fill the conflicting appointment,
or the activity shall be re-scoped as an open or purple exercise. It shall not proceed as a
covert red team engagement. Limited establishment does not itself constitute a compensating
control.

---

## A.5 Establishment

### A.5.1 Minimum viable establishment

A.5.1.1 A two-person delivery cell is sufficient to start with SL-4 purple activity,
laboratory validation and tightly scoped open assumed-breach work. A covert live engagement
requires a Red Team Lead and at least two additional operators. The latter three-person
composition also reflects the internal-tester benchmark in TIBER-EU and Commission Delegated
Regulation (EU) 2025/1190; it is a benchmark here, not a claim of regulatory applicability.

| Delivery post | Two-person startup | Three-person live cell |
|---|---|---|
| 1 | Head of Red Team; Red Team Lead; operator | Red Team Lead; may operate where workload permits |
| 2 | Operator; infrastructure; threat research | Operator; identity and endpoint; threat research |
| 3 | Not established | Operator; network, cloud and infrastructure |

A.5.1.2 At either size, the Approving Authority, system authority and Trusted Agent are
separate appointments outside the delivery cell. Independent threat-profile and report
review shall be supplied by a qualified person who did not prepare or execute the material
reviewed. A two-person cell shall not conduct covert live activity or an activity requiring
one delivery member to act alone.

### A.5.2 Sustainable target establishment

A.5.2.1 Six posts permit role separation, leave and training cover, independent internal
review and functional specialisation. Posts 7 to 9 are added as demand and the estate
require.

| | Post | Primary appointment or focus |
|---|---|---|
| 1 | Head of Red Team | Capability owner; Red Team Lead on selected engagements |
| 2 | Deputy | Red Team Lead; operator; internal reviewer when not assigned |
| 3 | Operator, identity and endpoint | Operator; detection liaison |
| 4 | Operator, network and infrastructure | Operator; Infrastructure Engineer |
| 5 | Threat Intelligence Analyst | Threat profile; scenario assurance; report support |
| 6 | Infrastructure and tooling engineer | Infrastructure Engineer; operator; laboratory owner |
| 7 | Operator, cloud and identity provider | Cloud control plane and federated identity |
| 8 | Detection engineering liaison | Converts observations into validated defensive improvements |
| 9 | Operator, applications or mission systems | Selected according to the target estate |

A.5.2.2 The Approving Authority, system authority, Trusted Agent, supporting Control Team
and Legal Adviser are appointments held outside the delivery establishment.

### A.5.3 Functional grouping

A.5.3.1 At six or more delivery personnel, functional specialisation may be more efficient
than generalist parallel working. Below six, the coordination overhead exceeds the benefit
and the establishment is not divided.

A.5.3.2 At the establishment described, functional focus areas are used for routine
engagements. Named sub-teams are formed only for large engagements and exercises.

| Sub-team | Focus |
|---|---|
| User-end device | Workstations, endpoints, phishing, user-facing initial access |
| Application and identity | Web, interfaces, directory, federation, cloud control plane |
| Network and infrastructure | Network devices, segmentation, lateral movement, engagement infrastructure |
| Mission systems and operational technology | Only where in scope and only under Annex I |

A.5.3.3 Each sub-team has a lead. The Red Team Lead coordinates across sub-teams and is the
sole point of contact with the Trusted Agent. Sub-team leads shall not communicate directly
with the assessed organisation.

### A.5.4 Sustainability

A.5.4.1 Two conditions govern sustainability at every establishment.

a. No critical capability shall depend permanently on a single individual. Infrastructure
build, command and control operation, report production and threat profiling shall each have
a named backup. At a small establishment that backup may be a qualified person outside the
delivery cell, under the same clearance, confidentiality and conflict controls. The position
is recorded in the skills matrix at Annex J, paragraph J2.2.

b. Twenty per cent of establishment time shall be reserved for development of capability.

A.5.4.2 The planning ceilings by establishment are at Chapter 10, paragraph 10.4. The team
shall reduce tempo before it sacrifices independent review, cleanup, remediation support,
retest, leave, training or the availability of a backup role.

---

## A.6 Responsibility by phase

A.6.1 **A** denotes the appointment accountable, of which there is one for each activity.
**R** denotes responsible; **C** consulted; **I** informed.

| Phase and activity | Appr. Auth. | Trusted Agent | RT Lead | Operators |
|---|---|---|---|---|
| 0 Accept or decline the request | A | C | R | I |
| 1 Approve objectives and scope | A | R | C | I |
| 1 Sign the Rules of Engagement | A | R | R | I |
| 1 Sign the Letter of Authorisation | A | C | C | I |
| 2 Produce the threat profile | I | C | A | C |
| 3 Produce the engagement plan | I | C | A | R |
| 3 Approve infrastructure | I | C | A | R |
| 4 Execute | I | C | A | R |
| 4 Deconflict an event | I | **A** | R | C |
| 4 Suspend or terminate | C | **A** | R | I |
| 4 Approve a change to the Rules of Engagement | **A** | R | R | I |
| 5 Cleanup and verification | I | C | A | R |
| 6 Author the report | I | C | A | R |
| 6 Review the report | I | I | A | R |
| 6 Deliver the debrief | I | R | A | R |
| 7 Own remediation | A | C | C | I |
| 7 Retest | I | C | A | R |

A.6.2 The Threat Intelligence Analyst is responsible at phase 2 and consulted at phases 0,
1, 3 and 6. The Legal Adviser is responsible for the Letter of Authorisation review at
phase 1 and consulted at phases 0, 1 and 4. The defensive element is consulted at phase 4
deconfliction and responsible at phases 6 and 7.

A.6.3 During execution, accountability for deconfliction and for suspension rests with the
Trusted Agent and not with the Red Team Lead.

---

## A.7 Contact and availability

A.7.1 For every engagement the Rules of Engagement shall record, for the Approving
Authority, the Trusted Agent, the Red Team Lead and a named alternate for each:

a. name and appointment;

b. primary telephone number;

c. alternate telephone number;

d. email address;

e. secure messaging identifier, where used;

f. hours of guaranteed availability;

g. out-of-hours escalation route.

A.7.2 Every number shall be verified by telephone within twenty-four hours before
commencement, and the verification recorded in the engagement plan. An unverified contact
list is a frequent cause of delay in acting on a requirement to cease activity.

---

## A.8 Independence within a chain of command

A.8.1 Assessment independence and subordination are in tension. A red team subordinate to
an officer whose capability it assesses will moderate its findings. This arises from the
ordinary operation of hierarchy, not from dishonesty, and is not apparent to those
involved.

A.8.2 The following controls are mandatory and shall be recorded in the Rules of Engagement
for every engagement.

| | Control | Failure prevented |
|---|---|---|
| 1 | Written right of direct report to the Approving Authority, bypassing any intermediate commander | Findings moderated in transmission |
| 2 | The Approving Authority is outside the chain of command assessed | The officer accepting the risk is also the officer judged by the result |
| 3 | Reports delivered to the Approving Authority and the assessed commander simultaneously, with no prior sight and no opportunity to amend before issue | Findings negotiated before independent scrutiny |
| 4 | Severity may be disputed and the dispute recorded; it shall not be amended without record | Assessments reduced under seniority pressure |
| 5 | The Head of Red Team is not appraised by a commander whose capability the red team assesses | The reporting officer is the subject of the report |
| 6 | Refusal on legal, safety or ethical grounds is protected and escalates directly | Rank substitutes for authorisation |

A.8.3 Control 3 is the control most commonly eroded, ordinarily through a request for sight
of a report before issue. Such a request shall be declined. The legitimate requirements it
represents are met by simultaneous delivery, by a right of written reply appended to the
report, and by record of any disputed severity assessment.

---

## A.9 Relationship to the offensive function

A.9.1 Where the organisation holds both an assurance capability and an operational effects
capability, personnel may serve in or move between the two. The governing rules are at
Chapter 2, paragraphs 2.10 to 2.14 of the methodology and bind every appointment in this
annex.

| Appointment | Requirement |
|---|---|
| Every red team member | Operates under one function at a time, under that function's authority, and records which |
| Red Team Lead | Refuses and reports any tasking that would employ this capability outside a signed Rules of Engagement and Letter of Authorisation, irrespective of the seniority of the originator |
| Approving Authority | The sole route by which capability may be transferred between the two functions |
| Infrastructure Engineer | Maintains separation of assurance infrastructure from operational infrastructure: no shared assets, naming or providers |
