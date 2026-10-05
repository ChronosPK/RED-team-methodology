# T01 — Engagement Request and Qualification

> Used in **Phase 0**. Completed by the Red Team Lead with the requesting customer.
> Ends with an accept/decline decision at Gate G0.

| Field | Value |
|---|---|
| Request reference | RT-REQ-[YYYY]-[NNN] |
| Date received | |
| Requested by (name, role) | |
| Target organisation / division | |
| Requested timeframe | |
| Red Team Lead assessing | |

---

## 1. The ask

**1.1 What is being requested, in the customer's words?**

| Response / notes |
|---|
| |
| |
| |
**1.2 What decision will the customer make with the result?**

> *If this cannot be answered, there is no engagement. Stop here.*

| Response / notes |
|---|
| |
| |
| |

**1.3 What prompted the request now?**
*(New system, incident, audit finding, regulatory pressure, leadership request, scheduled cycle)*

| Response / notes |
|---|
| |
| |
| |
---

## 2. Mission / business context

**2.1 Which mission or business service is at risk?**
*Start from the service, not the systems.*

| Response / notes |
|---|
| |
| |
| |
**2.2 What does failure of that service look like?**
*Operational, financial, safety, reputational, mission impact.*

| Response / notes |
|---|
| |
| |
| |
**2.3 Which systems, identities, data and suppliers support that service?**

| Type | Identifier | Owner |
|---|---|---|
| | | |
| | | |

**2.4 What must absolutely not be disrupted, and during which periods?**

| Response / notes |
|---|
| |
| |
| |
---

## 3. Instrument selection

**3.1 What does the customer actually need?**

| If they want… | Deliver… | ✔ |
|---|---|---|
| A list of weaknesses across an estate | Vulnerability assessment — refer elsewhere | ☐ |
| Proof a specific system can be broken | Penetration test | ☐ |
| To know whether their detections work | **Purple team exercise (SL-4)** | ☐ |
| To know whether a realistic attack achieves impact undetected | **Red team engagement (SL-1 / SL-2)** | ☐ |
| To train their team under pressure | **Exercise red team (SL-3)** | ☐ |
| Regulatory or audit assurance | Threat-led test with formal attestation | ☐ |

**3.2 Selected instrument and rationale:**

| Response / notes |
|---|
| |
| |
| |
---

## 4. Minimum defensibility baseline

*See the Red Team Methodology, paragraph 4.5. Applies to SL-1 and SL-2.*

| # | Condition | Met? | Evidence / note |
|---|---|---|---|
| 1 | Centralised log collection exists for endpoints and identity | ☐ | |
| 2 | Someone reviews alerts, with defined hours | ☐ | |
| 3 | An incident response process exists on paper | ☐ | |
| 4 | Asset ownership is known well enough to route a finding | ☐ | |
| 5 | A previous assessment has been remediated | ☐ | |

**Conditions unmet: ____ / 5**

> Three or more unmet to recommend a purple team exercise or tabletop instead, in writing.

---

## 5. Draft objectives

*Maximum three. Specific and verifiable. See Annex D, paragraph D.5.*

| Objective ID | Draft objective | Category (Protect/Detect/Respond/Restore) |
|---|---|---|
| O-01 | | |
| O-02 | | |
| O-03 | | |

---

## 6. Governance readiness

| Question | Answer |
|---|---|
| Which legal entity owns each system, identity, facility and dataset proposed for scope? | |
| Who holds actual System Authority and can consent to access? | |
| Who can accept operational risk as Approving Authority? | |
| Are authority and risk acceptance held separately? | ☐ Yes ☐ No — if yes, both are required |
| Is any authority holder part of the function assessed, and how will outcome independence be protected? | |
| Who will be the Trusted Agent? | |
| Is the candidate outside both the red team and the defensive element? | ☐ Yes ☐ No |
| Who must **not** know this is happening, and why? | |
| Are hosted, third-party or supplier services a source, target or dependency? | ☐ Yes ☐ No — list providers and direct permissions required: |
| Is any regulated, classified, or safety-critical system in scope? | ☐ Yes ☐ No |
| Which legal, privacy, regulatory, contractual or provider reviews are required? | |
| Who will own the fixes, and do they have capacity? | |

---

## 7. Initial risk and effort assessment

| Factor | Assessment |
|---|---|
| Operational risk to production | ☐ Low ☐ Medium ☐ High |
| Legal complexity | ☐ Low ☐ Medium ☐ High |
| Data sensitivity in scope | ☐ Low ☐ Medium ☐ High |
| Estimated execution duration | |
| Estimated total elapsed duration | |
| Team capacity available | ☐ Yes ☐ No — conflicts: |
| Skills gap | |
| External reviewer or specialist required | ☐ Yes ☐ No — reason: |

---

## 8. Gate G0 decision

*Decided by the Head of Red Team.*

| # | Criterion | ✔ |
|---|---|---|
| 1 | A named mission or business service is identified | ☐ |
| 2 | The customer can state the decision the result will inform | ☐ |
| 3 | Red teaming is the correct instrument | ☐ |
| 4 | Defensibility baseline met, or an alternative proposed | ☐ |
| 5 | A candidate Approving Authority with sufficient authority exists | ☐ |
| 6 | A candidate System Authority can positively authorise the proposed target space | ☐ |
| 7 | Required third-party and provider permissions can be obtained | ☐ |
| 8 | The team has capacity, separation and skills, or a plan to obtain them | ☐ |

**Decision:** ☐ Accept ☐ Accept with conditions ☐ Decline — alternative recommended

**Conditions / alternative recommended:**

| Response / notes |
|---|
| |
| |
| |
**Rationale (mandatory, including for acceptance):**

| Response / notes |
|---|
| |
| |
| |

| | |
|---|---|
| Decided by | |
| Role | Head of Red Team |
| Signature | ................................................ |
| Date | ................................................ |

