# ANNEX I — SPECIALISED ENVIRONMENTS

Supporting Chapter 4, paragraph 4.9, of the Red Team Methodology. Issued under the authority
of the Head of Red Team.

This annex applies where an engagement touches a classified or air-gapped network, a
mission, command or weapon system, a deployed or tactical network, installation operational
technology, or an allied or coalition system. Each is capable of converting a routine
engagement into a serious incident. None shall be entered without the controls in this
annex.

---

## I.1 Applicability

I.1.1 The following check is conducted at phase 0. Where any item applies, this annex
applies and the corresponding paragraph is mandatory.

| | Does the scope include | Paragraph |
|---|---|---|
| 1 | A network holding material classified above the working level of the red team | I.2 |
| 2 | An air-gapped or physically separated network | I.3 |
| 3 | A mission, command or weapon system | I.4 |
| 4 | A deployed, tactical or expeditionary network | I.5 |
| 5 | Installation operational technology: power, water, fuel, environmental control, access control | I.6 |
| 6 | A system owned by, or holding information belonging to, another nation or an alliance | I.7 |
| 7 | A system supporting a unit at readiness, on operations, or under certification | I.8 |

---

## I.2 Classified environments

### I.2.1 The governing constraint

I.2.1.1 In a classified environment the constraint is rarely technical. The engagement's own
artefacts, being the Rules of Engagement, the plan, the records, the evidence and the
report, take the classification of the environment they describe, at the time they are
created.

I.2.1.2 This is planned for before execution. A team generating classified evidence on an
unaccredited system has created a security incident that will outrank every finding in the
report.

### I.2.2 Controls

| | Control |
|---|---|
| 1 | Every operator holds clearance at or above the classification of the environment, verified before phase 3 and not inferred from appointment |
| 2 | Operator systems used in the environment are accredited for that classification. General-purpose team systems shall not be used. |
| 3 | The evidence repository is accredited to the same level. Evidence does not leave the accredited boundary. |
| 4 | Tooling is reviewed and approved under the applicable accreditation process before phase 3 |
| 5 | The report is produced, held and distributed within the classified environment. A summary at lower classification may be produced only if formally derived and assessed for aggregation. |
| 6 | The cleared list is drawn from clearance and from need to know. Clearance alone does not confer access. |
| 7 | Every deliverable is reviewed for classification by the security authority before release |
| 8 | A suspected spill is reported immediately under the organisation's procedure, before any engagement consideration, and the engagement ceases |

### I.2.3 Aggregation

I.2.3.1 Findings that are individually unclassified may aggregate to a classified picture. A
complete account of an estate's weaknesses is more sensitive than any single weakness within
it.

I.2.3.2 Every report against a classified environment shall be assessed for aggregation
before classification is assigned, by the security authority and not by the red team. The
report is assumed to classify above its individual components.

---

## I.3 Air-gapped and physically separated networks

| Matter | Requirement |
|---|---|
| Command and control | The tiered infrastructure at Annex D does not apply. Operations are conducted from within, with local recording. |
| Movement of evidence | Conducted through a controlled cross-domain process, agreed and approved at phase 1. It shall not be improvised at culmination. |
| Removable media | Any media used is accounted for, recorded, and disposed of under the applicable regulation. This is ordinarily the highest-risk element of the engagement. |
| Introduction of tooling | Tools are introduced through the accredited process. Introduction of unapproved code into an air-gapped network is a serious incident irrespective of intent. |
| Realistic vector | The realistic vector into such a network is removable media, the supply chain, or an insider. The emulation reflects that and not what is convenient. |
| Deconfliction | Network telemetry is not available. A physical or out-of-band procedure is agreed, with a defined interval for contact. |
| Cleanup | Nothing can be removed remotely afterwards. The cleanup register is verified before operators leave the facility. |

---

## I.4 Mission, command and weapon systems

> These systems are outside scope by default. They are brought into scope only with a
> documented safety case, the written consent of the system authority, and a risk acceptance
> by the Approving Authority naming the system.

### I.4.1 Basis of the default exclusion

a. Availability is a matter of readiness and potentially of safety.

b. Many are certified or accredited configurations, and unplanned change may invalidate that
certification.

c. Failure modes under unexpected input are frequently undocumented.

d. The consequence of degradation is not measurable in the terms this methodology otherwise
uses.

### I.4.2 Where a system is brought into scope

| | Requirement |
|---|---|
| 1 | Written consent of the system or design authority, and not of the operating unit alone |
| 2 | A representative test environment exists, and every technique is proven there first |
| 3 | A safety case covering each authorised technique, reviewed by the safety authority |
| 4 | Engineering staff able to intervene physically are present and briefed throughout |
| 5 | The system is in a known-safe, non-operational state, confirmed at the start of each session |
| 6 | The unit is not at readiness for the duration |
| 7 | Any anomaly in the behaviour of the system causes activity to cease, irrespective of cause |
| 8 | The effect upon certification and accreditation is assessed and accepted in advance |

### I.4.3 The boundary

I.4.3.1 For most objectives, demonstrating that a mission system is reachable from the
general-purpose network constitutes the finding. Entry adds substantial risk and little
information.

I.4.3.2 The default course is to stop at the boundary, demonstrate reachability, and report
it. The boundary is crossed only where the objective cannot otherwise be met and the
conditions at paragraph I.4.2 are satisfied.

---

## I.5 Deployed and tactical networks

| Matter | Requirement |
|---|---|
| Live operations | Engagements against a network supporting a live operational task are prohibited |
| Window | Work-up, in barracks, or after recovery |
| Consent | The commander of the deployed unit consents and is the Trusted Agent, or nominates one |
| Bandwidth | Engagement infrastructure shall not consume operationally significant bandwidth. Traffic is modelled before execution. |
| Vector | Tactical networks face different vectors: physical capture, radio frequency, supply chain, local insider. Those are emulated. |
| Communications | Deconfliction operates over the communications available at the pace those permit. The response period is set accordingly and tested. |
| Cleanup | Verified before the unit deploys. An artefact remaining on a system that then deploys cannot be recovered. |

---

## I.6 Installation operational technology

I.6.1 Applies to power, water, fuel, environmental control, physical access control, fire
and life-safety systems.

I.6.2 The safety provisions at Annex G, paragraph G.5.2, apply, with the following
additions.

| | Addition |
|---|---|
| 1 | Life-safety and fire systems are permanently outside scope. No safety case will be accepted. |
| 2 | Physical access control may be assessed, but never in a manner capable of causing a facility to fail secure or fail open. The failure mode is modelled before any action. |
| 3 | The installation commander is informed, and guard force leadership is briefed that authorised activity is occurring |
| 4 | For fuel, power and water: demonstrate reachability from the general-purpose network and stop. The reachability is the finding. |
| 5 | Engagements are scheduled outside periods of heightened alert state |

---

## I.7 Allied and coalition systems

| | Requirement |
|---|---|
| 1 | National authority alone is not sufficient. Systems owned by, or holding information belonging to, another nation or an alliance require that owner's authorisation. |
| 2 | The information owner is determined, and is frequently not the system operator |
| 3 | The applicable agreement, memorandum or technical arrangement is reviewed by the legal adviser before phase 1 completes |
| 4 | Releasability of findings is agreed in writing before execution: who receives the report, in what form, and whether findings are releasable to the alliance or bilaterally |
| 5 | Classification and caveats are applied under the owning nation's or alliance's rules and not only under the assessing organisation's |
| 6 | Where a partner's response element monitors the systems, it is included in the deconfliction arrangement |

I.7.1 Where authority is unclear the engagement does not proceed. Ambiguous authority over
an allied system is not a risk proportionate to an assurance activity.

---

## I.8 Readiness and operational tempo

I.8.1 Red team activity shall not degrade readiness. This is a constraint and not a
scheduling preference.

| | Requirement |
|---|---|
| 1 | No engagement against systems supporting a unit at readiness, on operations, or under certification |
| 2 | The engagement calendar is deconflicted against the operational and exercise programme at phase 0 |
| 3 | The Trusted Agent holds standing authority to terminate on a change in alert state or operational tasking, without discussion and without notice |
| 4 | Termination for operational reasons is not a failure of the engagement. It is recorded, what was gathered is preserved, and the engagement is rescheduled. |
| 5 | Where an engagement is terminated for operational reasons, cleanup is completed immediately and not deferred |

---

## I.9 Additional cessation criteria

I.9.1 In addition to those at Chapter 8, paragraph 8.15.

a. A change in alert state or readiness posture.

b. Receipt by a supported unit of an operational tasking.

c. A suspected classification spill or breach of handling.

d. Any anomaly in a mission, command, weapon or operational technology system, whether or not
attributed to the red team.

e. Contact with an allied or coalition system not covered by the authorisation.

f. Loss of accountability for any removable media used during the engagement.

g. Any indication that engagement activity has been observed by, or attributed to, an
external party.

---

## I.10 Additional requirements at phase 1

I.10.1 Added to gate G1 at Annex C, paragraph C.5.3, where this annex applies.

1. The applicability check at paragraph I.1 is completed and recorded.
2. Clearances are verified against the classification of the environment.
3. Operator systems and the evidence repository are accredited to the required level.
4. Tooling is approved under the applicable accreditation process.
5. The cross-domain process for movement of evidence is agreed and approved.
6. Aggregation and classification of deliverables are assessed by the security authority.
7. For a mission or weapon system: consent of the system authority, the safety case, and the test environment are confirmed.
8. For an allied or coalition system: the owner's authorisation and the releasability of findings are agreed in writing.
9. The engagement calendar is deconflicted against the operational and exercise programme.
10. The Trusted Agent's standing authority to terminate on a change of alert state is confirmed.

---
