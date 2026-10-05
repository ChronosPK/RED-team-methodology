# ANNEX H — CATEGORIES OF ENGAGEMENT

Supporting Chapter 4 of the Red Team Methodology. Issued under the authority of the Head of
Red Team.

The methodology applies in full to every category. This annex records only what differs.

| Part | Category | Applies to |
|---|---|---|
| H1 | SL-1 Internal assessment | Assessment of the organisation's own systems |
| H2 | SL-2 Mandated engagement | Assessment of another organisation under mandate |
| H3 | SL-3 Exercise | Red team element within a structured exercise |
| H4 | SL-4 Purple team | Open activity conducted with the defensive element |

---

# PART H1 — INTERNAL ASSESSMENT

## H1.1 Characteristics

| | |
|---|---|
| Customer | The organisation's own command |
| Approving Authority | An officer of the organisation, outside the chain of command assessed |
| Ordinarily covert | Yes |
| Basis | Internal authorisation from the system authority |
| Principal value | Assessment of the organisation's own detection and response |

## H1.2 The risk of the simplified authority model

H1.2.1 Internal assessment has the simplest legal basis: the organisation authorises
assessment of its own systems. There is no external party, no agreement, and no question of
authority between entities.

H1.2.2 That simplicity invites curtailment of process. Rules of Engagement are omitted, the
Letter of Authorisation is treated as unnecessary, or the head of the assessed element signs
the authorisation for its own assessment. Each converts a straightforward engagement into
personal liability and an unusable result.

H1.2.3 The controls at Annexes B and G apply in full to internal assessment. There is no
reduced variant.

## H1.3 Variations

### H1.3.1 Approving Authority

H1.3.1.1 The common internal failure is that the Approving Authority sits within the chain
of command assessed.

| Subject of assessment | Competent Approving Authority |
|---|---|
| The detection capability | An officer above, or outside, the defensive element. Not its head. |
| The information technology estate | The officer accountable for the risk to that estate. Not its manager. |
| The organisation as a whole | The commander, or the officer holding the risk |

### H1.3.2 Trusted Agent

H1.3.2.1 The Trusted Agent shall be internal, senior, and not a member of the element
assessed. Suitable appointments ordinarily include the head of risk, the head of compliance,
a deputy security officer not responsible for the defensive element, or a director from a
different domain.

H1.3.2.2 Where the only technically competent candidate sits within the assessed element,
the engagement shall either reduce scope so that the candidate is no longer assessed, or
adopt a two-person arrangement: a senior decision-maker holding the authority to suspend,
and a technical adviser who does not receive engagement detail.

### H1.3.3 Compartmentalisation

H1.3.3.1 The cleared list is recorded. Each addition is recorded with the date and the
authorising appointment.

| Appointment | Cleared | Basis |
|---|---|---|
| Approving Authority | Yes | Accepts the risk |
| Trusted Agent | Yes | Controls the engagement |
| Legal adviser | Yes | Advises on authorisation |
| Head of security | Only where not part of the capability assessed | |
| Head of the defensive element | No, in a covert engagement | The element is the subject of assessment |
| Owners of excluded systems | Partial: informed only that assessment is occurring and that their system is excluded | |
| Service desk | No | Its response forms part of the assessment |

### H1.3.4 Internal knowledge

H1.3.4.1 An internal red team holds knowledge unavailable to an external adversary:
architecture, the location of credentials, undocumented systems, and the identity of
suitable targets for social engineering.

H1.3.4.2 The engagement plan shall record which knowledge derived from internal privilege
rather than from reconnaissance. Privileged knowledge that the emulated adversary could not
plausibly obtain shall not be used, unless the scenario expressly models an insider at
capability level 4.

H1.3.4.3 Where privileged knowledge is used to reduce time, the report shall state it,
because it alters the meaning of the result. The report records the additional
reconnaissance an external adversary would have required, and the detection window is read
against that figure.

### H1.3.5 Existing access

H1.3.5.1 Red team members frequently hold, or have held, legitimate access to internal
systems.

a. Red team members shall not hold standing privileged access to production systems.

b. An operator's own legitimate accounts shall not be used during an engagement.

c. Engagement access is separate, created for the purpose, recorded in the Rules of
Engagement, and removed at cleanup.

d. Where an operator previously administered a system in scope, that operator is excluded
from that part of the engagement.

## H1.4 Progression

H1.4.1 The following sequence is recommended for a capability commencing internal
assessment.

| Engagement | Scope | Starting posture | Covert | Execution |
|---|---|---|---|---|
| First | One service, one objective | Assumed breach, user workstation | Partially: the Trusted Agent and one senior member of the defensive element are aware | 5 days |
| Second | The same service, with an additional objective | Assumed breach, user workstation | Yes | 10 days |
| Third | Two services, identity focus | Assumed breach, user workstation | Yes | 10 days |
| Fourth | Full scope with exclusions | External and assumed breach in parallel | Yes | 15 days |

H1.4.2 The first engagement is only partially covert by design. Conducting the first
engagement fully covert means that the deconfliction procedure is first exercised on the
occasion when it matters. The procedure is proven while it is being observed.

## H1.5 Additional cessation criteria

H1.5.1 In addition to those at Chapter 8, paragraph 8.15.

a. Activity risks affecting a live operational commitment or mission task.

b. An internal element escalates to an external party.

c. Engagement activity is discussed in a forum that would compromise its confidentiality.

d. A member of personnel experiences significant distress as a result of engagement activity.

e. The independence of the Trusted Agent is compromised, including by reassignment into the
assessed element.

## H1.6 Conduct of the internal relationship

H1.6.1 The recurring difficulty in internal assessment is institutional rather than legal.
The red team continues to work alongside the element it assesses.

| Practice | Basis |
|---|---|
| Debrief the defensive element before command | The element shall not learn of a finding from a briefing to command |
| Conduct the technical debrief without command present | Per Annex F, paragraph F1.6.1 |
| Attribute success openly; deliver findings privately | Controls that functioned may be reported widely; failures are delivered to the owner |
| Admit the defensive element to purple team activity | Establishes the red team as a resource rather than an inspectorate |
| Do not characterise an engagement as a success for the red team | In any forum, including informally |
| Provide the activity record at culmination | Before the report. The element identifies its own gaps, which is a more effective form of instruction. |

---

# PART H2 — MANDATED ENGAGEMENT

> This category carries the greatest legal and institutional risk and is the least tolerant
> of procedural error. It shall not be undertaken until the procedures are established in
> practice and the legal framework at Annex G is confirmed.

## H2.1 The governing distinction

H2.1.1 In internal assessment, the organisation authorising the assessment owns the systems
assessed. In a mandated engagement it may not, and the authority to consent belongs to the
owner of the systems rather than to the body issuing the tasking.

```{.mermaid filename="annex-h-mandate"}
flowchart TB
    M["Mandate to conduct the assessment<br/>'Assess organisation X'<br/>From: the tasking authority"]
    S["Authority over the systems<br/>'Access to these systems is permitted'<br/>From: the body owning or operating them"]
    R{"Both are required"}
    W["Neither alone establishes the complete<br/>legal authority for access"]
    M --> R
    S --> R
    R --> W
```

**Figure H-1. Mandate and system authority**

H2.1.2 A tasking order from a chain of command does not of itself authorise access to
another organisation's systems, unless the instrument creating the mandate expressly confers
that power. The applicable position is established in writing before phase 1 completes. See
Annex G, paragraph G.2.4.

H2.1.3 Where the assessed organisation is a civil body, the exercise of authority over it is
legally and institutionally sensitive even where a mandate exists. The instrument shall be
identified by reference and confirmed by the legal adviser. The consent of the civil body
should be obtained wherever the mandate permits, even where it is not required. Consent
obtained produces cooperation; consent compelled removes it for every subsequent engagement.

## H2.2 Authority models

H2.2.1 The applicable model is determined and recorded in the Rules of Engagement.

| Model | Basis | Required |
|---|---|---|
| A. Statutory power | Law confers the authority to assess | The statutory reference, legal confirmation that it applies, and any notification the statute requires |
| B. Consent | The organisation agrees to be assessed | A signed agreement and a Letter of Authorisation from its own competent authority |
| C. Directed with consent | A superior authority directs the assessment and the organisation consents | Both the tasking instrument and the organisation's Letter of Authorisation |
| D. Directed without consent | A superior authority directs the assessment over the organisation's objection | Express legal authority, identified by reference, confirmed in writing by legal counsel, with the risk accepted in writing by the tasking authority |

H2.2.2 Model D shall not be accepted on assurance alone.

## H2.3 Additional requirements at phase 1

H2.3.1 In addition to gate G1 at Annex C, paragraph C.5.3.

1. The authority model is determined and recorded.
2. The legal instrument or agreement is identified by reference and reviewed by counsel.
3. The signatory's authority over the specific systems is verified, not assumed.
4. A written agreement allocates liability and records any indemnity required by counsel.
5. Non-disclosure obligations are executed in both directions.
6. The assessed organisation's Trusted Agent is appointed, named and briefed.
7. The assessed organisation's system owners have confirmed the exclusion list.
8. Third-party and hosting provider consent is obtained by the assessed organisation.
9. The controller and processor relationship for personal data is determined and recorded.
10. Cross-border implications are assessed.
11. Any sector notification obligation is discharged.
12. Deconfliction with any national or sector response body is agreed.
13. Classification and handling are agreed with the assessed organisation.
14. Ownership of the report, its distribution, and rights of onward disclosure are agreed in writing.
15. A mechanism for the resolution of disputes is agreed.

H2.3.2 Requirement 14 is routinely overlooked and routinely becomes contentious. It is
settled before execution: who owns the report, who may see it, whether the mandating
authority receives it, whether the assessed organisation may redact, and whether it may be
provided to a regulator.

## H2.4 Appointments across two organisations

| Appointment | Located in | Function |
|---|---|---|
| Representative of the mandating authority | The tasking organisation | Ensures the assessment is conducted in accordance with the mandate. In direct contact with the assessed organisation's Trusted Agent. |
| Approving Authority of the assessed organisation | The assessed organisation | Accepts the operational risk to its systems. Signs the Letter of Authorisation. |
| Trusted Agent | The assessed organisation | Controls the engagement. Holds the authority to suspend. |
| Red Team Lead | The assessing organisation | As at Annex A |
| Approving Authority of the assessing organisation | The assessing organisation | Authorises its own personnel to undertake the work |

H2.4.1 Two Approving Authorities exist and they authorise different matters. One authorises
access to the systems; the other authorises the personnel to conduct the work.

H2.4.2 The authority to suspend rests with the assessed organisation's Trusted Agent. It
rests neither with the assessing organisation nor with the mandating authority. The
organisation bearing the operational consequence holds the authority to stop.

## H2.5 Deconfliction between organisations

H2.5.1 The following apply in addition to Annex E, paragraph E.5.

a. The deconfliction line is answered by the Red Team Lead throughout the execution period.

b. The assessed organisation's Trusted Agent holds the number and the code word.

c. The response period is shorter than for internal assessment. The default is fifteen
minutes.

d. The assessed organisation's route of escalation to any external body is recorded in the
Rules of Engagement, and its Trusted Agent undertakes to deconflict before that route is
used.

e. Source addresses are provided to the Trusted Agent before execution.

f. A procedure exists for the case in which the assessed organisation escalates externally
before deconflicting.

H2.5.2 The Trusted Agent shall be briefed expressly that escalation to an external body
without deconfliction causes the engagement to cease and may initiate a genuine incident
procedure in another organisation.

## H2.6 Variations in execution

| Matter | Variation |
|---|---|
| Verification of scope | Every target is verified against the authorised space before contact. No institutional knowledge is available as a check. |
| Ambiguity | Ambiguity halts activity and is referred to the Trusted Agent. It is not resolved by the operator. |
| Data | The data belongs to the assessed organisation. Minimisation is a contractual obligation. |
| Storage of evidence | As required by the agreement, which may require storage within a particular jurisdiction |
| Personnel | Only personnel named in the Letter of Authorisation operate. Addition requires amendment of the letter. |
| Communication | All formal communication passes through the Trusted Agent, and never directly to the assessed organisation's technical staff. |

## H2.7 Variations in reporting

| Matter | Variation |
|---|---|
| Ownership | As agreed. The default is that the assessed organisation owns the report and the mandating authority receives a summary. |
| Two reports | Frequently required: a full report for the assessed organisation and a summary for the mandating authority. The content of the summary is agreed before execution. |
| Comparison | Where several organisations are assessed under one mandate, organisations shall not be identifiable in comparative reporting unless the mandate expressly requires it. Comparison between organisations removes cooperation permanently. |
| Remediation | Tracked but not owned. The reporting cadence to the mandating authority is agreed. |
| Retest | Included in the agreement, with its own funding and schedule. |

## H2.8 Matters raised by the assessed organisation

H2.8.1 The following are anticipated and answered.

| Question | Prepared answer |
|---|---|
| What qualifies the assessing team? | Credentials, the methodology, and the record of previous engagements |
| What follows if something is broken? | Cessation criteria, the position on liability, and the method of reversal |
| Who will see the report? | The agreed distribution, in writing |
| Will this be used against the organisation? | The purpose of the mandate and the non-punitive framing, in writing from the mandating authority |
| What data will be touched? | The rules on minimisation, prohibited proof, retention and destruction |
| Can the assessment be stopped? | Yes: unilaterally, at any time, without justification |
| What does the organisation receive? | Findings, detections, the retest, and its own activity record |

H2.8.2 The final row is of greater consequence than it appears. An organisation that regards
the engagement as extraction resists it. An organisation that regards it as a service
cooperates. The activity record and the purple replay are what constitute the service.

---

# PART H3 — EXERCISE

## H3.1 Distinction from an engagement

H3.1.1 Exercise red teaming resembles an engagement and is not one.

| | Engagement | Exercise |
|---|---|---|
| Purpose | Measure the defence and identify risk | Train the audience against stated learning objectives |
| Environment | Live systems | A range |
| Success | Objectives achieved, or the defence held | The audience learned |
| Adversary | Emulated for realism | Scripted for instruction |
| Pace | Weeks | Compressed to hours or days |
| Principal risk | Impact on production | Collapse of the exercise |

H3.1.2 In an engagement the red team optimises for realism. In an exercise it optimises for
the learning objectives. Where defeating the audience in the first hour prevents that
audience practising the skill it attended to practise, the red team has failed, whatever the
technical outcome.

## H3.2 Team structure

H3.2.1 Exercises use a broader structure than engagements. The green and yellow functions
are the most frequently omitted, and their absence is the ordinary reason an improvised
exercise degenerates into maintenance of the range.

```{.mermaid filename="annex-h-exercise-teams"}
flowchart TB
    WHITE["WHITE — Exercise control<br/>Scenario, injects, scoring, authority to adjust"]
    RED["RED<br/>Delivers the scenario"]
    BLUE["BLUE<br/>The training audience"]
    GREEN["GREEN<br/>Range infrastructure"]
    YELLOW["YELLOW<br/>Situational awareness<br/>and data collection"]
    WHITE --> RED
    WHITE --> BLUE
    WHITE --> GREEN
    WHITE --> YELLOW
    RED -->|acts against| BLUE
    GREEN -.->|sustains the range for| RED
    GREEN -.->|sustains the range for| BLUE
    YELLOW -.->|records| RED
    YELLOW -.->|records| BLUE
```

**Figure H-2. Exercise team structure**

H3.2.2 For any exercise larger than a single-day internal event, the green and yellow
functions shall be staffed separately from red and white. Assigning them as a secondary duty
guarantees that they are abandoned at the point they become necessary.

H3.2.3 Above six operators the red team is divided by attack surface: user-end device,
application, and network, with additional groupings for control systems or identity where
the scenario requires. Each has a lead. Below six operators the team is not divided.

## H3.3 The command element

H3.3.1 Mature exercises train the command element and not only the operators, on the
principle that in a real operation the constraint is ordinarily the speed and authority of
decision rather than technical capability.

| Level | Trains | Decisions |
|---|---|---|
| Political | Authority to act, thresholds for escalation, external communication | Whether to act; what may be disclosed |
| Strategic | Selection of objectives, allocation of resources, acceptance of risk | Which targets; what level of effect; when to stop |
| Tactical | Direction of operators, selection of technique, deconfliction | How the effect is achieved |

H3.3.2 Operators report upward and receive direction downward on a realistic timeline,
including realistic delay. The delay forms part of the training. An exercise in which
operators act immediately does not exercise the command element.

H3.3.3 Legal advisers participate as players. In a real operation legal constraint arrives
during the operation and not before it.

## H3.4 Design

H3.4.1 Design proceeds from the learning objectives.

a. State the learning objectives as observable behaviours.

b. Determine what the audience must do to demonstrate each.

c. Determine what the red team must present to create that opportunity.

d. Design the attack path to deliver those presentations at the appropriate time.

e. Construct the injects that guarantee the presentation occurs irrespective of red team
progress.

H3.4.2 Step e distinguishes a designed exercise from an improvised one. Where a learning
objective depends upon the audience observing a particular behaviour, that behaviour is
guaranteed by inject and is not left to whether the red team reaches it.

## H3.5 Pacing

| Principle | Application |
|---|---|
| Early success | The audience must succeed at something within the first hours |
| Deliberate escalation | Difficulty rises on the exercise control team's schedule, not on the red team's opportunity |
| Capability in reserve | Full capability is not employed at the outset |
| No decisive result | Total compromise early ends the exercise and the instruction with it |
| Deliberate visibility | The red team is more detectable than a real adversary; the audience attends to practise detection |
| Provision for stall | Where the audience falls behind, the red team slows, repeats a technique more visibly, or the exercise control team injects |

## H3.6 Injects

| Type | Purpose |
|---|---|
| Technical | Guarantee that a behaviour is presented |
| Informational | Simulate external input, such as intelligence reporting or a report from a partner |
| Pressure | Exercise decision-making, such as a media enquiry or a demand from command for an update |
| Escalation | Raise the stakes, such as effect upon a second service |
| Recovery | Permit the restore objective to be exercised |

## H3.7 Scoring and after-action review

H3.7.1 Scoring is against the learning objectives and not against red team achievement. The
scoring model is published to the audience before the exercise. Behaviours are measured:
detection, reporting, quality of decision, communication, containment. Scoring shall not
permit the failure of an element to be attributed to an individual.

H3.7.2 The after-action review is the product of the exercise.

| Stage | Timing | Content |
|---|---|---|
| Immediate review | Same day | First impressions, while recollection is current |
| Red team disclosure | Same or following day | The red team presents its full attack path with times |
| Reconciliation | Following day | Red actions against blue observations, step by step |
| Formal review | Within two weeks | Against the learning objectives, with actions |

H3.7.3 The red team disclosure is the session of greatest value. The audience observes what
was occurring while it was inferring. It is prepared with a timeline, a diagram, and the
answer to what would have detected each step.

## H3.8 Internally conducted exercises

H3.8.1 The minimum viable internal exercise comprises: one day; two operators; one white
team member holding the scenario, injects and the authority to stop; one green team member
who is not a red team member; one yellow team member or automated collection with a named
reviewer; the defensive element working from a range replica; not more than three learning
objectives; five to eight pre-written injects; and a two-hour review the same day.

H3.8.2 An exercise shall not be conducted against production systems. An exercise compresses
time, escalates by script, and deliberately provokes response. That combination against live
systems produces an incident.

## H3.9 Participation in external exercises

| Matter | Requirement |
|---|---|
| Rules | The exercise director's rules supersede these. They are read; they differ. |
| Records | The recording and conduct standards of this methodology continue to apply to the team's own activity |
| Classification | Exercise material is ordinarily restricted. What may be retained is confirmed. |
| Capture of learning | An appointment is designated to record techniques, tooling and lessons. This is the principal return on the investment. |
| Follow-up | Lessons are processed on pro forma T11 and the annexes and scenario library amended |

H3.9.1 Participation is treated as a training investment carrying a required deliverable,
being a written lessons pack, and not as attendance at an event.

---

# PART H4 — PURPLE TEAM

## H4.1 Basis for precedence

H4.1.1 Purple team activity is the category with which a new capability commences.

| Basis | |
|---|---|
| Product | A two-day exercise produces deployed detections. A covert engagement produces a report after eight weeks. |
| Risk | The defensive element is informed. Deconfliction is trivial. Nothing is mistaken for a genuine attack. |
| Relationship | The defensive element experiences the red team as a resource. Every subsequent covert engagement depends upon that. |
| Self-assessment | Deficiencies in the red team's own tooling, records and tradecraft are exposed without an audience. |
| Effect | Coverage increases measurably. |

## H4.2 Operating models

| Model | Description | Adopted |
|---|---|---|
| Exercise | Scheduled collaborative sessions | At the outset |
| Operationalised | Continuous, partly automated validation as a virtual team | Once a technique library exists and detections are stable |
| Dedicated | A permanently staffed function | Larger organisations only |

## H4.3 Appointments

| Appointment | Function |
|---|---|
| Exercise lead | Conducts the day, maintains pace, records results |
| Operator | Executes the technique and explains its effect |
| Analyst | Searches telemetry in real time |
| Detection engineer | Constructs and deploys the rule during the exercise |
| Threat intelligence | Selects techniques and provides adversary context |
| Recorder | Records results as they occur |

H4.3.1 All are present in the same location, or on the same call, at the same time.

## H4.4 Conduct

H4.4.1 The following sequence is followed for each technique.

```{.mermaid filename="annex-h-purple-cycle"}
flowchart LR
    subgraph PLAN["Preparation"]
        direction TB
        P1["Select adversary"] --> P2["Select 5 to 10 techniques"] --> P3["Confirm telemetry"] --> P4["Prepare the laboratory"]
    end
    subgraph EXEC["Per technique"]
        direction TB
        E1["1 Explain the technique"] --> E2["2 The analyst predicts what will be observed"]
        E2 --> E3["3 Execute"] --> E4["4 Hunt, time-bounded"]
        E4 --> E5["5 Compare and categorise the gap"] --> E6["6 Construct the rule"]
        E6 --> E7["7 Re-execute"] --> E8["8 Validate and record"]
        E8 -.->|next technique| E1
    end
    subgraph CLOSE["Closure"]
        direction TB
        C1["Consolidate results"] --> C2["Deploy detections"] --> C3["Record coverage"] --> C4["Schedule revalidation"]
    end
    PLAN --> EXEC --> CLOSE
```

**Figure H-3. Purple team sequence**

H4.4.2 Step 2 shall not be omitted. The difference between what the defensive element
expects to observe and what it observes is the instructive part of the exercise.

H4.4.3 Steps 6 to 8 are what constitute a purple team exercise rather than a demonstration.
An exercise concluding at step 5 has produced a list of gaps.

## H4.5 Record of results

H4.5.1 The recorder maintains the following during the exercise. It is the product.

| | Technique | Procedure | Predicted | Telemetry existed | Found by hunt | Alert existed | Gap category | Rule constructed | Validated |
|---|---|---|---|---|---|---|---|---|---|

H4.5.2 Gap categories are those at Annex F, paragraph F1.3.2.

## H4.6 Planning

| Matter | Standard |
|---|---|
| Frequency | Monthly. Consistency is of greater value than scale. |
| Duration | One to two days |
| Techniques | Five to ten. Fewer is not worth the coordination; more degrades quality. |
| Selection | From a threat profile. One tactic per exercise is effective. |
| Preparation | Every technique tested in the laboratory beforehand |
| Environment | Production, or an environment representative of it. A laboratory that does not correspond to production measures the laboratory. |
| Authorisation | Standing Rules of Engagement for purple team activity, with a scope note per exercise. The Letter of Authorisation remains required. |
| Product | Results table, deployed detections, updated coverage, technique list for the next exercise |

## H4.7 Annual sequence

H4.7.1 The following sequence is recommended for the first year.

| Month | Tactic | Basis |
|---|---|---|
| 1 | Execution | Foundational; establishes whether endpoint telemetry exists |
| 2 | Persistence | High detection value, low risk, straightforward to reverse |
| 3 | Credential Access | The tactic of highest value in most estates |
| 4 | Discovery | Inexpensive to detect and frequently missed entirely |
| 5 | Lateral Movement | The tactic in which most estates have least visibility |
| 6 | Stealth and Defense Impairment | Establishes whether existing detections survive contact, and whether interference with them is noticed |
| 7 | Command and Control | Validates network telemetry |
| 8 | Collection and Exfiltration | Connects to data protection concerns |
| 9 | Privilege Escalation | |
| 10 | Initial Access | Including social engineering |
| 11 | Impact | Destructive behaviours, emulated safely |
| 12 | Revalidation | Re-run months 1 to 4 and confirm the detections still operate |

H4.7.2 Month 12 is of greater consequence than it appears. Detections decay through platform
change, tuning and migration. A detection never revalidated is an assumption.

## H4.8 Purple replay

H4.8.1 The purple team exercise of greatest value is the one following a covert engagement,
conducted at phase 7.

a. Take the techniques that were not detected during the engagement.

b. Re-run them openly with detection engineering.

c. Construct detections against the procedure used, and not against a general description of
the technique.

d. Validate.

e. Record in the lessons for the engagement.

H4.8.2 Purple replay closes the interval between identifying a gap and correcting it. It is
budgeted as part of every engagement. An engagement without it is half delivered.

## H4.9 Limitations

H4.9.1 The following are stated in every purple team report, because they are routinely
overstated.

a. Purple team activity does not establish whether the defensive element detects an
unannounced attack. The element knew what would occur and when.

b. It does not assess response. Nothing was contained, escalated, or acted upon out of
hours.

c. It does not assess the full attack sequence. Techniques were executed in isolation or in
short chains, with the environment cooperating.

d. It does not assess decision-making. No person was required to decide whether to disconnect
a production service.

H4.9.2 Purple team activity produces detections. Red team engagements establish whether the
system as a whole functions. Both are required, and purple team activity comes first. A
programme conducting only purple team activity will hold well-constructed detection rules
and no knowledge of whether they are acted upon.

---
