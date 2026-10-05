# T08 — Raportul misiunii Red Team

## [DENUMIREA MISIUNII]

**[ORGANIZAȚIA EVALUATĂ]**

| Câmp | Valoare |
|---|---|
| Referința misiunii | RT-[AAAA]-[NNN] |
| Numele de cod | |
| Clasificare | |
| Versiunea raportului | |
| Perioada de execuție | |
| Data raportului | |
| Întocmit de | |
| Verificat QA de *(nu a participat la execuție)* | |
| Distribuție | *(numai persoane sau funcții nominalizate)* |

**Gestionare:** Prezentul raport conține informații privind vulnerabilități ale apărării
[ORGANIZAȚIEI]. Se distribuie exclusiv persoanelor nominalizate mai sus. Nu se retransmite.
Se păstrează potrivit regulilor de gestionare aferente clasificării [CLASIFICARE].

---

# 1. Rezumat executiv

> Cel mult 2 pagini. Secțiunea trebuie să poată fi citită independent: o persoană care nu
> citește nimic altceva trebuie să înțeleagă rezultatul. **Fără jargon, ID-uri de tehnică
> sau nume de instrumente.**

## 1.1 Întrebarea la care trebuia să răspundă misiunea

| Răspuns / observații |
|---|
| |
| |
| |
| |
## 1.2 Activitatea desfășurată

*Două sau trei fraze: adversarul emulat, postura inițială și perioada.*

| Răspuns / observații |
|---|
| |
| |
| |
| |
## 1.3 Rezultatul

| ID obiectiv | Obiectiv | Rezultat |
|---|---|---|
| O-01 | | ☐ Atins ☐ Parțial ☐ **Prevenit** |
| O-02 | | ☐ Atins ☐ Parțial ☐ **Prevenit** |
| O-03 | | ☐ Atins ☐ Parțial ☐ **Prevenit** |

| Răspuns / observații |
|---|
| |
| |
| |
| |
## 1.4 Ce a funcționat

> Obligatoriu. Controalele care au prevenit, întârziat sau detectat activitatea.

| Răspuns / observații |
|---|
| |
| |
| |
| |

## 1.5 Ce nu a funcționat

*Lacunele semnificative, în ordinea consecințelor.*

| Răspuns / observații |
|---|
| |
| |
| |
| |

## 1.6 Recomandări

*Primele trei-cinci, ordonate după reducerea riscului, nu după ușurința implementării.*

| Nr. | Recomandare | Aspecte tratate | Efort estimativ |
|---|---|---|---|
| 1 | | | |
| 2 | | | |
| 3 | | | |

## 1.7 Risc rezidual

*Ce rămâne expus dacă nu se schimbă nimic.*

| Răspuns / observații |
|---|
| |
| |
| |
| |
---

# 2. Metodologie și obiective

## 2.1 Abordare

Misiunea a fost desfășurată în temeiul Metodologiei Red Team [ORGANIZAȚIE], versiunea
[X.Y], utilizând modelul **Get In / Stay In / Act**, în baza Regulilor de angajare din
[DATA] și a Scrisorii de autorizare din [DATA].

## 2.2 Adversarul emulat

| Câmp | Valoare |
|---|---|
| Adversar | |
| Bază | ☐ Grup nominalizat ☐ Composite |
| **Nivelul capabilității emulate** | ☐ 1 ☐ 2 ☐ 3 ☐ 4 |
| Justificarea selectării | |
| Referința / versiunea Threat Profile | |
| Data-limită pentru threat intelligence | |
| Versiunea ATT&CK utilizată | |

> **Interpretarea gravității în raport cu nivelul amenințării.** Toate constatările din
> raport trebuie interpretate în raport cu nivelul capabilității emulate. O constatare
> accesibilă la nivelul 1 este mult mai urgentă decât aceeași constatare accesibilă numai la
> nivelul 3, deoarece mult mai mulți actori o pot exploata.

## 2.3 Obiective

| ID obiectiv | Obiectiv | Categorie | Metodă de verificare |
|---|---|---|---|
| O-01 | | | |
| O-02 | | | |
| O-03 | | | |

## 2.4 Ce NU a fost emulat

*Preluat din Threat Profile. Împiedică interpretarea raportului drept asigurare față de
adversar în ansamblu.*

| Comportamentul adversarului | Motivul excluderii | Risc rezidual netestat |
|---|---|---|
| | | |

---

# 3. Scenariu și sferă de aplicare

| Câmp | Valoare |
|---|---|
| Postură inițială | |
| Referința scenariului / flow-ului | |
| Perioada de execuție | |
| Zile lucrătoare de execuție | |
| Covert / open | |
| Social engineering inclus în sfera de aplicare | ☐ Da ☐ Nu |
| Activități fizice incluse în sfera de aplicare | ☐ Da ☐ Nu |

**Incluse în sfera de aplicare:**

**Exclus:**

**Constrângeri care au afectat rezultatul:**

| Răspuns / observații |
|---|
| |
| |
| |
| |
---

# 4. Narațiunea atacului

> Numai etapele critice, numerotate și în ordine cronologică. Succesiunea completă a
> acțiunilor este în apendicele A. Fiecare etapă trebuie să conțină o observație defensivă.

## Etapa 1 — [TITLU]

| Câmp | Valoare |
|---|---|
| Data și ora (UTC) | |
| Acțiunea întreprinsă | |
| Intenție | |
| Rezultat | |
| Tehnică | [ID și denumire ATT&CK] |
| Dovadă | [referință] |
| **Observație defensivă** | ☐ Prevenit ☐ Detectat și alertat ☐ Numai telemetrie ☐ Fără vizibilitate. Detalii: |

## Etapa 2 — [TITLU]

| Câmp | Valoare |
|---|---|
| Data și ora (UTC) | |
| Acțiunea întreprinsă | |
| Intenție | |
| Rezultat | |
| Tehnică | |
| Dovadă | |
| **Observație defensivă** | |

*(se repetă pentru fiecare etapă critică)*

## Diagrama attack path-ului

*(se inserează diagrama: de la postura inițială, prin fiecare host/cont, până la obiective,
cu tehnicile etichetate și interacțiunile controalelor marcate distinct)*

---

# 5. Evaluarea detectării și răspunsului

> Construită prin reconciliere cu componenta defensivă. Consemnați separat fiecare etapă a
> controlului. O acțiune blocată poate demonstra prevenirea, dar nu oferă automat o ocazie
> valabilă pentru măsurarea telemetriei sau detectării efectului urmărit.

**Evidența acțiunii și observabilității**

| ID acțiune | Început / sfârșit (UTC) | Rezultatul încercării | Efectul urmărit a fost atins? | Ref. telemetrie / primul eveniment | Ref. alertă / creată (UTC) |
|---|---|---|---|---|---|
| | | Neîncercată / înlocuită / blocată / executată | ☐ Da ☐ Nu | | |
| | | | | | |
| | | | | | |
| | | | | | |
| | | | | | |
| | | | | | |
| | | | | | |
| | | | | | |

**Evidența investigării, containment-ului și restabilirii**

| ID acțiune | Prima examinare (UTC) / dovadă | Primul containment eficace (UTC) / dovadă | Acces eliminat (UTC) | Restabilire finalizată (UTC) | Evaluare / limitare |
|---|---|---|---|---|---|
| | | | | | |
| | | | | | |
| | | | | | |
| | | | | | |
| | | | | | |
| | | | | | |
| | | | | | |
| | | | | | |

## 5.1 Sinteza timpilor

> Utilizați definițiile aprobate în T04. „Neobservat până la încheierea intervalului” este
> cenzurat, nu zero. Raportați numărul și distribuția observațiilor; nu sugerați o precizie
> care nu este susținută de dovezi.

| ID / denumire măsură | Interval de măsurare și definiția evenimentului | Eșantion (n) | Observate | Cenzurate | Mediană | Interval |
|---|---|---|---|---|---|---|
| Timp până la telemetrie | | | | | | |
| Timp până la alertă | | | | | | |
| Timp până la examinare | | | | | | |
| Timp până la răspuns | | | | | | |
| Timp până la limitare | | | | | | |
| Timp până la restabilire | | | | | | |
| Dwell time | | | | | | |

| Sursa datelor temporale, validare și limitări |
|---|
| |
| |
| |

## 5.2 Profilul coverage gaps

> Cele trei categorii au responsabili, costuri și termene diferite. Acest tabel transformă
> constatările într-o discuție privind bugetul.

| Categoria lacunei | Număr | Responsabil cu răspundere decizională | Acțiune necesară | Țintă convenită local |
|---|---|---|---|---|
| **Fără telemetrie utilizabilă** | | Ingineria platformei / endpoint-urilor | Instituirea sau repararea sursei și validarea calității datelor | |
| **Telemetrie prezentă, fără detectare eficace** | | Detection engineering | Proiectarea și validarea detectării prin replay | |
| **Alertă generată, neexaminată în intervalul necesar** | | Conducerea operațiunilor defensive | Corectarea capacității, rutării, priorității sau procedurii și repetarea exercițiului | |

## 5.3 Predicție și realitate

*Preluat din ipotezele privind attack paths, scrise înainte de execuție. Diferența dintre
ceea ce organizația a considerat că realizează controalele și ceea ce au realizat în fapt.*

| Control | Rezultat anticipat | Rezultat efectiv | Lacună |
|---|---|---|---|
| | | | |
| | | | |
| | | | |

---

# 6. Acoperirea tehnicilor și controalelor

**Rezultatul acțiunilor planificate**

| ID acțiune | Tactică / ID și denumire ATT&CK | Procedura utilizată | Rezultat | Motivul neexecutării sau înlocuirii | Ref. dovadă |
|---|---|---|---|---|---|
| A-01 | | | Neîncercată / înlocuită / blocată / executată | | |
| A-02 | | | | | |
| A-03 | | | | | |
| A-04 | | | | | |
| A-05 | | | | | |
| A-06 | | | | | |
| A-07 | | | | | |
| A-08 | | | | | |
| A-09 | | | | | |
| A-10 | | | | | |
| A-11 | | | | | |
| A-12 | | | | | |
| A-13 | | | | | |
| A-14 | | | | | |
| A-15 | | | | | |

**Rezultatul etapelor de control**

| ID acțiune | Prevenit | Executat | Telemetrie utilizabilă | Alertă | Investigat | Contained | Restabilit |
|---|---|---|---|---|---|---|---|
| A-01 | ☐ | ☐ | ☐ | ☐ | ☐ | ☐ N/A | ☐ N/A |
| A-02 | ☐ | ☐ | ☐ | ☐ | ☐ | ☐ N/A | ☐ N/A |
| A-03 | ☐ | ☐ | ☐ | ☐ | ☐ | ☐ N/A | ☐ N/A |
| A-04 | ☐ | ☐ | ☐ | ☐ | ☐ | ☐ N/A | ☐ N/A |
| A-05 | ☐ | ☐ | ☐ | ☐ | ☐ | ☐ N/A | ☐ N/A |
| A-06 | ☐ | ☐ | ☐ | ☐ | ☐ | ☐ N/A | ☐ N/A |
| A-07 | ☐ | ☐ | ☐ | ☐ | ☐ | ☐ N/A | ☐ N/A |
| A-08 | ☐ | ☐ | ☐ | ☐ | ☐ | ☐ N/A | ☐ N/A |
| A-09 | ☐ | ☐ | ☐ | ☐ | ☐ | ☐ N/A | ☐ N/A |
| A-10 | ☐ | ☐ | ☐ | ☐ | ☐ | ☐ N/A | ☐ N/A |
| A-11 | ☐ | ☐ | ☐ | ☐ | ☐ | ☐ N/A | ☐ N/A |
| A-12 | ☐ | ☐ | ☐ | ☐ | ☐ | ☐ N/A | ☐ N/A |
| A-13 | ☐ | ☐ | ☐ | ☐ | ☐ | ☐ N/A | ☐ N/A |
| A-14 | ☐ | ☐ | ☐ | ☐ | ☐ | ☐ N/A | ☐ N/A |
| A-15 | ☐ | ☐ | ☐ | ☐ | ☐ | ☐ N/A | ☐ N/A |

| Măsură | Numărător | Numitor | Excluderi / cenzurate | Rezultat | Calitate sau incertitudine |
|---|---|---|---|---|---|
| Prevention | | | | | |
| Execution | | | | | |
| Telemetry | | | | | |
| Detection | | | | | |
| Examination | | | | | |
| Containment | | | | | |
| Recovery | | | | | |

---

# 7. Observații pozitive

> **Obligatoriu.** Controale, detectări, acțiuni de răspuns și decizii de proiectare care au
> funcționat. Un raport fără această secțiune este inexact și va fi perceput ca un atac la
> adresa apărătorilor.

| Nr. | Observație | Ce a prevenit sau detectat | Recomandare |
|---|---|---|---|
| P-01 | | | Menținere / extindere la: |
| P-02 | | | |
| P-03 | | | |
| P-04 | | | |
| P-05 | | | |

---

# 8. Constatări

*Consemnați detaliile complete ale fiecărei constatări în formularul T09. Tabel-sinteză:*

| ID | Titlu | Gravitate | Categorie | Active afectate | Responsabil | Termen |
|---|---|---|---|---|---|---|
| RT-[NNN]-001 | | | | | | |
| RT-[NNN]-002 | | | | | | |
| RT-[NNN]-003 | | | | | | |
| RT-[NNN]-004 | | | | | | |
| RT-[NNN]-005 | | | | | | |

| Gravitate | Număr |
|---|---|
| Critică | |
| Ridicată | |
| Medie | |
| Scăzută | |
| Informativă | |

**Gravități contestate** *(se consemnează poziția clientului)*:

| Constatare | Evaluarea Red Team | Evaluarea organizației evaluate | Temeiul declarat |
|---|---|---|---|
| | | | |
| | | | |
| | | | |

---

# 9. Rezultatele social engineering

*Numai rate. Rezultatele individuale nu sunt raportate niciodată.*

| Indicator | Valoare |
|---|---|
| E-mailuri transmise | |
| Delivery rate | |
| Click rate | |
| Rata de transmitere a credențialelor | |
| **Rata de raportare** | |
| **Timp până la prima raportare a unui utilizator** | |

**Evaluare:**

| Răspuns / observații |
|---|
| |
| |
| |
| |
---

# 10. Concluzie și declarație de risc

## 10.1 Evaluare generală

| Răspuns / observații |
|---|
| |
| |
| |
| |
## 10.2 Cel mai important aspect al raportului

*Un paragraf. Dacă cititorul acționează asupra unui singur aspect, acesta este.*

| Răspuns / observații |
|---|
| |
| |
| |
| |
## 10.3 Risc rezidual

| Răspuns / observații |
|---|
| |
| |
| |
| |
## 10.4 Următoarea evaluare recomandată

| Câmp | Valoare |
|---|---|
| Tip sugerat | |
| Perioadă sugerată | |
| Domeniu principal sugerat | |

---

# Apendice

## Apendicele A — Timeline complet

| Nr. | Ora (UTC) | Actor | Acțiune | Host | Rezultat | Ref. dovadă |
|---|---|---|---|---|---|---|
| 1 | | | | | | |
| 2 | | | | | | |
| 3 | | | | | | |
| 4 | | | | | | |
| 5 | | | | | | |
| 6 | | | | | | |
| 7 | | | | | | |
| 8 | | | | | | |
| 9 | | | | | | |
| 10 | | | | | | |

## Apendicele B — Evidența activității

> Predată Trusted Agent la finalizarea execuției. O evidență completă, cu timestamp-uri, a
> activității Red Team și adreselor-sursă, care permite componentei defensive să își
> reconcilieze telemetria și să deosebească activitatea Red Team de orice altă activitate.

## Apendicele C — Indicators of Compromise generați

| Tip | Indicator | Scop | Perioada de activitate |
|---|---|---|---|
| | | | |
| | | | |
| | | | |
| | | | |
| | | | |
| | | | |
| | | | |
| | | | |

## Apendicele D — Indexul dovezilor

**Colectare și proveniență**

| ID dovadă | Descriere | Sursă originală / path sau query | Colector / metodă | Colectat (UTC) și offset cunoscut |
|---|---|---|---|---|
| E-001 | | | | |
| E-002 | | | | |
| E-003 | | | | |
| E-004 | | | | |
| E-005 | | | | |
| E-006 | | | | |
| E-007 | | | | |
| E-008 | | | | |

**Integritate și gestionare**

| ID dovadă | Algoritm și valoare hash | Locația repository-ului original | Clasificare / acces | Transformare, redactare sau ref. copie de lucru |
|---|---|---|---|---|
| E-001 | | | | |
| E-002 | | | | |
| E-003 | | | | |
| E-004 | | | | |
| E-005 | | | | |
| E-006 | | | | |
| E-007 | | | | |
| E-008 | | | | |

**Evidența transferului și accesului, atunci când este necesar chain of custody**

| ID dovadă | De la / către | Persoană | Scop | Data / ora (UTC) | Integritate verificată |
|---|---|---|---|---|---|
| | | | | | ☐ |
| | | | | | ☐ |
| | | | | | ☐ |

## Apendicele E — Atestarea cleanup-ului

*Formularul T12 semnat este atașat.*

| Câmp | Valoare |
|---|---|
| Toate modificările au fost eliminate și verificate | ☐ Da ☐ Nu — elemente restante predate către: |
| Infrastructura a fost dezafectată | ☐ |
| Credențialele au fost distruse | ☐ |
| Tasking-ul C2, listener-ele, kill switch-urile și delayed tasks au fost dezactivate | ☐ |
| Certificatele, token-urile, cheile și canalele misiunii au fost revocate sau închise | ☐ |
| Restaurarea din backup / imagine a fost evaluată pentru reintroducerea artefactelor | ☐ |
| Monitorizarea callback-urilor întârziate a fost finalizată sau predată unui responsabil nominalizat | ☐ |
| Atestat de | |

## Apendicele F — Evidențele deconflictării

*Evidențele T07 sunt atașate.*

## Apendicele G — Modificările ROE

*Apendicele 9 la ROE este atașat.*

---

# Avizarea calității raportului

| Nr. | Verificare | ✔ |
|---|---|---|
| 1 | Rezumatul executiv poate fi citit independent, are cel mult 2 pagini și nu conține jargon | ☐ |
| 2 | Fiecare afirmație este trasabilă la dovezile menționate | ☐ |
| 3 | Observațiile pozitive sunt prezente și substanțiale | ☐ |
| 4 | Fiecare etapă a narațiunii conține o observație defensivă | ☐ |
| 5 | Profilul lacunelor deosebește lipsa telemetriei utilizabile / lipsa detectării eficace / alerta neexaminată | ☐ |
| 6 | Nicio persoană nu este nominalizată sau identificabilă | ☐ |
| 7 | Documentul nu conține credențiale, token-uri, chei sau volume mari de date sensibile | ☐ |
| 8 | Screenshot-urile sunt redactate, iar timestamp-urile sunt vizibile | ☐ |
| 9 | Evaluările gravității sunt consecvente | ☐ |
| 10 | Fiecare constatare conține o cauză principală, nu reformularea unui simptom | ☐ |
| 11 | Fiecare constatare are responsabil, termen și metodă de retestare | ☐ |
| 12 | Constatările care nu pot fi prevenite conțin o recomandare de detectare | ☐ |
| 13 | Nivelul amenințării este precizat, iar gravitatea este interpretată în raport cu acesta | ☐ |
| 14 | Evidența activității și atestarea cleanup-ului sunt atașate | ☐ |
| 15 | Clasificarea și distribuția sunt corecte | ☐ |
| 16 | Raportul a fost verificat de o persoană care nu a participat la execuție | ☐ |
| 17 | ID-urile dovezilor, hash-urile, originalele și referințele din raport corespund | ☐ |
| 18 | Rezultatele temporale indică eșantionul, observațiile cenzurate și limitările | ☐ |
| 19 | Fiecare raport indică numărătorul, numitorul și excluderile | ☐ |
| 20 | Comparațiile identifică modificările sferei de aplicare, amenințării, ATT&CK și surselor de date | ☐ |
| 21 | Cleanup-ul acoperă C2, secrets, canalele, restabilirea, backup-urile și efectele întârziate | ☐ |

| | Nume | Semnătură | Data |
|---|---|---|---|
| Autor (Red Team Lead) | | | |
| Verificator QA | | | |
