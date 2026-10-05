# ANNEX G — LEGAL, SAFETY AND DATA HANDLING

Supporting Chapters 4, 5 and 8 of the Red Team Methodology. Issued under the authority of
the Head of Red Team.

> This annex states a framework. It is not legal advice. Every engagement requires review by
> a qualified legal adviser against the law applicable to the jurisdiction and to the
> organisation. The instruments at paragraph G.2 shall be identified by that adviser and
> recorded before the methodology is approved.

---

## G.1 Legal exposure and individual protection

G.1.1 Red team activity may engage offences and civil, regulatory, contractual, employment,
privacy and professional obligations. Written, target-specific authorisation from a person
competent to give it is a necessary control, but it may not by itself make every planned
activity permissible. Qualified counsel shall establish the complete position for the
relevant jurisdictions, parties, systems and techniques.

G.1.2 Defective or incomplete authority may expose the organisation, approving persons,
providers and individual operators. The allocation of liability depends on the applicable
law and facts and is not determined by this publication. This is why the Rules of Engagement
are treated as absolute at Annex B, self-authorisation is prohibited at Annex A, and every
operator holds a protected right of refusal.

---

## G.2 Legal framework

G.2.1 The following categories of instrument bear on red team activity. The specific
instruments applicable, and their references, shall be identified by the legal adviser and
recorded in a schedule held with this annex.

| Area | Bearing on the activity |
|---|---|
| Unauthorised access to computer systems | Authority and consent may determine whether access is unauthorised; counsel establishes the effect and any remaining offences or duties |
| Interception of communications | Constrains capture of network traffic |
| Defence mandate or equivalent instrument | The authority to assess another organisation. The governing instrument for external engagements. |
| Regulation of personnel and discipline | Bears on social engineering directed at members of the organisation |
| Protection of classified information | Where the engagement touches classified systems. See Annex I. |
| Data protection | Personal data encountered during an engagement. Any derogation applicable to defence or national security shall be established and not assumed. |
| Monitoring of personnel | Constrains social engineering and observation of personnel. May differ between service and civilian staff. |
| Critical infrastructure | Where assessing infrastructure outside the organisation under mandate |
| Alliance and coalition arrangements | Where systems or information belonging to another nation are in scope |
| Cross-border activity | Where infrastructure, operators or targets are in different jurisdictions |
| Operational effects | Cited only to mark the boundary this publication does not cross. See Chapter 2, paragraphs 2.10 to 2.14. |

G.2.2 Applicability is determined instrument by instrument. DORA and its delegated TLPT
regulation apply only where their legal criteria are met; CBEST applies where the relevant
United Kingdom authorities direct it; and TIBER-EU is a sector-agnostic framework that may
be adopted voluntarily or through a national, European or supervisory implementation. None
shall be presented as binding merely because this methodology uses it as a benchmark. See
Annex K.

### G.2.3 Cross-border activity

G.2.3.1 Where infrastructure, operators or targets are in different jurisdictions, activity
may constitute an offence in a jurisdiction that has not been considered. Before an
engagement with a cross-border element, the following shall be established.

a. The physical location of the target systems, including the region of any hosted service.

b. The location of engagement infrastructure.

c. The physical location of each operator during execution.

d. Whether data will cross a border, and on what basis.

e. Whether the current terms and testing policy of every hosting or software provider permit
the activity as both a source and a target. Requirements differ by provider, service and
activity and may include prior approval. Breach may cause interruption or termination during
execution.

### G.2.4 Authority to direct and authority to consent

G.2.4.1 The distinction most frequently mistaken in an organisation with a command
structure is the following.

a. **Command authority** is the power to direct that an assessment be conducted.

b. **System authority** is the power to consent to access to a particular system.

G.2.4.2 A tasking order establishes the first. It does not establish the second unless the
instrument creating the mandate expressly confers it. Where the two are held by different
bodies, both are required. System authority records the required consent to access, subject
to every other applicable legal, contractual and provider condition.

G.2.4.3 The position shall be established in writing before phase 1 is complete. See Annex
H, part H2.

### G.2.5 Applicability and permission record

G.2.5.1 The legal adviser maintains an engagement-specific applicability record. For each
law, regulation, mandate, contract, employment or consultation obligation, classification
rule, insurance term and provider policy considered, it records: exact title and edition or
effective date; jurisdiction and subject; whether it applies; the basis for that decision;
the required control or deliverable; accountable owner; evidence of completion; and the
event that requires re-review. "Not applicable" is a reasoned decision, not a blank field.

G.2.5.2 A provider and third-party permission register is attached where any hosted, managed
or shared service is a source, target or dependency. One row per provider and service records:

a. provider, service, account, tenant, subscription, project and resource identifiers;

b. whether the organisation owns the resource or has direct written permission from its
owner, including the consenting name and authority;

c. current policy title, URL, version or effective date, and the date checked;

d. permitted and prohibited activity, service-specific limits and rate limits;

e. any notification, approval, simulated-event form or support case and its validity period;

f. security, abuse and emergency contacts, region and jurisdiction; and

g. the operator who rechecked the policy no more than twenty-four hours before execution.

G.2.5.3 A previous engagement's approval or a general statement that penetration testing is
allowed shall not be reused without revalidation. Cloud and software service policies change
independently of this publication.

G.2.5.4 The following is an orientation snapshot at the source-baseline date, not standing
permission. The linked policy and controlling terms shall be read in full for the exact
service and activity.

| Provider | Current decision points to verify |
|---|---|
| AWS | Listed customer services may be assessed without prior approval, but all C2 requires prior approval. Covert adversarial simulation, simulated phishing, malware testing and other simulated events may require the Simulated Events process, submitted at least two weeks in advance. DoS and related flooding remain prohibited except through a separate applicable policy. |
| Microsoft Azure | Ordinary testing of owned or expressly authorised resources does not require preapproval, but the current Microsoft Cloud Unified Penetration Testing Rules of Engagement control. DoS, access to resources or secrets without permission, excessive traffic and specified social-engineering uses are prohibited. Microsoft may interrupt activity detected as abuse. |
| Google Cloud | Penetration testing of the customer's own projects does not require notification, but it remains subject to the Acceptable Use Policy and Terms of Service and shall not affect another customer's application. |

G.2.5.5 The team records the policy conclusion, not merely a link: source and target use,
service eligibility, prohibited features, notice or case number, validity window, rate
limits, abuse response and the action required if provider infrastructure is reached.

---

## G.3 The authorisation chain

G.3.1 Three documents are required and each performs a distinct function.

```{.mermaid filename="annex-g-authorisation"}
flowchart TB
    M["1. The methodology<br/>Establishes the capability<br/>Signed once; reviewed annually<br/>Authorises no activity against any target"]
    R["2. Rules of Engagement, per engagement<br/>The operating instrument: scope, permitted and prohibited<br/>actions, contacts, cessation criteria<br/>Signed by control, delivery, risk and system authorities"]
    L["3. Letter of Authorisation, per engagement<br/>Short, plain, self-contained<br/>Signed by the authority competent to consent to access<br/>Risk authority countersigns where different<br/>Held by every operator"]
    GO(["Activity may commence"])
    M --> R --> L --> GO
```

**Figure G-1. Authorisation chain**

### G.3.2 The Letter of Authorisation

G.3.2.1 Produced on pro forma T10. The following are required.

a. Signature by each person holding actual authority to consent to access to the systems in
scope. Where operational risk authority is held separately, the Approving Authority
countersigns.

b. A plain statement of who is authorised, to do what, against what, between which dates,
and whom to contact for verification.

c. Sufficient brevity to be read and understood in under a minute by a police officer, a
security guard, or a systems administrator.

d. Comprehensibility without reference to the Rules of Engagement. The letter stands alone.

e. Possession by every operator, in physical and electronic form, for the duration of the
engagement.

G.3.2.2 The authority of every signatory shall be verified and not assumed. An invalid or
incomplete signature may not provide the intended consent or protection. Where systems
belong to a different entity, division or agency, that entity's system authority is required.

### G.3.3 The verification card

G.3.3.1 Separate from the Letter of Authorisation, and carried by each operator,
particularly where activity is conducted on site. It contains only:

a. a statement that the bearer is conducting authorised security testing;

b. the engagement reference;

c. the name and continuously answered telephone number of the Approving Authority;

d. the name and continuously answered telephone number of the Trusted Agent.

G.3.3.2 Nothing further is included. The card exists to permit de-escalation and rapid
verification by a person who has detained the operator. Any additional detail constitutes
intelligence provided to that person.

G.3.3.3 Where physical entry is authorised, the Trusted Agent shall confirm before execution
that site security leadership and, where appropriate, law enforcement liaison have been
informed that authorised activity will occur during the period, without disclosure of timing
or method.

---

## G.4 Data protection

### G.4.1 Principles

| Principle | Application |
|---|---|
| Lawful basis | The processing of personal data during the engagement has a recorded lawful basis, confirmed by the legal adviser |
| Minimisation | The minimum personal data required to demonstrate impact. Markers and schemas are preferred to records. |
| Purpose limitation | Data encountered is used only to demonstrate the finding |
| Storage limitation | Retained only for the period set in the Rules of Engagement, then destroyed with a certificate |
| Security | The evidence repository is encrypted, access-controlled and logged |
| Accountability | Every access to sensitive data is recorded in the operator record |

### G.4.2 Requirements

G.4.2.1 A personal data set shall not be exfiltrated. Reachability is demonstrated by a
count of records, a schema, or a single redacted illustrative record.

G.4.2.2 Special category data, including data concerning health, biometrics, political
opinion, religion, sexual orientation or trade union membership, shall not be intentionally
collected or retained as evidence. Incidental viewing, logging or capture may itself be
processing and shall be minimised, stopped, reported and handled under the lawful-basis and
incident procedure. The fact and identity of the store may be recorded; its contents are not.

G.4.2.3 Personal data shall not be retained beyond the retention period, and its destruction
shall be recorded.

G.4.2.4 Inadvertent access to a bulk data set shall be reported to the Trusted Agent
immediately. The data protection officer or legal adviser shall determine controller and
processor roles, whether a personal data breach has occurred, when the organisation became
aware for the purpose of any deadline, and which notification or documentation duty follows.
The red team shall not delay escalation while making that determination.

G.4.2.5 Before authorisation, the legal adviser or data protection officer records: the
controller and any processor or joint-controller roles; lawful basis; categories and sources
of personal data; recipients and access; retention and verified deletion; international
transfers and safeguards; data-subject information or any lawful restriction; and whether a
data protection impact assessment or prior consultation is required. Where one is required,
it is completed before execution.

### G.4.3 Classified information

G.4.3.1 Where activity encounters classified material, the classification regime governs and
outranks every other provision of this annex.

a. Classified material shall not be moved to a system not accredited for it, including
operator systems, the evidence repository and the report.

b. Where access to classified material is demonstrated, the fact and the location are
recorded. The content is not.

c. Engagement artefacts take the classification of the material they describe, at the time
they are created.

d. Deliverables shall be assessed for aggregation before classification is assigned. A
complete account of an estate's weaknesses is more sensitive than any single weakness within
it.

e. A suspected spill shall be reported immediately under the organisation's procedure,
before any engagement consideration, and the engagement ceases.

f. Classification is assigned by the security authority and not by the red team.

G.4.3.2 The full controls are at Annex I, paragraph I.2.

### G.4.4 Personnel data and social engineering

G.4.4.1 Social engineering processes the personal data of personnel and may engage
monitoring law and consultation requirements.

G.4.4.2 Before any social engineering activity:

a. the legal adviser confirms the lawful basis and any consultation obligation;

b. individual results shall not be disclosed to management, per Annex F paragraph F1.4.3;

c. captured credentials are hashed or truncated and destroyed at closure;

d. the target population is defined by group, and the exclusion list is observed absolutely.

---

## G.5 Safety

### G.5.1 Principle

G.5.1.1 Where realism conflicts with the safety of personnel, systems, data or operational
readiness, realism yields. This applies without exception and without a requirement to seek
approval to proceed.

G.5.1.2 This is not a limitation upon the value of an engagement. Where an adversary would
cause harm that the red team will not cause, the difference is described in the report. It
is not a gap to be closed by causing the harm.

### G.5.2 Safety-critical environments

G.5.2.1 Where the scope includes operational technology, industrial control, medical
devices, transport, energy, or any system whose failure can injure a person, the following
apply.

| | Requirement |
|---|---|
| 1 | Safety instrumented systems and protection systems are permanently outside scope |
| 2 | Active scanning and enumeration of control protocols require approval per technique; such devices fail unpredictably under ordinary scanning |
| 3 | A representative non-production environment is required before any technique is used against a live system |
| 4 | The asset owner and a safety engineer participate in scoping and are reachable throughout execution |
| 5 | Activity occurs only during agreed windows, with the process in a known-safe state |
| 6 | Engineering staff able to intervene physically are present and briefed |
| 7 | Any anomaly in the physical process causes activity to cease, irrespective of cause |
| 8 | Where the boundary between general-purpose and control networks is the objective, activity stops at the boundary and demonstrates reachability, unless crossing is expressly authorised with a safety case |

G.5.2.2 Requirement 8 is ordinarily the correct course. Demonstrating that a control network
is reachable from a general-purpose network constitutes the finding. Entry adds risk and
little information.

### G.5.3 Availability

G.5.3.1 Denial of service and resource exhaustion are prohibited by default.

G.5.3.2 Rate limits for scanning and credential attacks are set in the Rules of Engagement
and observed.

G.5.3.3 Account lockout thresholds are established before any credential attack. Password
spraying is rate-limited below the threshold with a margin.

G.5.3.4 Change freezes, periods of financial close and major operational events are
observed.

G.5.3.5 Suspected degradation causes activity to cease, whether or not the red team is
believed to be the cause.

### G.5.4 Safety of operators

G.5.4.1 Activity conducted on site requires a second person aware of the operator's location
and status, with agreed intervals for contact.

G.5.4.2 An operator who is challenged shall not resist, evade or withdraw. The operator
ceases activity, identifies the activity as authorised security testing, produces the
verification card, and requests that the Approving Authority be contacted.

G.5.4.3 No operator is required to undertake activity judged personally unsafe. Refusal on
that ground carries no consequence.

---

## G.6 Discovery of a genuine intrusion

G.6.1 The operational procedure is at Annex E, paragraph E.5.5. The legal considerations are
as follows.

a. Discovery may engage mandatory notification obligations with short statutory periods.
The legal adviser and incident process determine the point of awareness and the applicable
deadline. The red team escalates immediately and does not await confirmation.

b. Evidence is preserved in its original state. Red team activity records form part of the
incident record and may be disclosed to a regulator or in proceedings. This is a further
reason the recording standard at Annex E is not discretionary.

c. The red team does not investigate, remediate, or further interact with the affected
systems.

d. The legal adviser and the Approving Authority are informed immediately, in that order of
urgency.

---

## G.7 Personnel security

G.7.1 A red team holds capability, access and knowledge that constitute a concentrated
insider risk. The following controls apply.

| Control | Requirement |
|---|---|
| Clearance | All members hold clearance to the level required by the environments assessed, revalidated under the applicable policy |
| Segregation | No red team member holds standing privileged access to production systems |
| Two-person rule | High-risk actions require consultation with a second operator, per Annex E paragraph E.2.1 |
| Independent records | Infrastructure and session capture are automatic and not modifiable by operators |
| Tooling control | Offensive tooling is held on controlled systems, inventoried, and not on personal devices |
| Credentials | Captured credentials are destroyed at closure, and the destruction recorded |
| Departure | On departure, access is revoked, tooling returned, access to evidence removed, and continuing obligations reaffirmed in writing |
| Audit | Engagement records are audited annually against this methodology by a party independent of the red team |

---

## G.8 Professional conduct

G.8.1 The following bind every member.

a. Operate only under valid authorisation.

b. Remain within scope. Ambiguity requires cessation and consultation.

c. Report truthfully, including errors made by the red team and controls that defeated it.

d. Protect the confidentiality of all matters learned, permanently, including after
departure.

e. Do not employ capability or knowledge obtained during an engagement for personal benefit
or outside an authorised engagement.

f. Do not target individuals personally, and do not provide material for disciplinary use.

g. Declare conflicts of interest, including prior employment, personal relationships and
financial interest in an assessed organisation or in a product being assessed.

h. Refuse activity that is unlawful, unsafe or unethical, and report the refusal. Refusal on
these grounds is protected.

i. Do not publish, present or discuss engagement material externally without the written
approval of the Approving Authority, including material presented as anonymised.

j. Maintain competence. A technique used in a live environment shall be understood and not
copied.

---

## G.9 Verification before authorisation

G.9.1 The Red Team Lead, with the legal adviser, confirms the following at gate G1. The
completed record is attached to the Rules of Engagement.

1. The authorisation chain is verified: the signatory holds actual authority over every system in scope.
2. The Letter of Authorisation is signed, dated, and covers the whole execution period.
3. Every operator holds the Letter of Authorisation and the verification card.
4. The lawful basis for processing personal data is recorded.
5. Monitoring and consultation obligations are addressed, where social engineering is authorised.
6. Third-party and system-owner consent is obtained where scope touches their systems.
7. The provider and third-party permission register at paragraph G.2.5 is complete, and each
   policy has been rechecked within twenty-four hours of execution.
8. Cross-border implications are assessed for target, infrastructure and operator locations.
9. Notification obligations, awareness rules and internal escalation routes are identified.
10. Requirements for the handling of classified information are addressed.
11. Safety-critical systems are identified and excluded, or a safety case exists.
12. Where physical entry is authorised, site security and law enforcement liaison are informed.
13. Controller and processor roles, lawful basis, transfers, retention and deletion are
    recorded; the need for a data protection impact assessment has been decided.
14. The retention period and method of destruction are agreed and recorded.
15. Evidence handling meets any potential requirement for disclosure.
16. The legal adviser has recorded approval and any limitations.

---
