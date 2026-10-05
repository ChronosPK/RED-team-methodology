# T01 — Cerere de inițiere și calificare a misiunii

> Se utilizează în **faza 0**. Se completează de Red Team Lead împreună cu
> clientul solicitant. Se încheie cu decizia de acceptare sau respingere la poarta G0.

| Câmp | Valoare |
|---|---|
| Referința cererii | RT-REQ-[AAAA]-[NNN] |
| Data primirii | |
| Solicitant (nume, funcție) | |
| Organizația / structura vizată | |
| Perioada solicitată | |
| Red Team Lead care efectuează evaluarea | |

---

## 1. Solicitarea

**1.1 Ce se solicită, în formularea clientului?**

| Răspuns / observații |
|---|
| |
| |
| |
**1.2 Ce decizie va lua clientul pe baza rezultatului?**

> *Dacă nu se poate răspunde la această întrebare, misiunea nu poate avea loc. Opriți-vă aici.*

| Răspuns / observații |
|---|
| |
| |
| |

**1.3 Ce a determinat formularea cererii în acest moment?**
*(Sistem nou, incident, constatare de audit, presiune de reglementare, solicitarea conducerii, ciclu planificat)*

| Răspuns / observații |
|---|
| |
| |
| |
---

## 2. Contextul misiunii / operațional

**2.1 Ce misiune sau serviciu operațional este expus riscului?**
*Porniți de la serviciu, nu de la sisteme.*

| Răspuns / observații |
|---|
| |
| |
| |
**2.2 Cum se manifestă eșecul serviciului respectiv?**
*Impact operațional, financiar, asupra siguranței, reputației sau misiunii.*

| Răspuns / observații |
|---|
| |
| |
| |
**2.3 Ce sisteme, identități, date și furnizori susțin serviciul respectiv?**

| Tip | Identificator | Responsabil |
|---|---|---|
| | | |
| | | |

**2.4 Ce nu trebuie întrerupt în nicio situație și în ce perioade?**

| Răspuns / observații |
|---|
| |
| |
| |
---

## 3. Selectarea instrumentului

**3.1 De ce are nevoie în fapt clientul?**

| Dacă solicită... | Se furnizează... | ✔ |
|---|---|---|
| O listă a punctelor slabe dintr-un parc de sisteme | Evaluare a vulnerabilităților — se direcționează către serviciul corespunzător | ☐ |
| Dovada că un anumit sistem poate fi compromis | Test de penetrare | ☐ |
| Să afle dacă mecanismele sale de detectare funcționează | **Exercițiu Purple Team (SL-4)** | ☐ |
| Să afle dacă un atac realist produce un impact fără a fi detectat | **Misiune Red Team (SL-1 / SL-2)** | ☐ |
| Să își instruiască echipa în condiții de presiune | **Red Team pentru exerciții (SL-3)** | ☐ |
| Asigurare de reglementare sau de audit | Test bazat pe amenințări, cu atestare formală | ☐ |

**3.2 Instrumentul selectat și justificarea:**

| Răspuns / observații |
|---|
| |
| |
| |
---

## 4. Cerințe minime pentru o apărare justificabilă

*A se vedea Metodologia Red Team, punctul 4.5. Se aplică SL-1 și SL-2.*

| Nr. | Condiție | Îndeplinită? | Dovadă / observație |
|---|---|---|---|
| 1 | Există colectare centralizată a jurnalelor pentru terminale și identități | ☐ | |
| 2 | O persoană examinează alertele, într-un program definit | ☐ | |
| 3 | Există un proces documentat de răspuns la incidente | ☐ | |
| 4 | Responsabilitatea asupra activelor este cunoscută suficient pentru a direcționa o constatare | ☐ | |
| 5 | Măsurile rezultate dintr-o evaluare anterioară au fost implementate | ☐ | |

**Condiții neîndeplinite: ____ / 5**

> În cazul în care trei sau mai multe condiții nu sunt îndeplinite, se recomandă în scris
> un exercițiu Purple Team sau un exercițiu de simulare.

---

## 5. Proiectul obiectivelor

*Cel mult trei. Specifice și verificabile. A se vedea anexa D, punctul D.5.*

| ID obiectiv | Proiectul obiectivului | Categorie (Protejare/Detectare/Răspuns/Restabilire) |
|---|---|---|
| O-01 | | |
| O-02 | | |
| O-03 | | |

---

## 6. Pregătirea guvernanței

| Întrebare | Răspuns |
|---|---|
| Ce entitate juridică deține fiecare sistem, identitate, locație și set de date propus pentru includere în domeniul de aplicare? | |
| Cine deține în fapt autoritatea responsabilă de sistem și poate consimți la acces? | |
| Cine poate accepta riscul operațional în calitate de autoritate de aprobare? | |
| Autoritatea și acceptarea riscului sunt deținute separat? | ☐ Da ☐ Nu — dacă da, sunt necesare ambele aprobări |
| Un titular al autorității face parte din funcția evaluată și, dacă da, cum va fi protejată independența rezultatelor? | |
| Cine va fi Trusted Agent? | |
| Persoana propusă este din afara Red Team și a componentei defensive? | ☐ Da ☐ Nu |
| Cine **nu** trebuie să cunoască desfășurarea activității și de ce? | |
| Serviciile găzduite, ale terților sau furnizorilor constituie sursă, țintă ori dependență? | ☐ Da ☐ Nu — se enumeră furnizorii și permisiunile directe necesare: |
| Este inclus în domeniul de aplicare vreun sistem reglementat, clasificat sau critic pentru siguranță? | ☐ Da ☐ Nu |
| Ce evaluări juridice, de protecție a datelor, de reglementare, contractuale sau ale furnizorilor sunt necesare? | |
| Cine va răspunde de corectarea deficiențelor și are capacitatea necesară? | |

---

## 7. Evaluarea inițială a riscului și efortului

| Factor | Evaluare |
|---|---|
| Risc operațional pentru mediul de producție | ☐ Scăzut ☐ Mediu ☐ Ridicat |
| Complexitate juridică | ☐ Scăzută ☐ Medie ☐ Ridicată |
| Sensibilitatea datelor din domeniul de aplicare | ☐ Scăzută ☐ Medie ☐ Ridicată |
| Durata estimată a execuției | |
| Durata calendaristică totală estimată | |
| Capacitatea echipei este disponibilă | ☐ Da ☐ Nu — conflicte: |
| Deficit de competențe | |
| Este necesar un evaluator extern sau un specialist | ☐ Da ☐ Nu — motiv: |

---

## 8. Decizia la poarta G0

*Decizia aparține Head of Red Team.*

| Nr. | Criteriu | ✔ |
|---|---|---|
| 1 | Este identificată o misiune sau un serviciu operațional nominalizat | ☐ |
| 2 | Clientul poate preciza decizia pe care o va fundamenta rezultatul | ☐ |
| 3 | Activitatea Red Team este instrumentul corect | ☐ |
| 4 | Cerințele minime pentru o apărare justificabilă sunt îndeplinite sau a fost propusă o alternativă | ☐ |
| 5 | Există o autoritate de aprobare propusă care dispune de autoritatea necesară | ☐ |
| 6 | O autoritate responsabilă de sistem propusă poate autoriza explicit target space-ul propus | ☐ |
| 7 | Pot fi obținute permisiunile necesare de la terți și furnizori | ☐ |
| 8 | Echipa dispune de capacitate, separare și competențe sau de un plan pentru a le obține | ☐ |

**Decizie:** ☐ Acceptare ☐ Acceptare cu condiții ☐ Respingere — alternativă recomandată

**Condiții / alternativă recomandată:**

| Răspuns / observații |
|---|
| |
| |
| |
**Justificare (obligatorie, inclusiv în cazul acceptării):**

| Răspuns / observații |
|---|
| |
| |
| |

| | |
|---|---|
| Decizia a fost luată de | |
| Funcție | Head of Red Team |
| Semnătura | ................................................ |
| Data | ................................................ |
