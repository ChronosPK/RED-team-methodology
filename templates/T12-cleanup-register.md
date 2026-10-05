# T12 — Cleanup and Rollback Register

> Populated **during Phase 4**, as each modification is made — not reconstructed at the
> end. Closed out at Gate G5.
>
> Forgotten implants, live accounts and orphaned infrastructure are the worst red team
> incidents. They create real, uncontrolled risk that outlives the authorisation, and they
> are discovered by someone else.
>
> Assign the stable item IDs below when an item is first recorded. Do not renumber or reuse
> an ID. Carry it into T05, T08 and any transferred action.

| Field | Value |
|---|---|
| Engagement reference | |
| Code name | |
| Execution window | |
| Register owner | |

---

## 1. System modifications

| Item ID | Date/time (UTC) | Operator | Host / system | Modification made | Type | Removal method | Removed (UTC) | Removed by | **Verified by (2nd person)** |
|---|---|---|---|---|---|---|---|---|---|
| MOD-001 | | | | | | | | | |
| MOD-002 | | | | | | | | | |
| MOD-003 | | | | | | | | | |
| MOD-004 | | | | | | | | | |
| MOD-005 | | | | | | | | | |
| MOD-006 | | | | | | | | | |
| MOD-007 | | | | | | | | | |
| MOD-008 | | | | | | | | | |
| MOD-009 | | | | | | | | | |
| MOD-010 | | | | | | | | | |
| MOD-011 | | | | | | | | | |
| MOD-012 | | | | | | | | | |

**Type codes:** IMP implant/beacon · PER persistence · ACC account · GRP group membership ·
CRED credential · CFG configuration · FILE uploaded file · DATA written data · NET network
change · OTH other

---

## 2. Persistence mechanisms

*Listed separately because these are the ones that survive if missed.*

| Item ID | Host | Mechanism | Detail | Established (UTC) | Removed (UTC) | Removed by | **Verified** |
|---|---|---|---|---|---|---|---|
| PER-001 | | ☐ Scheduled task ☐ Service ☐ Run key ☐ WMI subscription ☐ Startup folder ☐ DLL hijack ☐ Other: | | | | | ☐ |
| PER-002 | | ☐ Scheduled task ☐ Service ☐ Run key ☐ WMI subscription ☐ Startup folder ☐ DLL hijack ☐ Other: | | | | | ☐ |
| PER-003 | | ☐ Scheduled task ☐ Service ☐ Run key ☐ WMI subscription ☐ Startup folder ☐ DLL hijack ☐ Other: | | | | | ☐ |
| PER-004 | | ☐ Scheduled task ☐ Service ☐ Run key ☐ WMI subscription ☐ Startup folder ☐ DLL hijack ☐ Other: | | | | | ☐ |
| PER-005 | | ☐ Scheduled task ☐ Service ☐ Run key ☐ WMI subscription ☐ Startup folder ☐ DLL hijack ☐ Other: | | | | | ☐ |
| PER-006 | | ☐ Scheduled task ☐ Service ☐ Run key ☐ WMI subscription ☐ Startup folder ☐ DLL hijack ☐ Other: | | | | | ☐ |

---

## 3. Accounts, credentials and access

| Item ID | Type | Identifier | System | Created / obtained (UTC) | Action taken | Completed (UTC) | By | **Verified** |
|---|---|---|---|---|---|---|---|---|
| ACC-001 | ☐ Account created ☐ Group added ☐ API key ☐ Token ☐ Cert ☐ Delegation ☐ Password changed | | | | ☐ Deleted ☐ Reverted ☐ Reset ☐ Destroyed | | | ☐ |
| ACC-002 | ☐ Account created ☐ Group added ☐ API key ☐ Token ☐ Cert ☐ Delegation ☐ Password changed | | | | ☐ Deleted ☐ Reverted ☐ Reset ☐ Destroyed | | | ☐ |
| ACC-003 | ☐ Account created ☐ Group added ☐ API key ☐ Token ☐ Cert ☐ Delegation ☐ Password changed | | | | ☐ Deleted ☐ Reverted ☐ Reset ☐ Destroyed | | | ☐ |
| ACC-004 | ☐ Account created ☐ Group added ☐ API key ☐ Token ☐ Cert ☐ Delegation ☐ Password changed | | | | ☐ Deleted ☐ Reverted ☐ Reset ☐ Destroyed | | | ☐ |
| ACC-005 | ☐ Account created ☐ Group added ☐ API key ☐ Token ☐ Cert ☐ Delegation ☐ Password changed | | | | ☐ Deleted ☐ Reverted ☐ Reset ☐ Destroyed | | | ☐ |
| ACC-006 | ☐ Account created ☐ Group added ☐ API key ☐ Token ☐ Cert ☐ Delegation ☐ Password changed | | | | ☐ Deleted ☐ Reverted ☐ Reset ☐ Destroyed | | | ☐ |

**Captured credentials:**

| Item ID | Count / description | Storage location | Destruction method | Destroyed (UTC) | By | **Verified** |
|---|---|---|---|---|---|---|
| CRED-001 | | | | | | ☐ |
| CRED-002 | | | | | | ☐ |
| CRED-003 | | | | | | ☐ |
| CRED-004 | | | | | | ☐ |
| CRED-005 | | | | | | ☐ |
| CRED-006 | | | | | | ☐ |
| CRED-007 | | | | | | ☐ |
| CRED-008 | | | | | | ☐ |

---

## 4. Files and tooling

| Item ID | Host | Path | Description | Uploaded (UTC) | Removed (UTC) | By | **Verified** |
|---|---|---|---|---|---|---|---|
| FILE-001 | | | | | | | ☐ |
| FILE-002 | | | | | | | ☐ |
| FILE-003 | | | | | | | ☐ |
| FILE-004 | | | | | | | ☐ |
| FILE-005 | | | | | | | ☐ |
| FILE-006 | | | | | | | ☐ |
| FILE-007 | | | | | | | ☐ |
| FILE-008 | | | | | | | ☐ |

---

## 5. Data written to prove access

| Item ID | System | What was written | Marker used | Removed (UTC) | By | **Verified** |
|---|---|---|---|---|---|---|
| DATA-001 | | | | | | ☐ |
| DATA-002 | | | | | | ☐ |
| DATA-003 | | | | | | ☐ |
| DATA-004 | | | | | | ☐ |
| DATA-005 | | | | | | ☐ |
| DATA-006 | | | | | | ☐ |
| DATA-007 | | | | | | ☐ |
| DATA-008 | | | | | | ☐ |

---

## 6. Flags

| Item ID | Flag identifier | Location | Placed by (TA) | Retrieved by RT? | Removed (UTC) | **Verified** |
|---|---|---|---|---|---|---|
| FLAG-001 | | | | ☐ | | ☐ |
| FLAG-002 | | | | ☐ | | ☐ |
| FLAG-003 | | | | ☐ | | ☐ |
| FLAG-004 | | | | ☐ | | ☐ |
| FLAG-005 | | | | ☐ | | ☐ |
| FLAG-006 | | | | ☐ | | ☐ |
| FLAG-007 | | | | ☐ | | ☐ |
| FLAG-008 | | | | ☐ | | ☐ |

---

## 7. Infrastructure decommissioning

| Asset ID | Asset type | Identifier | Provider | Tier | **Logs preserved first** | Decommissioned (UTC) | By | **Verified** |
|---|---|---|---|---|---|---|---|---|
| INF-001 | | | | | ☐ | | | ☐ |
| INF-002 | | | | | ☐ | | | ☐ |
| INF-003 | | | | | ☐ | | | ☐ |
| INF-004 | | | | | ☐ | | | ☐ |
| INF-005 | | | | | ☐ | | | ☐ |
| INF-006 | | | | | ☐ | | | ☐ |
| INF-007 | | | | | ☐ | | | ☐ |
| INF-008 | | | | | ☐ | | | ☐ |

**Includes:** team servers, redirectors, domains, certificates, cloud resources, mail
accounts, hosting accounts, phishing sites, payload hosting.

---

## 8. Command and control, secrets and channels

| Item ID | Component / secret / channel | Identifier or reference | Disable, revoke or close method | Completed (UTC) | By | Late activity checked | **Verified** |
|---|---|---|---|---|---|---|---|
| C2-001 | Team server tasking | | | | | ☐ | ☐ |
| C2-002 | Listener / redirector | | | | | ☐ | ☐ |
| C2-003 | Kill switch / automatic expiry | | | | | ☐ | ☐ |
| SEC-001 | Certificate / signing key | | | | | ☐ | ☐ |
| SEC-002 | API token / provider credential | | | | | ☐ | ☐ |
| COM-001 | Secure engagement channel | | | | | ☐ | ☐ |
| C2-004 | Delayed task / scheduled callback | | | | | ☐ | ☐ |
| OTH-001 | Other | | | | | ☐ | ☐ |

---

## 9. Restoration and delayed effects

| Control | Agreed restored state | Verification method / evidence | Owner | Verified (UTC) | **Second-person check** |
|---|---|---|---|---|---|
| Security controls changed for the engagement | | | | | ☐ |
| Monitoring and alert routing | | | | | ☐ |
| Services and configuration | | | | | ☐ |
| Backup / image restoration will not reintroduce artefacts | | | | | ☐ |
| Secure communications returned to ordinary state | | | | | ☐ |
| Late callbacks / delayed tasks monitored through | | | | | ☐ |
| Residual provider resources and billing checked | | | | | ☐ |

---

## 10. Items that could NOT be removed or restored by the Red Team

> Transferred in writing to the Trusted Agent as an open action with a named owner. These
> are **not** closed items.

| Transfer ID | Item and original ID | Host / system | Basis on which it could not be removed | Risk if left | **Transferred to (name)** | Accepted (date) | Target removal date |
|---|---|---|---|---|---|---|---|
| OUT-001 | | | | | | | |
| OUT-002 | | | | | | | |
| OUT-003 | | | | | | | |
| OUT-004 | | | | | | | |
| OUT-005 | | | | | | | |
| OUT-006 | | | | | | | |
| OUT-007 | | | | | | | |
| OUT-008 | | | | | | | |

---

## 11. Verification summary

| # | Category | Items recorded | Items removed | Items verified | Items transferred | Outstanding |
|---|---|---|---|---|---|---|
| 1 | System modifications | | | | | |
| 2 | Persistence | | | | | |
| 3 | Accounts and credentials | | | | | |
| 4 | Files and tooling | | | | | |
| 5 | Data written | | | | | |
| 6 | Flags | | | | | |
| 7 | Infrastructure | | | | | |
| 8 | Command, secrets and channels | | | | | |
| 9 | Restoration and delayed effects | | | | | |
| | **TOTAL** | | | | | |

---

## 12. Gate G5 attestation

| # | Criterion | ✔ |
|---|---|---|
| 1 | Every item in this register is removed and verified by a second person | ☐ |
| 2 | Items that could not be removed are transferred in writing with a named owner | ☐ |
| 3 | All persistence mechanisms confirmed removed | ☐ |
| 4 | All created accounts and access confirmed removed | ☐ |
| 5 | All captured credentials destroyed and recorded | ☐ |
| 6 | Infrastructure decommissioned; logs preserved first | ☐ |
| 7 | Flags retrieved and removed | ☐ |
| 8 | Evidence repository consolidated, integrity-verified, classified | ☐ |
| 9 | C2 tasking, listeners, kill switches and delayed tasks disabled | ☐ |
| 10 | Certificates, tokens, keys and engagement channels revoked or closed | ☐ |
| 11 | Monitoring, security controls and services restored to the agreed state | ☐ |
| 12 | Backup and image restoration checked for artefact reintroduction | ☐ |
| 13 | Late-callback monitoring complete or transferred with a named owner and deadline | ☐ |
| 14 | Defensive activity list delivered to the Trusted Agent | ☐ |
| 15 | Internal hot-wash held | ☐ |

<br>

**I attest that the target environment and engagement infrastructure have been returned to
the agreed state except for the items explicitly transferred in section 10.**

| | Name | Signature | Date |
|---|---|---|---|
| Red Team Lead | | | |
| Verifying operator *(did not perform the removals alone)* | | | |

<br>

**I accept this attestation and the transferred items listed in section 10.**

| | Name | Signature | Date |
|---|---|---|---|
| Trusted Agent | | | |

