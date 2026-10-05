# T04 — Planul misiunii

> Se utilizează în **faza 3**. Document intern Red Team. Nu se distribuie clientului,
> cu excepția Trusted Agent. Se închide la poarta G3.

| Câmp | Valoare |
|---|---|
| Referința misiunii | |
| Numele de cod | |
| Red Team Lead | |
| Versiunea planului | |
| Data | |

---

## 1. Scenariul

| Element | Valoare |
|---|---|
| ID scenariu | SC-01 |
| Referința / versiunea Threat Profile | |
| Versiunea ATT&CK | |

**1.1 Premisă** *(adversarul, scopul acestuia și momentul campaniei în care începe misiunea)*

| Răspuns / observații |
|---|
| |
| |
| |
| |
**1.2 Postura inițială**

☐ Extern, fără acces ☐ Assumed breach — endpoint utilizator ☐ Assumed breach — server
☐ Insider ☐ Supply chain

**Detaliile posturii inițiale furnizate:**

| Element | Detaliu | Furnizat de | Data |
|---|---|---|---|
| Host / cont / acces | | | |

**1.3 Obiective** *(din ROE)*

| ID obiectiv | Obiectiv | Timebox | Ipoteză principală |
|---|---|---|---|
| O-01 | | | H-__ |
| O-02 | | | H-__ |
| O-03 | | | H-__ |

---

## 2. Etapizare

| Etapă | Zile | Intenție | Tehnici principale | Punct de decizie |
|---|---|---|---|---|
| **Get In** | | | | |
| **Stay In** | | | | |
| **Act** | | | | |

**2.1 Puncte de decizie** *(ramificarea planului în funcție de constatările obținute)*

| Nr. | Punct de decizie | Dacă A, se continuă cu | Dacă B, se continuă cu |
|---|---|---|---|
| 1 | | | |

**2.2 Contingențe**

| Dacă acest element eșuează | Variantă de rezervă |
|---|---|
| Vectorul principal de initial access | |
| Canalul C2 principal | |
| Attack path principal | |

---

## 3. Echipa și repartizarea sarcinilor

| Operator | Rol | Domeniu principal | Disponibilitate |
|---|---|---|---|
| | | | |
| | | | |

**Separarea rolurilor și măsuri de protecție:**

| Persoană | Roluri deținute | Verificarea conflictelor | Separare, supervizare sau verificare externă necesară |
|---|---|---|---|
| | | ☐ Fără conflict ☐ Este necesară redefinirea domeniului | |

> Combinațiile de roluri interzise în anexa A nu pot face obiectul unei derogări. Atunci
> când separarea nu poate fi realizată, activitatea se restrânge, se desfășoară în mod
> deschis sau se obține sprijin extern calificat.

---

## 4. Infrastructură

### 4.1 Arhitectură

| Tier | Scop | Componente | Furnizor | Stare |
|---|---|---|---|---|
| 1 — Phishing / Initial Access | | | | ☐ Construit ☐ Testat |
| 2 — Short-haul / interactiv | | | | ☐ Construit ☐ Testat |
| 3 — Long-haul / Persistence | | | | ☐ Construit ☐ Testat |

### 4.2 Inventarul infrastructurii

| ID activ | Tip activ | Identificator | Furnizor | Tier | Scop | Creat la | De | Metoda de dezafectare | Data eliminării (UTC) | Verificat de |
|---|---|---|---|---|---|---|---|---|---|---|
| INF-001 | | | | | | | | | | |
| INF-002 | | | | | | | | | | |
| INF-003 | | | | | | | | | | |
| INF-004 | | | | | | | | | | |
| INF-005 | | | | | | | | | | |
| INF-006 | | | | | | | | | | |
| INF-007 | | | | | | | | | | |
| INF-008 | | | | | | | | | | |

### 4.3 Verificarea standardelor

| Nr. | Verificare | ✔ |
|---|---|---|
| 1 | Întregul trafic C2 este criptat | ☐ |
| 2 | Serverul echipei nu este accesibil din internet | ☐ |
| 3 | Logging-ul automat C2 este activat și verificat | ☐ |
| 4 | Nu se reutilizează infrastructură sau convenții de denumire dintr-o misiune anterioară | ☐ |
| 5 | Fiecare activ din inventar are un responsabil pentru dezafectare | ☐ |
| 6 | Sunt disponibile cel puțin două canale independente pentru fiecare etapă | ☐ |
| 7 | Furnizorii sursei și țintei permit fiecare activitate planificată | ☐ |
| 8 | Kill switch-urile și controalele de expirare C2 au fost testate | ☐ |

### 4.4 Reverificarea furnizorilor și terților

| Furnizor / parte și serviciu | Rândul din T02 / referința dovezii privind permisiunea | Condiții și notificare | Expirarea aprobării | Reverificat (UTC) | De | Valabil pentru plan? |
|---|---|---|---|---|---|---|
| | | | | | | ☐ |
| | | | | | | ☐ |
| | | | | | | ☐ |

---

## 5. Tooling

| Tool | Versiune | Scop | Testat în laborator | Artefacte lăsate | Nivel de aprobare |
|---|---|---|---|---|---|
| | | | ☐ | | |
| | | | ☐ | | |
| | | | ☐ | | |
| | | | ☐ | | |

> Niciun tool nu este introdus netestat în mediul-țintă. Testarea în laborator trebuie să
> utilizeze un build reprezentativ pentru țintă.

---

## 6. Evaluarea riscului operațional

| ID risc | Tehnică / activitate | Ce poate merge rău | Probabilitate | Impact | Măsură de reducere | Rollback | Mijloc de detectare a efectelor negative | Nivel de aprobare |
|---|---|---|---|---|---|---|---|---|
| R-01 | | | S/M/R | S/M/R | | | | |
| R-02 | | | | | | | | |
| R-03 | | | | | | | | |
| R-04 | | | | | | | | |
| R-05 | | | | | | | | |
| R-06 | | | | | | | | |
| R-07 | | | | | | | | |
| R-08 | | | | | | | | |

**Activități condiționate, cu impact ridicat, care necesită aprobare scrisă:**

> Nicio înregistrare nu poate înlătura o interdicție absolută. Dacă o acțiune nu are un
> rollback credibil sau o metodă de demonstrare mai sigură, planul trebuie revizuit.

| Activitate | Justificare | Aprobat de | Data |
|---|---|---|---|
| | | | |
| | | | |

---

## 7. Colectarea datelor

| Element | Valoare |
|---|---|
| Repository pentru dovezi | |
| Criptare | |
| Lista de acces | |
| **Fus orar — toate sistemele** | **UTC** |
| Sursa de timp aprobată | |
| Clock offset / toleranță permisă | |
| Offset-uri măsurate și ora verificării | |
| Session logging automat configurat pe | |
| Logging automat C2 configurat | ☐ Verificat |
| Standard pentru screenshot-uri | Fereastra completă, timestamp vizibil, redactare la momentul capturii |
| Sincronizarea timpului verificată pe toate sistemele operatorilor | ☐ Data: |
| Convenția identificatorilor dovezilor | |
| Algoritmul hash aprobat | |
| Repository pentru dovezile originale / zona copiilor de lucru | |

### 7.1 Specificațiile măsurilor

> Completați câte un rând pentru fiecare măsură care va apărea în T08. Atașați detalii dacă
> un rând este insuficient. Rezultatele „Neobservat” și măsurările care se încheie înainte de
> producerea unui eveniment sunt consemnate drept cenzurate, nu drept zero.

| ID măsură și decizia deservită | Definiție sau evenimente de început / sfârșit | Sursă și responsabil | Interval | Numărător / numitor sau eșantion | Excluderi / cenzurare | Validare și justificarea țintei |
|---|---|---|---|---|---|---|
| M-01 | | | | | | |
| M-02 | | | | | | |
| M-03 | | | | | | |

---

## 8. Comunicații

| Canal | Detalii | Testat |
|---|---|---|
| Intern Red Team | | ☐ |
| Linia de deconflictare | | ☐ **apel real efectuat** |
| Transmiterea SITREP | | ☐ |
| Urgență | | ☐ |

**Verificarea contactelor** *(toate numerele au fost apelate)*: Data ________ De ________

---

## 9. Planul de cleanup

*Fiecare modificare planificată și metoda de eliminare a acesteia. Alimentează T12.*

| ID cleanup | Modificarea planificată | Metoda de eliminare | Responsabil | Reversibilă? |
|---|---|---|---|---|
| MOD-001 | | | | ☐ |
| MOD-002 | | | | ☐ |
| MOD-003 | | | | ☐ |

| Control de restabilire | Metodă / referință | Responsabil | Verificator | Trigger sau termen |
|---|---|---|---|---|
| Dezactivarea tasking-ului și listener-elor C2 | | | | |
| Activarea kill switch-urilor și a expirării | | | | |
| Revocarea credențialelor, token-urilor, certificatelor și cheilor | | | | |
| Eliminarea payload-urilor, mecanismelor de persistence, conturilor și modificărilor de configurație | | | | |
| Păstrarea log-urilor necesare, apoi dezafectarea infrastructurii | | | | |
| Restabilirea comunicațiilor securizate și a monitorizării obișnuite | | | | |
| Verificarea faptului că restaurarea din backup sau imagine nu va reintroduce artefactele | | | | |
| Monitorizarea și soluționarea late callbacks și delayed tasks | | | | |

---

## 10. Calendar

| Data | Activitate | Responsabil |
|---|---|---|
| | Kick-off | |
| | Începerea execuției | |
| | Analiza de coordonare la jumătatea perioadei | |
| | Încheierea execuției | |
| | Cleanup finalizat | |
| | Proiectul raportului | |
| | Debrief tehnic | |
| | Raportul final | |
| | Brief executiv | |

---

## 11. Checklist pentru poarta G3

| Nr. | Criteriu | ✔ |
|---|---|---|
| 1 | Planul este complet și a fost prezentat tuturor operatorilor | ☐ |
| 2 | Infrastructura este construită, testată și inventariată, iar dezafectarea este documentată | ☐ |
| 3 | Fiecare tool și tehnică au fost testate în laborator | ☐ |
| 4 | Repository-ul pentru dovezi este pregătit; toate sistemele utilizează UTC | ☐ |
| 5 | Evaluarea riscului operațional este completă și include rollback-urile | ☐ |
| 6 | Canalul de deconflictare a fost testat printr-un apel real | ☐ |
| 7 | Există un plan de cleanup pentru fiecare modificare planificată | ☐ |
| 8 | **Echipa poate suspenda întreaga activitate în cel mult 15 minute de la primirea unei instrucțiuni de oprire** | ☐ |
| 9 | Permisiunile furnizorilor și terților au fost reverificate și dovedite | ☐ |
| 10 | Clock offset-urile se încadrează în toleranță și sunt consemnate | ☐ |
| 11 | Măsurile au definiții, surse și reguli de calitate aprobate | ☐ |
| 12 | Kill switch-urile C2, expirarea și dezactivarea de urgență au fost testate | ☐ |
| 13 | Au fost confirmați responsabilii pentru cleanup, restabilire, backup și callback-uri întârziate | ☐ |

| | Nume | Semnătură | Data |
|---|---|---|---|
| Red Team Lead | | | |
