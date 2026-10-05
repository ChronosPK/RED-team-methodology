# T03 — Threat Profile

> Used in **Phase 2**. Produced by the Threat Intelligence Analyst. Peer-reviewed by
> someone who will not execute it. Becomes Appendix 8 of the ROE.

| Field | Value |
|---|---|
| Engagement reference | |
| Profile version | |
| Author | |
| Peer reviewer | |
| Date | |
| Intelligence cut-off date | |
| ATT&CK release and date | |
| Source-handling classification | |
| Scenario ID(s) | SC-01 |

---

## 1. Adversary selection

**1.1 What does this organisation have that someone would want?**

| Response / notes |
|---|
| |
| |
| |
| |
**1.2 Who has attacked organisations like this in the last 24 months?**

| Actor | Sector / geography targeted | Source |
|---|---|---|
| | | |

**1.3 Which adversaries have acted against the assessed organisation?**

*From incident history, escalations by the defensive element, and phishing telemetry.*

| Response / notes |
|---|
| |
| |
| |
| |
**1.4 Selected adversary and justification** *(one paragraph, evidence-based)*

| Response / notes |
|---|
| |
| |
| |
| |

**1.5 Source assessment**

> Use stable source IDs throughout this profile. Reliability concerns the source;
> confidence concerns the information. Record uncertainty and disagreement rather than
> resolving them by omission.

| Source ID | Title / origin and link or repository reference | Published / observed | Reliability | Information confidence | Corroboration, disagreement and limitations |
|---|---|---|---|---|---|
| S-01 | | | High / Medium / Low | High / Medium / Low | |
| S-02 | | | High / Medium / Low | High / Medium / Low | |
| S-03 | | | High / Medium / Low | High / Medium / Low | |
| S-04 | | | High / Medium / Low | High / Medium / Low | |

| Analytic limitation or alternative explanation | Effect on adversary selection or scenario |
|---|---|
| | |
| | |
---

## 2. Adversary identity

| Field | Value |
|---|---|
| Name | |
| Aliases | |
| ATT&CK Group ID | |
| Profile basis | ☐ Named group ☐ **Composite** — built from a threat category |
| If composite: category emulated | |
| Attribution source IDs | |

---

## 3. Motivation and goals

| Field | Value |
|---|---|
| Primary motivation | ☐ Espionage ☐ Financial ☐ Disruption ☐ Hacktivism ☐ Pre-positioning |
| Secondary motivation | |
| **What would this actor want from THIS organisation?** | |
| Likely end objectives | |
| Tolerance for detection | ☐ Low — will withdraw ☐ Medium ☐ High — will persist noisily |
| Tolerance for destruction | ☐ None ☐ Opportunistic ☐ Deliberate |

---

## 4. Capability assessment

| Field | Value |
|---|---|
| **Capability level** | ☐ 1 Opportunistic ☐ 2 Targeted criminal ☐ 3 Advanced persistent ☐ 4 Insider-enabled |
| Justification | |
| Resourcing | |
| Patience / typical dwell time | |
| Custom capability | ☐ None ☐ Modified public tooling ☐ Bespoke |
| Zero-day use | ☐ Not observed ☐ Occasional ☐ Routine |

---

## 5. Initial access

*Ranked by observed frequency in reporting.*

| Rank | Vector | ATT&CK ID | Observed detail | Emulating? |
|---|---|---|---|---|
| 1 | | | | ☐ |
| 2 | | | | ☐ |
| 3 | | | | ☐ |

---

## 6. Tooling

| Category | Known tooling | Emulating with |
|---|---|---|
| Initial access | | |
| Execution | | |
| C2 | | |
| Credential access | | |
| Lateral movement | | |
| Exfiltration | | |
| Living-off-the-land binaries | | |

---

## 7. Infrastructure pattern

| Attribute | Adversary pattern | Emulation |
|---|---|---|
| Hosting providers | | |
| Domain naming convention | | |
| Domain age / categorisation | | |
| TLS certificate habits | | |
| C2 protocol | | |
| Beacon interval and jitter | | |
| Redirector use | | |

---

## 8. TTP set — the execution backbone

> This table forms the structure of the engagement plan, the execution record and the
> coverage matrix in the report. The procedure column is the operative one: a defensive
> element detects procedures and not technique identifiers.

| Action ID | Tactic | Technique ID and name | Procedure: the exact method to be used | Source IDs | Approval level | Planned |
|---|---|---|---|---|---|---|
| A-01 | Reconnaissance | | | | | ☐ |
| A-02 | Resource Development | | | | | ☐ |
| A-03 | Initial Access | | | | | ☐ |
| A-04 | Execution | | | | | ☐ |
| A-05 | Persistence | | | | | ☐ |
| A-06 | Privilege Escalation | | | | | ☐ |
| A-07 | Stealth | | | | | ☐ |
| A-08 | Defense Impairment | | | | | ☐ |
| A-09 | Credential Access | | | | | ☐ |
| A-10 | Discovery | | | | | ☐ |
| A-11 | Lateral Movement | | | | | ☐ |
| A-12 | Collection | | | | | ☐ |
| A-13 | Command and Control | | | | | ☐ |
| A-14 | Exfiltration | | | | | ☐ |
| A-15 | Impact | | | | | ☐ |

---

## 9. Known indicators

*Held by the Control Team for deconfliction and released to the defensive element at the
agreed stage. In a covert engagement they are not used to seed advance detections unless
the ROE explicitly makes that part of the design.*

| Type | Indicator | Source ID | Using in emulation? |
|---|---|---|---|
| | | | ☐ |
| | | | ☐ |
| | | | ☐ |

---

## 10. Techniques not emulated

> Mandatory. Emulation is always partial. Recording the omission prevents the report being
> read as assurance against the adversary as a whole.

| Adversary behaviour | Basis for exclusion | Residual risk left unassessed |
|---|---|---|
| | ☐ Safety ☐ Legal ☐ Capability ☐ ROE | |
| | ☐ Safety ☐ Legal ☐ Capability ☐ ROE | |

---

## 11. Attack path hypotheses

> Recorded before execution. The predictions constitute a finding in themselves. The
> difference between what the organisation believes its controls achieve and what they
> achieve is among the more useful outputs of an engagement.

### Hypothesis 1

| Field | Value |
|---|---|
| Hypothesis ID / objective ID | H-01 / O-__ |
| Route | Start to … to Objective |
| Planned action IDs | A-__ → A-__ → A-__ |
| Controls expected to be encountered | |
| **Prediction: prevented / detected / missed at each step** | |
| Confidence | ☐ Low ☐ Medium ☐ High |
| Source IDs and key assumptions | |

### Hypothesis 2

| Field | Value |
|---|---|
| Hypothesis ID / objective ID | H-02 / O-__ |
| Route | |
| Planned action IDs | |
| Controls expected | |
| **Prediction** | |
| Confidence | |
| Source IDs and key assumptions | |

### Hypothesis 3

| Field | Value |
|---|---|
| Hypothesis ID / objective ID | H-03 / O-__ |
| Route | |
| Planned action IDs | |
| Controls expected | |
| **Prediction** | |
| Confidence | |
| Source IDs and key assumptions | |

**Attack-path representation**

| Item | Value |
|---|---|
| Attack Flow or diagram reference | |
| Version / date | |
| Flow or node identifiers used in T04 and T08 | |

---

## 12. Target reconnaissance summary

| Area | Findings | Immediate risk? |
|---|---|---|
| External attack surface | | ☐ |
| Exposed services | | ☐ |
| Identity providers and federation | | ☐ |
| Technology stack | | ☐ |
| Public personnel footprint | | ☐ |
| Credential exposure in breach corpora | | ☐ |
| Supply chain / third-party access | | ☐ |

> Any item marked as an immediate risk shall be reported to the Trusted Agent at once. It
> shall not be held for the report.

Reported to Trusted Agent on: ____________ by: ____________

---

## 13. Sign-off

| | Name | Signature | Date |
|---|---|---|---|
| Author | | | |
| Peer reviewer | | | |
| Red Team Lead | | | |

