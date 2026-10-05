# ANNEX E — EXECUTION AND TRADECRAFT

Supporting Chapters 7 and 8 of the Red Team Methodology. Issued under the authority of the
Head of Red Team.

---

## E.1 Scope

E.1.1 This annex sets the standards binding on operators during phase 4. The standing
instructions governing conduct are at Chapter 8 of the methodology and are not restated
here.

E.1.2 These standards produce the record required where activity is examined subsequently.
The question to be answered at that point is what was done, on which date, on whose
authority, and with what effect.

---

## E.2 Tradecraft

### E.2.1 Requirements

E.2.1.1 The following amplify the standing instructions at Chapter 8, paragraphs 8.8 to
8.14.

| | Requirement | Basis |
|---|---|---|
| 1 | Record every significant event as it occurs: session capture, tool output, operator notes, screenshots | The record is the only durable account. Recollection is not evidence. |
| 2 | Consult a second operator before exploitation, first use of a tool, and any irreversible action | Serious incidents ordinarily arise from a single operator acting alone under time pressure |
| 3 | Establish what a tool does before it is run: its artefacts, its network signature, its failure modes | Risk that is not understood cannot be assessed, and an effect that is not understood cannot be explained |
| 4 | Assess the environment after gaining access, before acting further | Establish the function of the host, what depends on it, and what monitors it |
| 5 | Verify that the target is within the authorised space on every occasion, by address and not by name | Names change; a shared name may resolve to a system outside scope |
| 6 | Limit command and control traffic and pivot through the fewest outbound channels required | Volume is the most reliable indicator available to a defensive element |
| 7 | Prefer native and signed system tooling to introduced binaries | Lower risk, fewer artefacts, and consistent with the higher capability levels |
| 8 | Record each modification at the time it is made | Cleanup depends on it; later reconstruction is unreliable |
| 9 | Capture the screenshot at the point of discovery | The state demonstrating a finding is frequently transient |

### E.2.2 Prohibitions

| | Prohibition | Basis |
|---|---|---|
| 1 | Introduction of untested tooling into a target environment | Untested tools cause failures, unexpected callbacks and incompatibility |
| 2 | Unencrypted command and control traffic | Trivially detected, and exposes the content of the operation |
| 3 | Exfiltration of personal, medical, financial or classified data | Demonstrate access; do not remove the data |
| 4 | Execution of binaries from atypical directories where a native alternative exists | Unnecessary artefacts and noise |
| 5 | Retention of credentials, tokens or keys in notes or reports beyond the requirement of verification, and unencrypted in any case | The red team becomes the source of the compromise |
| 6 | Action against a target not verified as within scope | A frequent cause of incidents |
| 7 | Continuation past a cessation criterion | The criterion exists because the circumstance was foreseen |
| 8 | Persistence surviving culmination | Residual risk outlasting the authorisation |
| 9 | High-risk action conducted alone, outside ordinary hours, without notification of the Red Team Lead | Fatigue, isolation and privilege in combination |
| 10 | Discussion of engagement detail outside the cleared list | In a covert engagement, an overheard conversation ends the assessment |

### E.2.3 Approval levels

E.2.3.1 The level of approval is a property of the action in the environment concerned and
not of the seniority of the operator. An experienced operator using a tool for the first
time in a given environment is at the elevated level.

| Level | Approval | Examples |
|---|---|---|
| Routine | Operator's own judgement | Passive enumeration; scanning within agreed rates; reading accessible files |
| Standard | Consultation with a second operator | Credential recovery from a compromised host; movement to a host within scope; standard persistence |
| Elevated | Red Team Lead | First use of a tool in the environment; exploitation of a service; privilege escalation; creation of accounts |
| High | Trusted Agent, immediately before execution | Identity infrastructure, hypervisors, backup systems, operational technology; credential attacks at scale; any change to a security control |
| Exceptional | Approving Authority, in writing | An action expressly classified as conditional at Annex B and authorised in the ROE; never an absolute prohibition |

E.2.3.2 Approval level does not convert an unlawful act, an absolute prohibition or an act
outside the authorised target space into a permitted act. If a proposed high-impact action
has no credible method of reversal, the plan is changed or the objective is demonstrated by
a safer substitute.

---

## E.3 Records

### E.3.1 The three layers

| Layer | Source | Automatic | Purpose |
|---|---|---|---|
| Operator record | Written by the operator | No | Intent, reasoning, interpretation |
| Session record | Terminal or session capture | Yes, mandatory | What was entered and what was returned |
| Infrastructure record | Command and control framework, tooling | Yes, mandatory | Timing, callbacks, tasking |

E.3.1.1 The operator record is the primary record because it is the only one that states
why an action was taken. A session record establishes that a command was executed. Only the
operator can state what led to the decision, what was expected, and how the result was
interpreted.

E.3.1.2 Automatic capture at layers 2 and 3 shall be configured and verified before
execution commences. It exists so that the diligence of an operator under pressure is not
the only safeguard.

### E.3.2 Fields of the operator record

E.3.2.1 The following are recorded for every action. Pro forma T05.

| | Field | Content |
|---|---|---|
| 1 | Start time, UTC | Commencement of the action |
| 2 | End time, UTC | Completion |
| 3 | Operator | Person conducting the action |
| 4 | Source address | Address from which the action originated |
| 5 | Destination address | Target address |
| 6 | Destination port | Port on the target |
| 7 | Destination system | Host name or identifier |
| 8 | Pivot address and port | Intermediate host, where used |
| 9 | Uniform resource locator | Where applicable |
| 10 | Tool | Application or utility employed |
| 11 | Command | The instruction executed |
| 12 | Description | The intent of the action and its rationale |
| 13 | Output | The result, summarised, with the full output referenced |
| 14 | Result | Success, failure, partial, or prevented by a control |
| 15 | Modification | Any change made to the system, feeding the cleanup register |
| 16 | Evidence reference | Location or identifier of the artefact |
| 17 | Comment | Interpretation, decisions, anomalies |

E.3.2.2 Fields 12 and 15 are the fields most frequently omitted and the fields of greatest
consequence. Field 12 converts a record into an account. Field 15 makes cleanup possible.

### E.3.3 Discipline

E.3.3.1 Records are made at the time of the action. Reconstruction at the close of day is a
common cause of inaccuracy in reports.

E.3.3.2 Coordinated Universal Time is used on every system, in every record and on every
screenshot. Before execution, each recording system is compared with the approved time
source and its offset is recorded. The tolerance is set in the engagement plan. The check
is repeated after a system resumes from sleep or suspension, after a time-service anomaly,
and whenever records no longer align. An offset outside tolerance is corrected where safe;
the affected interval and correction are recorded rather than silently normalised.

E.3.3.3 Unsuccessful actions are recorded. They constitute evidence that a control
functioned and are among the more useful outputs of an engagement.

E.3.3.4 Where activity occurred, it is recorded. An unexplained interval in the record
during an incident window is indistinguishable from concealment.

E.3.3.5 Operator records are reconciled against infrastructure and session records at the
close of each day. Discrepancies are resolved the same day and not at the point of
reporting.

---

## E.4 Evidence

E.4.1 Evidence shall be sufficient to establish the finding without increasing risk.

### E.4.2 Collected

a. Timestamped operator, session and tool records.

b. Screenshots showing the full window, including a visible time reference and the identity
of the host.

c. Request and response extracts, with secrets redacted at the point of capture.

d. Alert identifiers, task references and query references.

e. Identifiers of affected assets.

f. The minimum proof of access: a count of records, a schema, a file name, a marker.

g. A written statement of the mission impact.

### E.4.3 Not collected

a. Bulk sensitive data of any kind.

b. Personal data beyond that required to demonstrate access, and never more than a single
illustrative record, redacted.

c. Passwords, tokens, private keys or session cookies, in reports or in notes.

d. Production records not required for proof.

e. Anything prohibited by the Rules of Engagement.

### E.4.4 Redaction

E.4.4.1 Redaction is performed at the point of capture and not at the point of reporting.
Unredacted material in the repository constitutes a live risk for as long as it exists, and
the report is written subsequently by a person who may not know what is sensitive.

### E.4.5 Captured credentials

a. Store hashed or truncated where the credential itself is not required.

b. Do not place a working credential in a report, an appendix or a task record.

c. Use only as authorised, only for the engagement, and only within the period.

d. Destroy at culmination and record the destruction.

e. Where a credential grants access beyond the scope of the engagement, cease and report it.
It shall not be used.

### E.4.6 Integrity and provenance

E.4.6.1 Routine red team material is assurance evidence. It is not described as forensic
evidence or as having a formal chain of custody unless the controls in this paragraph were
maintained. Material that may be required for an incident investigation, regulatory
submission, disciplinary dispute or legal process is escalated immediately to the evidence
owner and handled under the organisation's applicable evidence procedure.

E.4.6.2 At the first stable point of collection or consolidation, each material artefact is
assigned a unique evidence identifier and the following are recorded:

a. original system, source and path or query;

b. collector and collection method;

c. collection date and time in UTC, including any known clock offset;

d. hash algorithm and value, using an organisation-approved cryptographic hash;

e. original repository location, classification and access restrictions; and

f. the finding, action or narrative step to which the artefact relates.

E.4.6.3 Where live capture cannot be hashed without increasing operational risk, the
reason is recorded and the artefact is hashed at the first stable consolidation point. The
unaltered original is preserved. Cropping, annotation, conversion, redaction and other
transformations are performed on a working copy and recorded against the original evidence
identifier.

E.4.6.4 Where chain of custody is required, every transfer, access, copy and disposition is
recorded with the person, purpose, date and time in UTC, source, destination and integrity
check. Ordinary repository audit logs may provide this record where they are protected and
retained for the required period.

E.4.6.5 Evidence identifiers, hashes and repository references are reconciled before the
report is issued and again before destruction. A hash does not establish that content is
true; it establishes whether the collected content has changed since the hash was made.

---

## E.5 Deconfliction

### E.5.1 Purpose

E.5.1.1 Deconfliction establishes, quickly and correctly, whether observed activity
originates from the red team or from a genuine adversary. It guards against two failures:
expenditure of defensive effort on exercise activity, and dismissal of a genuine intrusion
as exercise activity. The second is the more serious.

### E.5.2 Procedure

```{.mermaid filename="annex-e-deconfliction"}
sequenceDiagram
    autonumber
    participant D as Defensive element<br/>or Trusted Agent
    participant R as Red Team Lead
    participant A as Approving Authority
    D->>R: Deconfliction request<br/>UTC time, source and target<br/>Observed behaviour
    R->>R: Suspend affected activity
    R->>R: Check operator, infrastructure<br/>and session records
    R-->>D: Decision within<br/>the agreed period
    alt Attributable to the red team
        Note over D,R: Stand down and record<br/>as exercise activity<br/>Record response quality as a finding
    else Not attributable
        R->>A: Genuine intrusion suspected
        Note over R,A: Suspend the engagement<br/>Preserve evidence<br/>Transfer the activity record<br/>Incident response assumes control
    end
```

**Figure E-1. Deconfliction procedure**

### E.5.3 Standards

E.5.3.1 A request is answered within the period set in the Rules of Engagement. The default
is thirty minutes.

E.5.3.2 The determination is definitive. A determination of probable attribution is not
permitted. Where the records do not establish attribution to the red team, the
determination is that the activity is not attributable, and it is handled as a genuine
intrusion until established otherwise.

E.5.3.3 The red team suspends activity in the affected area while the determination is
made.

E.5.3.4 Every request and determination is recorded on pro forma T07, including the
timeline, which becomes evidence of response times in the report.

E.5.3.5 Whether to inform the defensive element is decided by the Trusted Agent alone. In a
covert engagement the element ordinarily continues to treat the activity as genuine.

### E.5.4 Authentication

E.5.4.1 A code word is agreed in the Rules of Engagement and known to the Red Team Lead,
the Trusted Agent and the Approving Authority. It authenticates an instruction to cease or
a declaration of emergency, so that such an instruction cannot be counterfeited, including
by an adversary with sight of the same correspondence.

### E.5.5 Discovery of a genuine intrusion

E.5.5.1 The following sequence applies.

a. Cease all red team activity.

b. Notify the Trusted Agent by telephone, using the code word.

c. Preserve all records and evidence in their existing state.

d. Transfer what is known: what was observed, when, on which host, and the full record of
red team activity, so that responders can distinguish it.

e. Do not investigate, remediate, or interact further with the affected systems.

f. The engagement is suspended. Resumption requires the approval of the Approving Authority.

---

## E.6 Situation reporting

E.6.1 A situation report is submitted to the Trusted Agent on every day of execution, on
pro forma T06. A day on which no activity occurred is reported as such.

E.6.2 The report covers: current position; activity during the period; progress against
each objective; controls encountered, whether or not they functioned; any observed
defensive activity; risks and issues; deconfliction events; changes to the Rules of
Engagement requested or approved; intent for the following period; and any support required
from the Trusted Agent.

E.6.3 The requirement is absolute because the report is the daily confirmation that the
communication channel is functioning. A day on which no report is submitted is treated as a
loss of contact and engages Annex B, paragraph B.1.3 and the cessation criterion at
paragraph 8.15.k of the methodology.

---

## E.7 Attack diagram

E.7.1 An attack diagram is maintained during execution and updated not less than daily. It
records the starting posture; each host, account and system accessed, with times; the route
between them and the technique used for each movement; the privilege held at each stage;
objectives reached; and the points at which a control prevented or detected activity.

E.7.2 Maintaining the diagram during execution rather than reconstructing it afterwards
produces an accurate diagram for the report and reveals omissions in the operator record
while they can still be corrected.

---

## E.8 Operational security

E.8.1 The following apply, and apply particularly to covert engagements.

a. Engagement communications remain outside the monitored infrastructure of the assessed
organisation.

b. Engagement documents are not held in the file stores, task systems or mail systems of
the assessed organisation.

c. Engagement matters are not discussed in shared accommodation, corridors, or on the
messaging platform of the assessed organisation.

d. Operators do not access engagement infrastructure from the network of the assessed
organisation.

e. Calendar entries carry neutral titles.

f. The cleared list is minimal and recorded. Each addition is recorded with the date and the
authorising appointment.

E.8.2 Covert engagements are ordinarily compromised by a document, a calendar entry or a
conversation rather than by a technical indicator.

---

## E.9 Hours and fatigue

E.9.1 Execution outside agreed hours requires notification of the Trusted Agent.

E.9.2 High-risk actions shall not be conducted in the final hour of a long shift.
Fatigue-related error on privileged systems carries the highest consequence of any error
available to an operator.

E.9.3 Operators take breaks. An operator who has pursued a route for an extended period is
not the appropriate person to determine whether an action is reversible.

E.9.4 The Red Team Lead is responsible for enforcing this paragraph and shall stand an
operator down where judgement is degraded.

---
