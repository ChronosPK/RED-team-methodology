# T12 — Cleanup and Rollback Register

> Se completează **pe durata fazei 4**, în momentul efectuării fiecărei modificări, nu se
> reconstituie la final. Se închide la poarta G5.
>
> Implanturile uitate, conturile active și infrastructura rămasă fără responsabil sunt cele
> mai grave incidente Red Team. Acestea creează un risc real, necontrolat, care depășește
> durata autorizării și sunt descoperite de altcineva.
>
> Alocați ID-urile stabile de mai jos atunci când un element este consemnat pentru prima
> dată. Nu renumerotați și nu reutilizați un ID. Preluați ID-ul în T05, T08 și în orice
> acțiune predată.

| Câmp | Valoare |
|---|---|
| Referința misiunii | |
| Numele de cod | |
| Perioada de execuție | |
| Responsabilul registrului | |

---

## 1. Modificări ale sistemelor

| ID element | Data/ora (UTC) | Operator | Host / sistem | Modificare efectuată | Tip | Metoda de eliminare | Eliminat (UTC) | Eliminat de | **Verificat de (a doua persoană)** |
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

**Coduri de tip:** IMP implant/beacon · PER persistence · ACC cont · GRP apartenență la grup ·
CRED credential · CFG configurare · FILE fișier încărcat · DATA date scrise · NET modificare de
rețea · OTH alt tip

---

## 2. Mecanisme de persistence

*Sunt enumerate separat deoarece supraviețuiesc dacă sunt omise.*

| ID element | Host | Mecanism | Detalii | Creat (UTC) | Eliminat (UTC) | Eliminat de | **Verificat** |
|---|---|---|---|---|---|---|---|
| PER-001 | | ☐ Scheduled task ☐ Service ☐ Run key ☐ WMI subscription ☐ Startup folder ☐ DLL hijack ☐ Alt tip: | | | | | ☐ |
| PER-002 | | ☐ Scheduled task ☐ Service ☐ Run key ☐ WMI subscription ☐ Startup folder ☐ DLL hijack ☐ Alt tip: | | | | | ☐ |
| PER-003 | | ☐ Scheduled task ☐ Service ☐ Run key ☐ WMI subscription ☐ Startup folder ☐ DLL hijack ☐ Alt tip: | | | | | ☐ |
| PER-004 | | ☐ Scheduled task ☐ Service ☐ Run key ☐ WMI subscription ☐ Startup folder ☐ DLL hijack ☐ Alt tip: | | | | | ☐ |
| PER-005 | | ☐ Scheduled task ☐ Service ☐ Run key ☐ WMI subscription ☐ Startup folder ☐ DLL hijack ☐ Alt tip: | | | | | ☐ |
| PER-006 | | ☐ Scheduled task ☐ Service ☐ Run key ☐ WMI subscription ☐ Startup folder ☐ DLL hijack ☐ Alt tip: | | | | | ☐ |

---

## 3. Conturi, credențiale și acces

| ID element | Tip | Identificator | Sistem | Creat / obținut (UTC) | Acțiune întreprinsă | Finalizat (UTC) | De | **Verificat** |
|---|---|---|---|---|---|---|---|---|
| ACC-001 | ☐ Account created ☐ Group added ☐ API key ☐ Token ☐ Cert ☐ Delegation ☐ Password changed | | | | ☐ Deleted ☐ Reverted ☐ Reset ☐ Destroyed | | | ☐ |
| ACC-002 | ☐ Account created ☐ Group added ☐ API key ☐ Token ☐ Cert ☐ Delegation ☐ Password changed | | | | ☐ Deleted ☐ Reverted ☐ Reset ☐ Destroyed | | | ☐ |
| ACC-003 | ☐ Account created ☐ Group added ☐ API key ☐ Token ☐ Cert ☐ Delegation ☐ Password changed | | | | ☐ Deleted ☐ Reverted ☐ Reset ☐ Destroyed | | | ☐ |
| ACC-004 | ☐ Account created ☐ Group added ☐ API key ☐ Token ☐ Cert ☐ Delegation ☐ Password changed | | | | ☐ Deleted ☐ Reverted ☐ Reset ☐ Destroyed | | | ☐ |
| ACC-005 | ☐ Account created ☐ Group added ☐ API key ☐ Token ☐ Cert ☐ Delegation ☐ Password changed | | | | ☐ Deleted ☐ Reverted ☐ Reset ☐ Destroyed | | | ☐ |
| ACC-006 | ☐ Account created ☐ Group added ☐ API key ☐ Token ☐ Cert ☐ Delegation ☐ Password changed | | | | ☐ Deleted ☐ Reverted ☐ Reset ☐ Destroyed | | | ☐ |

**Credențiale capturate:**

| ID element | Număr / descriere | Locația stocării | Metoda de distrugere | Distruse (UTC) | De | **Verificat** |
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

## 4. Fișiere și tooling

| ID element | Host | Path | Descriere | Încărcat (UTC) | Eliminat (UTC) | De | **Verificat** |
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

## 5. Date scrise pentru demonstrarea accesului

| ID element | Sistem | Ce a fost scris | Marker utilizat | Eliminat (UTC) | De | **Verificat** |
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

| ID element | Identificator flag | Locație | Amplasat de (TA) | Recuperat de RT? | Eliminat (UTC) | **Verificat** |
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

## 7. Dezafectarea infrastructurii

| ID activ | Tip activ | Identificator | Furnizor | Tier | **Log-uri păstrate în prealabil** | Dezafectat (UTC) | De | **Verificat** |
|---|---|---|---|---|---|---|---|---|
| INF-001 | | | | | ☐ | | | ☐ |
| INF-002 | | | | | ☐ | | | ☐ |
| INF-003 | | | | | ☐ | | | ☐ |
| INF-004 | | | | | ☐ | | | ☐ |
| INF-005 | | | | | ☐ | | | ☐ |
| INF-006 | | | | | ☐ | | | ☐ |
| INF-007 | | | | | ☐ | | | ☐ |
| INF-008 | | | | | ☐ | | | ☐ |

**Include:** serverele echipei, redirectors, domenii, certificate, resurse cloud, conturi de
e-mail, conturi de hosting, site-uri de phishing, găzduirea payload-urilor.

---

## 8. Command and Control, secrets și canale

| ID element | Componentă / secret / canal | Identificator sau referință | Metoda de dezactivare, revocare sau închidere | Finalizat (UTC) | De | Activitate întârziată verificată | **Verificat** |
|---|---|---|---|---|---|---|---|
| C2-001 | Team server tasking | | | | | ☐ | ☐ |
| C2-002 | Listener / redirector | | | | | ☐ | ☐ |
| C2-003 | Kill switch / expirare automată | | | | | ☐ | ☐ |
| SEC-001 | Certificat / signing key | | | | | ☐ | ☐ |
| SEC-002 | API token / credential furnizor | | | | | ☐ | ☐ |
| COM-001 | Canal securizat al misiunii | | | | | ☐ | ☐ |
| C2-004 | Delayed task / scheduled callback | | | | | ☐ | ☐ |
| OTH-001 | Alt tip | | | | | ☐ | ☐ |

---

## 9. Restabilire și efecte întârziate

| Control | Starea restabilită convenită | Metodă de verificare / dovadă | Responsabil | Verificat (UTC) | **Verificare de a doua persoană** |
|---|---|---|---|---|---|
| Controale de securitate modificate pentru misiune | | | | | ☐ |
| Monitoring și rutarea alertelor | | | | | ☐ |
| Servicii și configurație | | | | | ☐ |
| Restaurarea din backup / imagine nu va reintroduce artefacte | | | | | ☐ |
| Comunicațiile securizate au revenit la starea obișnuită | | | | | ☐ |
| Late callbacks / delayed tasks monitorizate până la | | | | | ☐ |
| Resursele și facturarea reziduale ale furnizorilor au fost verificate | | | | | ☐ |

---

## 10. Elemente care NU au putut fi eliminate sau restabilite de Red Team

> Predate în scris Trusted Agent drept acțiuni deschise, cu responsabil nominalizat. Acestea
> **nu** sunt elemente închise.

| ID predare | Element și ID inițial | Host / sistem | Motivul imposibilității eliminării | Risc în cazul menținerii | **Predat către (nume)** | Acceptat (data) | Termenul eliminării |
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

## 11. Sinteza verificării

| Nr. | Categorie | Elemente consemnate | Elemente eliminate | Elemente verificate | Elemente predate | Restante |
|---|---|---|---|---|---|---|
| 1 | Modificări ale sistemelor | | | | | |
| 2 | Persistence | | | | | |
| 3 | Conturi și credențiale | | | | | |
| 4 | Fișiere și tooling | | | | | |
| 5 | Date scrise | | | | | |
| 6 | Flags | | | | | |
| 7 | Infrastructură | | | | | |
| 8 | Command and Control, secrets și canale | | | | | |
| 9 | Restabilire și efecte întârziate | | | | | |
| | **TOTAL** | | | | | |

---

## 12. Atestarea porții G5

| Nr. | Criteriu | ✔ |
|---|---|---|
| 1 | Fiecare element din registru este eliminat și verificat de o a doua persoană | ☐ |
| 2 | Elementele care nu au putut fi eliminate sunt predate în scris unui responsabil nominalizat | ☐ |
| 3 | Eliminarea tuturor mecanismelor de persistence este confirmată | ☐ |
| 4 | Eliminarea tuturor conturilor create și formelor de acces este confirmată | ☐ |
| 5 | Toate credențialele capturate au fost distruse și consemnate | ☐ |
| 6 | Infrastructura a fost dezafectată; log-urile au fost păstrate în prealabil | ☐ |
| 7 | Flags au fost recuperate și eliminate | ☐ |
| 8 | Repository-ul pentru dovezi a fost consolidat, verificat pentru integritate și clasificat | ☐ |
| 9 | Tasking-ul C2, listener-ele, kill switch-urile și delayed tasks au fost dezactivate | ☐ |
| 10 | Certificatele, token-urile, cheile și canalele misiunii au fost revocate sau închise | ☐ |
| 11 | Monitoring-ul, controalele de securitate și serviciile au fost restabilite la starea convenită | ☐ |
| 12 | Restaurarea din backup și imagine a fost verificată pentru reintroducerea artefactelor | ☐ |
| 13 | Monitorizarea late callbacks este finalizată sau predată unui responsabil nominalizat, cu termen | ☐ |
| 14 | Lista activităților a fost predată Trusted Agent | ☐ |
| 15 | A fost desfășurat hot-wash-ul intern | ☐ |

<br>

**Atest că mediul-țintă și infrastructura misiunii au fost readuse la starea convenită, cu
excepția elementelor predate explicit în secțiunea 10.**

| | Nume | Semnătură | Data |
|---|---|---|---|
| Red Team Lead | | | |
| Operator verificator *(nu a efectuat singur eliminările)* | | | |

<br>

**Accept prezenta atestare și elementele predate, enumerate în secțiunea 10.**

| | Nume | Semnătură | Data |
|---|---|---|---|
| Trusted Agent | | | |
