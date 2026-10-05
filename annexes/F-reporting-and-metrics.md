# ANNEX F — REPORTING AND METRICS

Supporting Chapters 7 and 9 of the Red Team Methodology. Issued under the authority of the
Head of Red Team.

Part F1 covers reporting and debriefs. Part F2 covers measures and maturity.

---

# PART F1 — REPORTING AND DEBRIEF

## F1.1 Function of the report

F1.1.1 The report is the product of the engagement. It describes a sequence of events and
the response to that sequence. It is not an inventory of weaknesses.

F1.1.2 The report serves three readerships with different requirements.

| Readership | Requirement | Reads |
|---|---|---|
| Command and the Approving Authority | The exposure, and what requires resourcing | The summary |
| Security leadership | Which controls failed, in what order, and what is prioritised | Summary and findings |
| Engineers and the defensive element | What occurred, in sufficient detail to build a detection or correct a gap | Narrative, findings, appendices |

F1.1.3 All three are produced. The summary is not written for an engineer, and the
narrative is not written for command.

---

## F1.2 Structure

F1.2.1 The report is produced on pro forma T08 in the following structure.

| | Section | Content |
|---|---|---|
| 1 | Document control | Classification, version, distribution, references |
| 2 | Summary | Not exceeding two pages, and comprehensible in isolation |
| 3 | Method and objectives | The activity conducted; the capability level emulated; the objectives |
| 4 | Scenario and scope | Starting posture, adversary emulated, scope and exclusions, period |
| 5 | Attack narrative | The sequence of events, with critical steps and evidence |
| 6 | Detection and response | What the defensive element observed, when, and what followed |
| 7 | Technique coverage | Every technique: attempted, prevented or executed, telemetry, alert, investigation, containment and recovery |
| 8 | Findings | Each finding, including controls that functioned |
| 9 | Conclusion | Overall assessment and residual risk |
| 10 | Appendices | Timeline, activity record, indicators, evidence index, cleanup attestation |

### F1.2.2 The summary

F1.2.2.1 The summary states, in order:

a. what the engagement was required to determine;

b. what was conducted: the adversary emulated, the starting posture, the period;

c. what occurred: the outcome against each objective;

d. which controls functioned;

e. which did not, in order of consequence;

f. the three to five recommendations carrying the greatest reduction in risk;

g. the residual risk if no action is taken.

F1.2.2.2 Sub-paragraph d is mandatory. A report omitting the controls that functioned is
inaccurate and will be received as an attack upon the defensive element.

F1.2.2.3 The summary contains no technique identifiers, tool names or technical
terminology.

### F1.2.3 The attack narrative

F1.2.3.1 The narrative is chronological and composed of numbered critical steps. For each
step:

a. the step number and title;

b. the date and time in UTC;

c. the action taken, in plain language, with the technique named;

d. the intent;

e. the result;

f. the evidence reference;

g. the defensive observation.

F1.2.3.2 Sub-paragraph g is completed for every step, including where the answer is that no
signal was generated, or that an alert was generated but not examined within the period.
The presence of this line at every step is what distinguishes a red team report from a
penetration test report.

F1.2.3.3 Only steps of consequence appear in the narrative. The complete sequence of
actions appears in the appendix.

---

## F1.3 Detection and response

F1.3.1 This section is constructed from the reconciliation with the defensive element at
phase 6 and is the section that element will use. The action record and response record are
kept separate so that prevention, observability and response are not collapsed into one
score.

| Red action ID | Time, UTC | Attempt result | Telemetry | Alert | Investigation |
|---|---|---|---|---|---|

| Red action ID | First containment | Recovery completed | Timing evidence | Assessment |
|---|---|---|---|---|

F1.3.2 Coverage gaps are recorded in three categories. They carry different owners and
remediation paths; a single figure for detection coverage does not permit command to act.

| Category | Primary owner | Required action |
|---|---|---|
| No usable telemetry | Platform, identity or endpoint engineering | Establish or repair the source and validate data quality |
| Telemetry present, no effective detection | Detection engineering | Design and validate detection against replay |
| Alert generated, not examined in the required window | Defensive operations management | Correct priority, routing, capacity or procedure and re-exercise |

F1.3.3 The attack path hypotheses recorded at Annex D, paragraph D.6.3, are compared with
what occurred. Where the organisation predicted that a control would detect an action and it
did not, the difference is recorded as a finding.

---

## F1.4 Findings

### F1.4.1 Structure

F1.4.1.1 Each finding is recorded on pro forma T09 and states: identifier; title; severity;
category; the capability level at which it is reachable; affected assets; description; the
technique by which it was exploited; evidence reference; mission impact; root cause;
recommendation; detection opportunity; owner; target date; and method of retest.

F1.4.1.2 A finding is titled as a defect and not as an achievement.

F1.4.1.3 Two fields are consistently the weakest in immature reporting.

a. **Root cause.** A symptom restated is not a root cause. The absence of a compensating
control, because ownership of a class of account was never assigned, is a root cause. A weak
password policy is a symptom. Correction of symptoms reproduces the finding at the next
engagement.

b. **Detection opportunity.** Not every weakness can be prevented at acceptable cost. Every
finding that cannot be prevented economically shall carry a detection recommendation, so
that the defensive element has an available action while the structural correction is
scheduled.

### F1.4.2 Controls that functioned

F1.4.2.1 Every report shall record the controls that prevented, delayed or detected
activity; the detections that operated correctly; the response actions that were correct and
timely; and the design decisions that constrained the engagement.

F1.4.2.2 This is required for two reasons. It is accurate, and a report omitting it is not.
It is also the only mechanism by which an organisation establishes which of its investments
are effective.

### F1.4.3 Reference to personnel

F1.4.3.1 Findings describe appointments and procedures. Individuals are not named.

F1.4.3.2 No material shall be included that could support disciplinary or administrative
action.

F1.4.3.3 Social engineering results are reported as rates. Individual results are not
reported.

F1.4.3.4 Human factors are recorded as procedural or training matters. A person who
responded to a well-constructed approach under time pressure has demonstrated a gap in the
control that permitted the approach to arrive.

---

## F1.5 Severity

F1.5.1 Severity is a function of mission impact and of exploitability in the environment
assessed. It is not derived from a published vulnerability score.

| Severity | Meaning | Expectation |
|---|---|---|
| Critical | Directly enables loss of a critical service, compromise of a substantial data holding, or administrative control of the estate, achievable by the emulated adversary without significant obstacle | Days |
| High | Enables significant compromise, or constitutes a major step toward an objective, achievable with moderate effort | Weeks |
| Medium | Contributes to an attack path but requires further conditions; or a detection gap for a significant technique | Next planning cycle |
| Low | Minor weakness or hardening opportunity; or a detection gap for a technique of limited value | Backlog |
| Informational | No direct risk. Observation of interest. | Awareness |

F1.5.2 Severity is assessed by the red team and may be disputed by the assessed
organisation. A dispute is recorded in the report with both positions stated. Severity shall
not be amended without record.

F1.5.3 Severity is read against the capability level emulated. A finding reachable at level
1 is more urgent than the same finding reachable only at level 3, because a greater number
of adversaries can reach it. The level is stated in the report.

---

## F1.6 Debriefs

### F1.6.1 Technical debrief

F1.6.1.1 Held with the operators, the defensive element, detection engineering and the
relevant system owners, before the report is issued. Two to four hours.

F1.6.1.2 The narrative is walked chronologically. At each step the defensive element states
what was observed, and the actual sequence is then presented.

F1.6.1.3 The following apply.

a. Command is not present. The defensive element must be able to state that an action was
not observed, without consequence.

b. No individual is identified. The facilitator enforces this.

c. Detection engineering attends with access to its query interface and constructs the first
detection during the debrief.

d. Actions are recorded with owners.

F1.6.1.4 The greater part of the value of an engagement is transferred at this debrief, and
the report becomes more accurate as a result. The defensive element frequently holds
telemetry of which the red team was unaware, which alters findings.

### F1.6.2 Command brief

F1.6.2.1 Held with the Approving Authority, security leadership and the relevant capability
owners, with or shortly after the report. Thirty to forty-five minutes.

F1.6.2.2 Sequence: the question the engagement was required to answer; what was conducted;
what occurred; which controls functioned; which did not, in order; the recommendations and
their cost; the decisions required.

F1.6.2.3 The following apply.

a. Mission impact is stated before technique.

b. One attack path diagram is presented.

c. Live demonstration is not conducted. It displaces the question of what is to be
corrected.

d. The brief concludes with the decisions required of the audience.

---

## F1.7 Distribution and handling

F1.7.1 The report carries the classification of the most sensitive material it references.

F1.7.2 The distribution list is defined in the Rules of Engagement and states named
individuals or named appointments.

F1.7.3 Reports are distributed encrypted or through a controlled platform.

F1.7.4 The defensive element receives the activity record at culmination and the report
after the engagement closes.

F1.7.5 Retention is as set in the Rules of Engagement, followed by destruction and a
certificate. Reports are not released outside the distribution list without the approval of
the Approving Authority.

---

## F1.8 Remediation and retest

F1.8.1 The red team advises on remediation. It does not implement. It does track.

| Stage | Owner | Standard |
|---|---|---|
| Finding entered in the risk register | Trusted Agent | Within 10 working days of issue |
| Owner and target date assigned | System owner | Within 10 working days |
| Remediation implemented | System owner | Per the severity expectation |
| Completion notified | System owner | To the red team |
| Retest | Red team | Within 20 working days of notification |
| Closure | Red team | Only following a passed retest |

F1.8.2 A finding is closed by a passed retest and not by the closure of a task.

F1.8.3 Where the organisation elects not to remediate, the decision is recorded as a formal
acceptance of risk, signed by the Approving Authority, with a review date. The finding
remains open.

---

## F1.9 Verification before issue

F1.9.1 The Reviewing Officer confirms the following before the report is issued.

1. The summary is comprehensible in isolation, does not exceed two pages, and is free of technical terminology.
2. Every claim is traceable to referenced evidence.
3. Controls that functioned are recorded.
4. Every narrative step carries a defensive observation.
5. Coverage gaps are recorded in the three categories at paragraph F1.3.2.
6. No individual is identified.
7. No credential, token, key or bulk sensitive data appears anywhere, including appendices.
8. Screenshots are redacted and carry a visible time reference.
9. Severity assessments are internally consistent.
10. Every finding states a root cause and not a restated symptom.
11. Every finding has an owner, a target date and a method of retest.
12. Findings that cannot be prevented economically carry a detection recommendation.
13. The capability level emulated is stated.
14. The activity record and cleanup attestation are attached.
15. Classification and distribution are correct.
16. The Reviewing Officer did not execute the engagement.
17. Evidence identifiers, hashes and repository references reconcile with the evidence index.
18. Measures state their sample, exclusions, missing or censored observations, and data limitations.

---

# PART F2 — MEASURES AND MATURITY

## F2.1 Principle

F2.1.1 The red team is an instrument of measurement. Its effectiveness is judged by the
improvement of the defence and not by its own performance during engagements.

F2.1.2 Measures expressed in terms of red team achievement produce three effects: a red team
rewarded for success selects easier targets; a defensive element penalised for failure
conceals incidents and disputes findings; and command receives a score rather than an
assessment of risk. The prohibition is at paragraph 3.7 of the methodology.

---

## F2.2 Measures recorded per engagement

### F2.2.1 Timing

| Measure | Definition |
|---|---|
| Time to telemetry | Defined red action start event to the first usable defensive event attributable to it |
| Time to alert | Defined red action start event to the first alert attributable to it |
| Time to examination | Alert creation to the first evidenced analyst examination |
| Time to respond | First evidenced analyst examination to the first effective containment action |
| Time to contain | Defined red action start event to evidenced removal of the assessed adversary access |
| Time to recover | First containment action to restoration of the affected service or control to the agreed state |
| Presence | Initial access event to evidenced removal of the assessed adversary access |

F2.2.1.1 The start and end event for each timing measure is defined before execution. These
are recorded by action or technique and not only for the engagement as a whole. A single
figure conceals the distinction between a technique detected promptly and one not detected
at all.

F2.2.1.2 An event not observed before the end of the measurement window is reported as not
observed or right-censored, with the window stated. It is not recorded as zero and is not
silently omitted. A summary states the count, sample size, median and range and identifies
censored observations. A mean is used only where the distribution and sample size make it
meaningful, and never without the sample size.

### F2.2.2 Coverage

| Measure | Definition |
|---|---|
| Attempt status | Planned techniques attempted, not attempted or substituted, with reason |
| Prevention | Attempted techniques blocked before the intended effect, divided by techniques attempted |
| Execution | Attempted techniques achieving the intended technical effect, divided by techniques attempted |
| Telemetry | Executed or blocked actions producing usable telemetry, divided by applicable actions |
| Detection | Applicable actions generating a relevant alert, divided by applicable actions |
| Examination | Alerts examined, divided by alerts generated |
| Containment | Executed actions effectively contained within the agreed window, divided by executed actions requiring containment |
| Recovery | Containment cases restored to the agreed state, divided by cases requiring recovery |
| Gap profile | Distribution across the three categories at paragraph F1.3.2 |

F2.2.2.1 Every ratio states its numerator, denominator, exclusions and count. A technique
is not counted as a detection opportunity where the planned action was not attempted, was
substituted, or was blocked before the relevant signal could exist. Prevention, telemetry,
alerting, investigation, containment and recovery are distinct control outcomes.

### F2.2.3 Outcome and remediation

| Measure | Definition |
|---|---|
| Objectives achieved and prevented | By objective, with the route or the control concerned |
| Controls that engaged | Controls that prevented, delayed or detected activity |
| Findings by severity | Distribution |
| Closure | Findings closed by retest, divided by findings raised |
| Time to closure | Median days from issue to verified correction, by severity |
| Recurrence | Findings reappearing at a subsequent engagement |

F2.2.3.1 Recurrence requires a documented basis of comparison. A similar title is not
sufficient: the control objective, affected environment, attack condition and expected
correction are considered. A finding is reported as untested where a later engagement did
not exercise the corrected condition.

### F2.2.4 Social engineering

F2.2.4.1 Recorded as rates. Individual results are not recorded.

| Measure | Significance |
|---|---|
| Delivery rate | Campaign-specific evidence of filtering and delivery; not a general gateway score |
| Engagement rate | Proportion of recipients taking the defined interaction, with automated and duplicate activity excluded |
| Submission rate | Proportion of recipients reaching the defined submission event; real credentials are not required |
| Reporting rate | Proportion of recipients reporting the approach |
| Time to first report | Delivery to the first report by a recipient |

F2.2.4.2 The reporting rate and the time to first report are the significant figures. A
substantial engagement rate accompanied by prompt and widespread reporting indicates that
the approach was contained by personnel. A low engagement rate with no reporting does not.
The denominator, duplicate handling, automated security-tool interactions, delivery
failures and measurement window are stated.

### F2.2.5 Measure specification and data quality

F2.2.5.1 Each reported measure has a specification approved at Gate G3. The specification
records:

a. measure identifier, decision or objective served, and accountable owner;

b. definition, unit, numerator and denominator or start and end events;

c. source systems, collection method, measurement window and frequency;

d. inclusion, exclusion and substitution rules;

e. target or expected range and the rationale for it, where a target is useful;

f. sample size, missing data, censored observations and known uncertainty;

g. validation method, reviewer and date;

h. applicable environment, scenario, threat profile and ATT&CK release; and

i. retention, classification and reporting format.

F2.2.5.2 The Red Team Lead and the defensive data owner reconcile timestamps, action IDs
and source records before calculation. Manual adjustments remain visible and attributable.
A measure that fails its stated quality threshold is reported with the limitation or is
withheld; it is not presented as precise.

F2.2.5.3 Targets are locally approved and risk-based. They are not imported from another
organisation without establishing that the service, threat, measurement window and data
quality are comparable. Measures are reviewed for incentives: a measure shall not reward
noise, superficial rule creation, premature ticket closure or avoidance of difficult tests.

---

## F2.3 Programme measures

F2.3.1 Recorded across engagements and reported quarterly.

| Measure | Direction sought |
|---|---|
| Validated detection coverage for comparable actions | Improving toward the locally approved risk-based target |
| Time to alert, examination, containment and recovery for comparable actions | Improving toward the locally approved risk-based target |
| Closure by passed retest | Improving toward the locally approved risk-based target |
| Time to verified closure by severity | Improving, subject to risk and remediation complexity |
| Validated recurrence | Decreasing, with untested corrections shown separately |
| Defensive improvements verified by replay or retest | Increasing in effectiveness, not merely in count |
| Findings accepted rather than corrected | Monitored. A rising proportion indicates findings that cannot be acted upon, or disagreement with the severity assessed. |
| Engagements requested rather than directed | Increasing |

F2.3.2 No single measure is the universal indicator of programme effectiveness. Validated
recurrence is important where a correction has genuinely been retested. Other required
views are mission-risk reduction, response improvement, verified remediation, breadth of
risk coverage and the quality of the underlying evidence.

F2.3.3 Trends combine only comparable observations. The quarterly report states material
changes in scope, threat, procedure, defensive architecture, measurement window, ATT&CK
release and data source. Where comparability is weak, results are presented as separate
case evidence rather than as a trend line.

---

## F2.4 Quarterly report

F2.4.1 One page, submitted to the Approving Authority, covering:

a. engagements conducted during the quarter, one line each;

b. coverage across comparable engagements, or separate case results where comparison is not valid;

c. the gap profile with owners;

d. findings raised, closed, overdue and accepted;

e. any recurrence, and its cause;

f. defensive improvements attributable to red team activity;

g. decisions required.

F2.4.2 Sub-paragraph f is recorded from the outset. Attribution of those improvements is not
made elsewhere.

---

## F2.5 Maturity

F2.5.1 Maturity is assessed annually across four domains at three levels.

### F2.5.2 Programme

| Level | Criteria |
|---|---|
| 1 Defined | Aim and objectives documented and approved. Engagements recorded. Findings tracked. A programme exists. |
| 2 Managed | The wider organisation understands the function. Engagements produce consistent tactical improvement. Measures reported on a cycle. |
| 3 Optimised | Engagements selected against the organisation's principal risks. Outputs influence resourcing decisions. |

### F2.5.3 Personnel

| Level | Criteria |
|---|---|
| 1 Defined | Appointments documented. Capability partly dependent on external support. |
| 2 Managed | Internal expertise in the technology actually in use. A skills matrix and training plan exist. |
| 3 Optimised | Specialists across disciplines, with the ability to draw in domain expertise by design rather than by necessity. |

### F2.5.4 Process

| Level | Criteria |
|---|---|
| 1 Defined | Rules of Engagement for every engagement. Lifecycle and gates observed. |
| 2 Managed | Threat profiles drive scenarios. Engagements planned against a calendar. Legal integrated into planning. Retest cycle operating. |
| 3 Optimised | Engagements selected in the context of principal risks. Full technique mapping and coverage measurement. Purple replay integrated as standard. |

### F2.5.5 Technology

| Level | Criteria |
|---|---|
| 1 Defined | Established tooling. Manually constructed infrastructure. Manual records. |
| 2 Managed | Automated infrastructure deployment. Automatic operator and infrastructure records. Laboratory environment for technique testing. |
| 3 Optimised | Custom capability where the threat profile requires it. Automated reporting and evidence collection. |

F2.5.6 Level 1 across all four domains constitutes a functioning capability. Level 2 is a
legitimate destination.

F2.5.7 The technology domain shall not be advanced beyond level 1 before the process domain
has reached level 2. Custom capability in an organisation without an established retest
cycle does not improve defensive outcomes, and is the most common misallocation of effort in
this field.

---
