# ANNEX C — ENGAGEMENT LIFECYCLE

Supporting Chapter 7 of the Red Team Methodology. Issued under the authority of the Head of
Red Team.

---

## C.1 The eight phases

C.1.1 Every engagement follows the phases below. Small engagements compress phases in
accordance with paragraph C.12. No phase is omitted.

```{.mermaid filename="annex-c-lifecycle"}
flowchart TB
    subgraph TOP[" "]
        direction LR
        P0["0<br/>Demand and<br/>qualification"] -->|G0| P1["1<br/>Initiation and<br/>authorisation"]
        P1 -->|G1| P2["2<br/>Threat<br/>intelligence"]
        P2 -->|G2| P3["3<br/>Planning and<br/>preparation"]
    end
    subgraph BOTTOM[" "]
        direction RL
        P4["4<br/>Execution"] -->|G4| P5["5<br/>Culmination<br/>and cleanup"]
        P5 -->|G5| P6["6<br/>Reporting<br/>and debrief"]
        P6 -->|G6| P7["7<br/>Remediation<br/>and retest"]
    end
    TOP -->|G3| BOTTOM
    BOTTOM -.->|G7| TOP
    style TOP fill:transparent,stroke:transparent
    style BOTTOM fill:transparent,stroke:transparent
```

**Figure C-1. Phases and gates**

C.1.2 Each phase concludes at a gate. A gate is a decision by a named appointment, which
either passes the engagement forward or returns it. A gate passed with criteria unmet
produces an engagement that fails visibly.

C.1.3 Gate G1 is absolute. Every other gate may be passed with a recorded risk.

---

## C.2 Timescales

C.2.1 The following are planning figures for a scoped internal engagement.

| Phase | Elapsed | Effort |
|---|---|---|
| 0 Demand and qualification | 2 to 5 days | Low |
| 1 Initiation and authorisation | 5 to 10 days | Governed by signature |
| 2 Threat intelligence | 5 to 10 days | May overlap phase 1 |
| 3 Planning and preparation | 5 to 10 days | High |
| 4 Execution | 10 to 20 working days | Full |
| 5 Culmination and cleanup | 2 to 3 days | Moderate |
| 6 Reporting and debrief | 5 to 10 days | High |
| 7 Remediation and retest | 30 to 90 days | Periodic |
| Demand to delivery of report | 6 to 9 weeks | |

C.2.2 Execution constitutes less than half of an engagement. A requirement expressed as a
two-week engagement is a six-week engagement containing two weeks of execution.

C.2.3 Phase 6 shall not be compressed to meet a date. A report delivered late is
recoverable; a report that is inaccurate is not.

---

## C.3 Alignment with recognised frameworks

C.3.1 The phase structure follows that of the established frameworks, expanded so that each
decision point has a named owner. Recorded here so that the methodology may be defended to
an auditor or an assessed organisation.

| Phase | TIBER-EU | NIST SP 800-115 | Vest and Tubberville |
|---|---|---|---|
| 0 Demand and qualification | Preparation, initiation | Planning | Engagement planning |
| 1 Initiation and authorisation | Preparation, scoping | Planning | Engagement planning |
| 2 Threat intelligence | Testing, threat intelligence | Discovery | Threat planning |
| 3 Planning and preparation | Testing, red team planning | Discovery | Engagement planning |
| 4 Execution | Testing, red team testing | Attack | Engagement execution |
| 5 Culmination and cleanup | Closure | Attack | Engagement culmination |
| 6 Reporting and debrief | Closure, reporting and purple teaming | Reporting | Engagement reporting |
| 7 Remediation and retest | Closure, remediation plan | Reporting | Not addressed |

C.3.2 Two departures are deliberate. Demand is separated from initiation so that declining
an engagement is a recorded decision with a stated basis. Remediation and retest is
constituted as a phase rather than as subsequent activity; its omission is the most common
reason a programme produces no improvement.

C.3.3 Sources are at Annex K.

---

## C.4 Phase 0 — Demand and qualification

C.4.1 **Purpose.** To determine whether the engagement should proceed and whether red
teaming is the correct instrument.

C.4.2 **Activities.**

a. Record the request on pro forma T01.

b. Identify the mission or service at risk, and then the systems supporting it. The
sequence is not reversed.

c. Establish the decision the result will inform. Where no answer is available, the
engagement does not proceed.

d. Select the instrument, per paragraph 4.3 of the methodology.

e. Conduct the applicability check at Annex I where the scope may include a specialised
environment.

f. Apply the preconditions at paragraph 4.5 of the methodology.

g. Estimate effort, cost and risk. Identify candidates for Approving Authority and Trusted
Agent.

C.4.3 **Gate G0**, decided by the Head of Red Team. The following shall be satisfied.

1. A named mission or service is identified.
2. The customer has stated the decision the result will inform.
3. Red teaming is the correct instrument.
4. The preconditions are met, or a lower-intensity alternative is proposed.
5. A candidate Approving Authority holding sufficient authority exists.
6. The legal entities and candidate System Authorities for the proposed target space are
   identified.
7. Material providers and third parties are identified and direct permission appears
   obtainable.
8. The establishment has capacity, separation and the necessary skills, or a plan to obtain
   them.

C.4.4 **Outputs.** Completed request; decision to accept or decline, with the basis
recorded. A declined engagement shall be recorded with its basis and the alternative
recommended.

---

## C.5 Phase 1 — Initiation and authorisation

C.5.1 **Purpose.** To establish verified authority, legal review, boundaries and safety
controls before any target interaction.

C.5.2 **Activities.**

a. Appoint the Approving Authority and Trusted Agent in writing; identify and verify every
System Authority whose consent is required.

b. Conduct the scoping conference with the Trusted Agent, System Authorities and system
owners.

c. Define one to three objectives, each with a method of verification and a standard of
evidence.

d. Draft the Rules of Engagement on pro forma T02, with all appendices.

e. Positively identify the authorised outer boundary and obtain consent from the competent
System Authority. Obtain the exclusion list from the assessed organisation and confirmation
from the owner of each excluded system.

f. Obtain legal review of the authorisation chain, data protection, third-party terms and
any social engineering constraint.

g. Complete the applicability and provider/third-party permission registers and obtain
direct consent or provider approval where required.

h. Obtain signature on the Letter of Authorisation, pro forma T10.

i. Verify every contact by telephone.

j. Obtain written confirmation from each operator that the Rules of Engagement have been
read.

C.5.3 **Gate G1**, decided by the Approving Authority. The following shall be satisfied.

1. Rules of Engagement are complete, verified against Annex B paragraph B.9, and signed.
2. The Letter of Authorisation is signed by every required System Authority and
   countersigned by the Approving Authority where operational risk authority differs.
3. Legal review is complete and recorded.
4. The authorised outer boundary is positively identified; third-party consent and provider
   permission are evidenced where required.
5. Exclusions clarify that boundary and are confirmed by the owner of each excluded system.
6. The contact list has been verified by telephone within the preceding twenty-four hours.
7. The deconfliction procedure and code word are agreed by both parties.
8. Every operator has confirmed in writing that the Rules of Engagement have been read.
9. Where Annex I applies, its phase 1 additions are satisfied.

C.5.4 **Outputs.** Signed Rules of Engagement; signed Letter of Authorisation; verified
contact list; record of legal review.

C.5.5 Activity conducted before gate G1 is unauthorised activity.

---

## C.6 Phase 2 — Threat intelligence

C.6.1 **Purpose.** To establish which adversary is emulated and on what basis.

C.6.2 **Activities.**

a. Review the threat landscape: which adversaries realistically threaten the assessed
organisation, given its sector, geography, mission, technology and the current situation.

b. Select one primary adversary, and optionally one secondary. Record the basis for the
selection against current reporting.

c. Produce the threat profile on pro forma T03, to the standard at Annex D.

d. Conduct target reconnaissance within the authorised bounds.

e. Report any exposure representing immediate critical risk to the Trusted Agent at once.
Such matters shall not be held for the report.

f. Derive three to five attack path hypotheses from the starting posture to each objective.

C.6.3 **Gate G2**, decided by the Red Team Lead and endorsed by the Trusted Agent.

1. The adversary is named and the selection justified against current reporting.
2. The threat profile is complete and mapped to MITRE ATT&CK.
3. Reconnaissance remained within authorised bounds.
4. Critical exposures identified during reconnaissance have been reported.
5. Not fewer than three attack path hypotheses reach at least one objective.
6. Source reliability, information confidence, disagreements, limitations and the
   intelligence cut-off date are recorded.
7. The ATT&CK release and verification date are recorded.
8. Stable source, scenario, objective, action and flow identifiers establish the golden
   thread into the plan.
9. The capability level is agreed and recorded.

C.6.4 **Outputs.** Threat profile; attack surface report; attack path hypotheses.

---

## C.7 Phase 3 — Planning and preparation

C.7.1 **Purpose.** To achieve readiness before the environment is entered.

C.7.2 **Activities.**

a. Produce the engagement plan on pro forma T04.

b. Build, test and verify the engagement infrastructure to the standard at Annex D
paragraph D.7.

c. Test every tool in a laboratory environment representative of the target.

d. Establish the artefacts and network signature each technique produces.

e. Establish the evidence repository; synchronise all systems to Coordinated Universal Time;
and record the observed clock offset against the approved time source.

f. Complete the operational risk assessment: for each technique, the credible failure
modes, likelihood, impact, mitigation, method of reversal, and means of detecting harm.

g. Test the deconfliction channel by placing a live call to the Trusted Agent.

h. Produce the cleanup and restoration plan covering every planned modification, command
and control deactivation, scope and date kill switches, credentials and secure channels, and
the treatment of backups or snapshots that may later restore test artefacts.

i. Confirm with system owners that applicable backup and restoration arrangements are
available, and identify the person able to restore each in-scope critical service.

j. Complete and recheck the provider and third-party permission register at Annex G,
paragraph G.2.5.

k. Conduct the briefing for all personnel cleared to know.

l. Approve a specification for every reported measure, including event definitions or
numerator and denominator, source, window, exclusions, censoring, validation and
limitations.

m. Define the evidence identifier convention, approved hash algorithm, original repository,
working-copy area and any chain-of-custody requirement.

C.7.3 **Gate G3**, decided by the Red Team Lead.

1. The engagement plan is complete and briefed to all operators.
2. Infrastructure is built, tested, inventoried, and its decommissioning documented.
3. Every tool and technique has been tested in the laboratory.
4. The evidence repository is ready; all systems are synchronised to UTC; clock offset is
   within the locally approved tolerance and recorded.
5. The operational risk assessment is complete, with means of reversal recorded.
6. The deconfliction channel has been tested by live call.
7. A cleanup and restoration plan exists for every planned modification and residual
   mechanism, including backup or snapshot restoration.
8. All activity can be suspended within fifteen minutes of instruction.
9. System owners have confirmed backup and restoration readiness where system state may be
   affected.
10. Provider policies and third-party permissions have been rechecked and remain valid for
    the planned source, target, services, activity and dates.
11. Every reported measure has an approved specification and data-quality rule.
12. Evidence identification, provenance, hashing, original preservation and working-copy
    controls are ready and tested.

C.7.4 **Outputs.** Engagement plan; built infrastructure; risk assessment; tested
communications.

---

## C.8 Phase 4 — Execution

C.8.1 **Purpose.** To conduct the scenario within the Rules of Engagement and generate
evidence.

C.8.2 Execution proceeds through the three stages at paragraph 7.8 of the methodology.
Standing instructions are at Chapter 8. Detailed standards are at Annex E.

C.8.3 **Daily routine.**

| Point | Activity |
|---|---|
| Commencement | Internal conference: position, intent for the day, risks |
| Continuous | Operator records made at the time of the action |
| Continuous | Evidence captured at the point of discovery |
| Close of day | Reconciliation of operator records against infrastructure and session records |
| Close of day | Update of the attack diagram |
| Close of day | Situation report to the Trusted Agent on pro forma T06 |

C.8.4 A day on which no situation report is submitted is treated as a loss of contact and
engages the procedure at Annex E paragraph E.6.

C.8.5 **Continuous verification.** Before each significant action the operator establishes
that the target is within the authorised space and outside the exclusions; that the action
is authorised; that its effect is understood and reversible; and that it is recorded. A
negative answer to any of these requires the operator to cease and consult.

C.8.6 **Gate G4**, decided jointly by the Red Team Lead and the Trusted Agent.

1. Objectives are achieved, or the agreed period has expired.
2. All activity remained within the Rules of Engagement, with any departure recorded and
approved.
3. Operator records are complete and reconcile with infrastructure and session records.
4. Evidence for each claimed finding is captured and verified.
5. Every modification is recorded in the cleanup register.

C.8.7 **Outputs.** Operator records; evidence; situation reports; deconfliction records;
attack diagram.

C.8.8 Objectives not achieved is a legitimate outcome indicating that the defence held. It
is reported with the same rigour as achievement, recording which control prevented which
technique.

---

## C.9 Phase 5 — Culmination and cleanup

C.9.1 **Purpose.** To return the target environment and engagement infrastructure to the
agreed state and secure the evidence.

C.9.2 **Activities.**

a. Cease operations at the appointed time and confirm that all operators have done so.

b. Reverse every modification recorded in the cleanup register, pro forma T12: implants,
persistence, accounts, group memberships, delegations, keys, configuration, access control,
uploaded files and data written to demonstrate access.

c. Verify each item by a second person. Any item that cannot be reversed is transferred in
writing to a named owner and remains open.

d. Deactivate command and control; verify scope and date kill switches; then decommission
infrastructure after preserving its records.

e. Remove, revoke, rotate or restore test accounts, credentials, tokens, keys, certificates
and secure communication channels as agreed with their owners.

f. Identify backups, snapshots, images and recovery media that may contain test malware,
tooling, persistence or modified configuration. Give their owners a written procedure and
tracking reference preventing unsafe future restoration.

g. Consolidate evidence; calculate or verify cryptographic hashes; preserve originals and
source references; and apply retention, access and classification controls.

h. Destroy captured credential material that is not required for an authorised retention
purpose, and record destruction. Credentials still valid in the target are reset or rotated
by their owner.

i. Monitor for late callbacks or other residual test activity for the period stated in the
plan, and route any detection immediately to the Trusted Agent.

j. Conduct the internal review within forty-eight hours.

k. Provide the Trusted Agent with the timestamped record of all red team activity, including
source addresses, for reconciliation against defensive telemetry.

C.9.3 **Gate G5**, decided by the Trusted Agent.

1. Every item in the cleanup register is reversed and verified by a second person.
2. Items that could not be reversed are transferred in writing to a named owner.
3. Command and control is deactivated, kill switches are verified, and infrastructure is
   decommissioned after its records are preserved.
4. Test accounts, credentials, tokens, keys, certificates and secure channels are removed,
   revoked, reset, rotated or restored and verified.
5. Backup and snapshot owners have accepted a tracked future-restoration procedure where
   required.
6. The evidence repository is consolidated, cryptographically integrity-verified,
   classified and access-controlled.
7. Captured credential material is destroyed where required and destruction is recorded.
8. The residual-activity monitoring period is complete, or has a named owner and end date.
9. The activity record has been delivered to the Trusted Agent.
10. The internal review has been held.

C.9.4 **Outputs.** Signed cleanup register; activity record; consolidated evidence.

C.9.5 This phase is frequently curtailed. Forgotten persistence, live accounts and
infrastructure outliving the engagement are the most consequential failures the capability
can produce, and are ordinarily discovered by another party.

---

## C.10 Phase 6 — Reporting and debrief

C.10.1 **Purpose.** To convert activity into decisions. The standard is at Annex F.

C.10.2 **Activities.**

a. Reconstruct the timeline from operator, infrastructure and tool records.

b. Reconcile against defensive telemetry with the defensive element: for each red action,
what was observed, when, and what action followed. This cannot be established from the red
team's records alone.

c. Draft the attack narrative.

d. Draft findings on pro forma T09, including controls that functioned.

e. Finalise the attack diagram.

f. Obtain review by an appointed Reviewing Officer who did not execute.

g. Conduct the technical debrief with the defensive element.

h. Deliver the command brief.

i. Issue the report on pro forma T08.

C.10.3 **Gate G6**, decided by the Red Team Lead following review.

1. Every claim is supported by referenced evidence.
2. Reconciliation against defensive telemetry is complete.
3. Controls that functioned are reported alongside those that did not.
4. No individual is identified in a manner supporting disciplinary action.
5. No credential, token, key or bulk sensitive data appears in the report or its appendices.
6. Severity assessments are consistent with the model at Annex F.
7. Every finding has an owner, a recommendation and a method of retest.
8. The Reviewing Officer has signed.

C.10.4 **Outputs.** Report; command brief; technical debrief; findings with owners.

---

## C.11 Phase 7 — Remediation and retest

C.11.1 **Purpose.** To establish that the organisation has improved.

C.11.2 **Activities.**

a. Transfer findings to the organisation's risk register with owners and dates.

b. Advise on remediation. The red team advises and does not implement; implementation of
its own recommendations removes its independence.

c. Conduct purple replay of the techniques that were not detected, with the detection
engineering function, so that detections are built against the procedure used rather than
against its description. See Annex H part H4.

d. Retest critical and high findings once remediation is claimed.

e. Record lessons on pro forma T11, for the assessed organisation and for the red team.

f. Amend the annexes, technique library and scenario library as required.

C.11.3 **Gate G7**, decided by the Approving Authority.

1. All findings are recorded in the organisational risk register with owners and dates.
2. Critical and high findings have been retested and verified.
3. Detections exist for the principal techniques employed.
4. Lessons are recorded for both parties.
5. The annexes and libraries are amended.

C.11.4 **Outputs.** Retest record; detections; lessons; amendments.

C.11.5 A finding is closed by a passed retest and not by the closure of a task. Where the
organisation elects not to remediate, that decision is recorded as a formal acceptance of
risk signed by the Approving Authority with a review date. The finding remains open.

---

## C.12 Compression

C.12.1 A purple team exercise or micro-engagement does not require the full sequence. The
following compressions are permitted.

| Phase | Full engagement | Compressed |
|---|---|---|
| 0 | Formal request and gate | Recorded decision of one paragraph |
| 1 | Full Rules of Engagement and Letter of Authorisation | Standing Rules of Engagement for purple team activity, with a scope note per exercise. The Letter of Authorisation remains required. |
| 2 | Full threat profile | Selection of three to ten techniques from an existing profile |
| 3 | Full plan and infrastructure | One-page test plan; techniques tested in the laboratory |
| 4 | 10 to 20 days | 1 to 3 days, conducted alongside the defensive element |
| 5 | Full cleanup register | No compression |
| 6 | Full report | Results table by technique, with detection actions |
| 7 | Full retest cycle | Detections built and validated in the same week |

C.12.2 Authorisation, the cleanup register and the recording of evidence shall not be
compressed.
