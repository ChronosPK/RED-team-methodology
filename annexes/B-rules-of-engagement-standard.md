# ANNEX B — RULES OF ENGAGEMENT STANDARD

Supporting Chapter 5 of the Red Team Methodology. Issued under the authority of the Head of
Red Team.

---

## B.1 Status of the Rules of Engagement

B.1.1 The Rules of Engagement establish the relationship and obligations between the red
team, the system owner and the assessed organisation. They govern the whole engagement and
shall be observed throughout execution.

B.1.2 Three requirements are absolute.

a. Activity shall not commence until the Rules of Engagement are signed. Verbal authority
is not sufficient.

b. An expansion or other departure from an authorised boundary requires prior written
approval from every affected signing authority. Approval after the event does not
retrospectively authorise it. A restriction, suspension or stop instruction takes effect
immediately and is recorded as soon as practicable.

c. The Rules of Engagement shall be amended whenever the target space, authorised actions,
objectives or scope change. A document that does not reflect current activity is not
reliable evidence of the boundary being operated.

B.1.3 The Rules of Engagement and the Letter of Authorisation perform different functions.
The Rules of Engagement are the operating instrument: detailed, technical, held by the team.
The Letter of Authorisation is the short record of target-specific consent: signed by the
system authority and countersigned by the operational risk authority where different, and
carried by every operator. Neither replaces other applicable legal, contractual or provider
requirements. See Annex G, paragraph G.3.

B.1.4 Pro forma T02 is used to produce them.

---

## B.2 Mandatory content

B.2.1 Every set of Rules of Engagement shall contain the following sections. Rules of
Engagement omitting any section are not valid.

| | Section | Content |
|---|---|---|
| 1 | Engagement identity | Name, code name, reference, classification, version |
| 2 | Parties | Assessed organisation, red team, mandating authority where applicable |
| 3 | Purpose and objectives | The requirement; one to three objectives; the assessment objective each serves |
| 4 | Category | Service line SL-1 to SL-4; covert or open; starting posture |
| 5 | Methodology | Reference to this publication and the phase model |
| 6 | Activity types | The categories of activity permitted |
| 7 | Equipment and software | Tooling, command and control framework, infrastructure |
| 8 | Threat profile summary | Adversary emulated and capability level |
| 9 | Appointments | Each appointment and its authority |
| 10 | Deconfliction | The procedure in full, including the authentication code word |
| 11 | Cessation criteria | The list; who may invoke; the consequence |
| 12 | Communications | Channels, cadence, situation report schedule, out-of-hours arrangements |
| 13 | Data handling | What may be accessed, retained and for how long |
| 14 | Evidence and reporting | Products, recipients, classification |
| 15 | Legal and third-party authority | Applicable law, sector obligations, system-owner consent, provider policy and any third-party permission |
| 16 | Limitations | The assurance the engagement does and does not provide |
| 17 | Change control | The procedure for amendment during execution |
| 18 | Approval | Signatures of all parties, including system authority where held separately |

B.2.2 The following appendices shall be attached. They are designated as appendices, not
annexes, to distinguish them from the annexes to this publication.

| Appendix | Content |
|---|---|
| 1 | Identification of the assessed organisation |
| 2 | Contact list, per paragraph A.7 |
| 3 | Authorised target space |
| 4 | Excluded target space |
| 5 | Authorised actions |
| 6 | Prohibited actions |
| 7 | Objectives and success criteria |
| 8 | Threat profile, or reference to it |
| 9 | Record of changes during execution |

---

## B.3 Bounded scope and exclusion

B.3.1 Every engagement shall first define a positively authorised outer boundary: the legal
entities, systems, networks, domains, cloud tenants or projects, identities, personnel groups
and physical locations for which valid consent has been verified. Anything outside that
boundary is outside scope. Within that boundary, an engagement may use scoping by exclusion
to preserve adversary choice: targets are available only when they are inside the outer
boundary and are not listed as excluded.

B.3.2 Scoping by exclusion never creates authority. It shall not be used to infer consent
for a subsidiary, supplier, shared platform, cloud provider, customer, employee-owned asset
or other third party. Ownership and permission are established positively before the target
is included in Appendix 3.

B.3.3 Appendix 4, the excluded target space, is consequently the most safety-critical part
of the document. It shall be produced by the assessed organisation and not by the red team,
and shall be confirmed by the owner of each excluded system.

B.3.4 Exclusions shall cover, where applicable:

a. systems whose unavailability creates a risk to life;

b. systems under change freeze, migration, or known to be unstable;

c. systems hosted by a third party that has not consented;

d. legal, personnel, medical and privileged data stores;

e. individuals excluded from social engineering;

f. maintenance windows and periods of restriction;

g. any system whose owner cannot be reached during the execution period.

B.3.5 Where ownership, permission or the status of a target is ambiguous, it is outside
scope. Operators shall treat ambiguity as prohibition and seek written clarification. Only
an approved amendment to the authorised outer boundary can bring it into scope.

---

## B.4 Conduct of operators

B.4.1 The standing instructions governing operator conduct are at Chapter 8 of the
methodology and are not restated here. Technique approval levels are at Annex E, paragraph
E.2.3.

B.4.2 The cessation criteria are at Chapter 8, paragraph 8.15. Rules of Engagement may add
criteria particular to an engagement; they shall not remove any.

---

## B.5 Prohibited actions

B.5.1 The following are prohibited. An item marked **conditional** may be authorised only
where the system authority consents, the Approving Authority records the risk acceptance,
the legal adviser confirms permissibility, applicable provider or third-party conditions are
met, and the Rules of Engagement state the exact limits. An item marked **absolute** shall
not be authorised under this publication.

| | Prohibited action | Status | Basis |
|---|---|---|---|
| 1 | Denial of service, resource exhaustion or availability testing | Conditional | Impact may be uncontrollable; provider policy commonly prohibits it |
| 2 | Destructive action against a live system: deletion, encryption, corruption, or ransomware emulation using genuine encryption | Absolute | Irreversible or disproportionate impact; simulate the effect instead |
| 3 | Modification of production data other than a marked, reversible artefact | Conditional | Integrity risk that may outlast the engagement |
| 4 | Exfiltration of genuine sensitive data | Absolute | Unnecessary for proof; creates legal, privacy and security exposure |
| 5 | Action against a system with a function bearing on safety of life | Absolute | Physical harm |
| 6 | Exploitation of a third-party or supplier system without that party's direct written system-owner consent | Absolute | The assessed organisation cannot confer another entity's authority |
| 7 | Physical entry, bypass of physical controls or tailgating | Conditional | Requires separate authorisation and prior arrangements for immediate verification |
| 8 | Social engineering of personal accounts, personal devices or family members | Absolute | Outside the organisation's competence to consent |
| 9 | Interception of communications not belonging to the assessed organisation | Absolute | Outside the verified authority and likely subject to additional law |
| 10 | Acquisition of credentials, access or exploits from criminal sources | Absolute | Legal and ethical exposure |
| 11 | Persistence surviving the close of the engagement | Absolute | Uncontrolled residual risk |
| 12 | Use of infrastructure that cannot be decommissioned | Absolute | Cleanup cannot be completed |
| 13 | Disclosure of engagement information outside the authorised distribution | Absolute | Confidentiality and operational security |

---

## B.6 Social engineering

B.6.1 Where social engineering is authorised under paragraph 4.8 of the methodology, the
Rules of Engagement shall additionally specify:

a. **Permitted vectors.** Email, voice, messaging, physical pretext, in person.

b. **Permitted pretext themes, and prohibited themes.** The following are prohibited by
default: redundancy or termination; pay and allowances; medical matters; bereavement;
disciplinary action; security clearance; immigration status; and any theme likely to cause
significant personal distress.

c. **Target population**, defined by group and size, not by name.

d. **Excluded individuals**, including personnel under medical or personal hardship,
personnel on safety-critical duty during the period, and any individual named by the
Trusted Agent.

e. **Volume and rate limits.**

f. **Handling of captured credentials.** Credentials shall be stored hashed or truncated,
shall not be used beyond demonstrating capture unless expressly authorised, and shall be
destroyed at closure.

g. **Treatment of reporting.** A person who reports the approach has responded correctly.
Results are reported as rates. Individual results shall not be reported.

h. **Stand-down.** Where a campaign causes visible distress or disproportionate operational
disruption, activity ceases and the Trusted Agent is informed.

---

## B.7 Capability levels

B.7.1 The Rules of Engagement shall state the level of adversary capability emulated. This
establishes the weight to be given to a finding and prevents the inference that any
adversary could achieve the same result.

| Level | Capability emulated | Characteristics |
|---|---|---|
| 1 | Opportunistic criminal | Public tooling, known exploits, indiscriminate approach, no target-specific research |
| 2 | Targeted criminal | Target-specific research, purchased access, limited evasion, financially motivated |
| 3 | State-aligned or comparably resourced | Custom tooling, patient, disciplined operational security, use of native tooling, prolonged presence |
| 4 | Insider-enabled | Any of the above, commencing with insider access or knowledge |

B.7.2 A finding reachable at level 1 warrants greater urgency than the same finding
reachable only at level 3, because a greater number of adversaries can reach it. The level
shall be stated in both the Rules of Engagement and the report.

---

## B.8 Change control during execution

B.8.1 Environments differ from the assumptions of the plan. Changes are expected;
unrecorded changes are not.

B.8.2 The procedure is as follows.

a. The operator or Red Team Lead identifies the requirement and holds at the boundary.

b. The Red Team Lead submits a request to the Trusted Agent stating the change sought, the
reason, the risk, and the alternative considered.

c. The Trusted Agent approves, refuses, or refers the request to the Approving Authority.

d. Changes that extend target space, authorise an action classified as conditional, or
raise capability or risk shall be approved by the Approving Authority and every affected
System Authority. Applicable legal, provider and third-party conditions shall be
revalidated. An absolute prohibition is not changeable within an engagement.

e. Each approval, consent and external permission reference is recorded in Appendix 9 with
the effective date and time and the authority of the approver.

f. The Red Team Lead briefs all operators before the change takes effect.

B.8.3 A restriction, suspension or termination communicated verbally takes effect
immediately and is recorded as soon as practicable. A change that expands scope, permission,
capability or risk does not take effect until the required written approval and any amended
Letter of Authorisation are in force. Approval after the activity is not approval.

---

## B.9 Verification before signature

B.9.1 The Red Team Lead shall confirm each of the following before signature and attach the
completed record to the Rules of Engagement.

| | Verification |
|---|---|
| 1 | Every mandatory section and appendix is present and complete |
| 2 | Objectives are specific, verifiable and limited to three or fewer |
| 3 | The authorised target space is positively identified and each System Authority has confirmed ownership and consent |
| 4 | Exclusions clarify the authorised outer boundary and do not substitute for it |
| 5 | Every contact has been verified by telephone within the preceding twenty-four hours |
| 6 | The out-of-hours escalation route is defined and has been tested |
| 7 | The deconfliction procedure and code word are agreed and understood by both parties |
| 8 | Cessation criteria are stated and the maximum interval without contact is set |
| 9 | Data handling covers access, storage, retention and destruction |
| 10 | Legal review is complete and recorded |
| 11 | Direct third-party consent and current provider permission are evidenced where a source, target or dependency touches them |
| 12 | The Letter of Authorisation is signed by the System Authority and operational risk is countersigned where held separately |
| 13 | Every operator has read the Rules of Engagement and confirmed the fact in writing |
| 14 | Classification and distribution are set |
| 15 | The change control procedure and Appendix 9 are in place |
| 16 | Conditional and absolute prohibitions are distinguished; no absolute prohibition is authorised |

B.9.2 Verification 13 is not a formality. An operator who has not read the Rules of
Engagement cannot comply with them, and the resulting non-compliance falls to the
organisation.
