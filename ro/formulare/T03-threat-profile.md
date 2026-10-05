# T03 — Threat Profile

> Se utilizează în **faza 2**. Este întocmit de Threat Intelligence Analyst și verificat
> de un coleg care nu va participa la execuție. Devine apendicele 8 la ROE.

| Câmp | Valoare |
|---|---|
| Referința misiunii | |
| Versiunea profilului | |
| Autor | |
| Verificator independent | |
| Data | |
| Data-limită pentru threat intelligence | |
| Versiunea și data ATT&CK | |
| Clasificarea pentru gestionarea surselor | |
| ID scenariu/scenarii | SC-01 |

---

## 1. Selectarea adversarului

**1.1 Ce deține organizația și ar urmări un adversar să obțină?**

| Răspuns / observații |
|---|
| |
| |
| |
| |
**1.2 Ce threat actors au atacat organizații similare în ultimele 24 de luni?**

| Threat actor | Sector / zonă geografică vizată | Sursă |
|---|---|---|
| | | |

**1.3 Ce adversari au acționat împotriva organizației evaluate?**

*Pe baza istoricului incidentelor, a escaladărilor componentei defensive și a telemetriei de phishing.*

| Răspuns / observații |
|---|
| |
| |
| |
| |
**1.4 Adversarul selectat și justificarea** *(un paragraf, fundamentat prin dovezi)*

| Răspuns / observații |
|---|
| |
| |
| |
| |

**1.5 Evaluarea surselor**

> Utilizați ID-uri stabile ale surselor în întregul profil. Fiabilitatea privește sursa;
> nivelul de încredere privește informația. Consemnați incertitudinea și opiniile divergente,
> fără a le elimina prin omisiune.

| ID sursă | Titlu / origine și link sau referință în repository | Publicat / observat | Fiabilitate | Nivel de încredere în informație | Coroborare, opinii divergente și limitări |
|---|---|---|---|---|---|
| S-01 | | | Ridicată / Medie / Scăzută | Ridicat / Mediu / Scăzut | |
| S-02 | | | Ridicată / Medie / Scăzută | Ridicat / Mediu / Scăzut | |
| S-03 | | | Ridicată / Medie / Scăzută | Ridicat / Mediu / Scăzut | |
| S-04 | | | Ridicată / Medie / Scăzută | Ridicat / Mediu / Scăzut | |

| Limitare analitică sau explicație alternativă | Efect asupra selectării adversarului sau scenariului |
|---|---|
| | |
| | |
---

## 2. Identitatea adversarului

| Câmp | Valoare |
|---|---|
| Denumire | |
| Aliasuri | |
| ID grup ATT&CK | |
| Baza profilului | ☐ Grup nominalizat ☐ **Composite** — construit dintr-o categorie de amenințări |
| Pentru composite: categoria emulată | |
| ID-urile surselor de atribuire | |

---

## 3. Motivație și obiective

| Câmp | Valoare |
|---|---|
| Motivația principală | ☐ Spionaj ☐ Câștig financiar ☐ Perturbare ☐ Hacktivism ☐ Pre-positioning |
| Motivația secundară | |
| **Ce ar urmări acest actor de la ACEASTĂ organizație?** | |
| Obiective finale probabile | |
| Toleranță față de detectare | ☐ Scăzută — se retrage ☐ Medie ☐ Ridicată — continuă în mod vizibil |
| Toleranță față de distrugere | ☐ Niciuna ☐ Oportunistă ☐ Deliberată |

---

## 4. Evaluarea capabilității

| Câmp | Valoare |
|---|---|
| **Nivel de capabilitate** | ☐ 1 Oportunist ☐ 2 Grup infracțional orientat către o țintă ☐ 3 Advanced Persistent Threat ☐ 4 Insider-enabled |
| Justificare | |
| Resurse | |
| Răbdare / dwell time tipic | |
| Capabilitate proprie | ☐ Niciuna ☐ Instrumente publice modificate ☐ Bespoke |
| Utilizarea vulnerabilităților zero-day | ☐ Neobservată ☐ Ocazională ☐ Curentă |

---

## 5. Initial Access

*Ordonate după frecvența observată în raportări.*

| Rang | Vector | ID ATT&CK | Detaliu observat | Se emulează? |
|---|---|---|---|---|
| 1 | | | | ☐ |
| 2 | | | | ☐ |
| 3 | | | | ☐ |

---

## 6. Tooling

| Categorie | Tooling cunoscut | Tooling utilizat pentru emulare |
|---|---|---|
| Initial Access | | |
| Execution | | |
| C2 | | |
| Credential Access | | |
| Lateral Movement | | |
| Exfiltration | | |
| Living-off-the-land binaries | | |

---

## 7. Modelul infrastructurii

| Atribut | Modelul adversarului | Emulare |
|---|---|---|
| Furnizori de hosting | | |
| Convenție de denumire a domeniilor | | |
| Vârsta / clasificarea domeniilor | | |
| Practici privind certificatele TLS | | |
| Protocol C2 | | |
| Intervalul și jitter-ul beacon-ului | | |
| Utilizarea de redirectors | | |

---

## 8. Setul de TTP-uri — structura execuției

> Acest tabel formează structura planului misiunii, a evidenței execuției și a matricei de
> acoperire din raport. Coloana „Procedură” este cea operațională: o componentă defensivă
> detectează proceduri, nu identificatori de tehnică.

| ID acțiune | Tactică | ID și denumire tehnică | Procedură: metoda exactă care va fi utilizată | ID surse | Nivel de aprobare | Planificată |
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

## 9. Indicatori cunoscuți

*Păstrați de Control Team pentru deconflictare și comunicați componentei defensive în etapa
convenită. Într-o misiune covert, aceștia nu sunt utilizați pentru a crea detectări în avans,
cu excepția cazului în care ROE prevăd explicit acest obiectiv.*

| Tip | Indicator | ID sursă | Se utilizează în emulare? |
|---|---|---|---|
| | | | ☐ |
| | | | ☐ |
| | | | ☐ |

---

## 10. Tehnici care nu sunt emulate

> Obligatoriu. Emularea este întotdeauna parțială. Consemnarea omisiunii împiedică
> interpretarea raportului drept asigurare față de adversar în ansamblu.

| Comportamentul adversarului | Temeiul excluderii | Risc rezidual neevaluat |
|---|---|---|
| | ☐ Siguranță ☐ Juridic ☐ Capabilitate ☐ ROE | |
| | ☐ Siguranță ☐ Juridic ☐ Capabilitate ☐ ROE | |

---

## 11. Ipoteze privind attack paths

> Se consemnează înainte de execuție. Predicțiile constituie ele însele o constatare.
> Diferența dintre ceea ce organizația consideră că realizează controalele sale și ceea ce
> realizează în fapt reprezintă unul dintre cele mai utile rezultate ale unei misiuni.

### Ipoteza 1

| Câmp | Valoare |
|---|---|
| ID ipoteză / ID obiectiv | H-01 / O-__ |
| Traseu | De la punctul de pornire la ... și la obiectiv |
| ID-urile acțiunilor planificate | A-__ → A-__ → A-__ |
| Controale care se preconizează că vor fi întâlnite | |
| **Predicție: prevenit / detectat / omis la fiecare etapă** | |
| Nivel de încredere | ☐ Scăzut ☐ Mediu ☐ Ridicat |
| ID surse și ipoteze principale | |

### Ipoteza 2

| Câmp | Valoare |
|---|---|
| ID ipoteză / ID obiectiv | H-02 / O-__ |
| Traseu | |
| ID-urile acțiunilor planificate | |
| Controale preconizate | |
| **Predicție** | |
| Nivel de încredere | |
| ID surse și ipoteze principale | |

### Ipoteza 3

| Câmp | Valoare |
|---|---|
| ID ipoteză / ID obiectiv | H-03 / O-__ |
| Traseu | |
| ID-urile acțiunilor planificate | |
| Controale preconizate | |
| **Predicție** | |
| Nivel de încredere | |
| ID surse și ipoteze principale | |

**Reprezentarea attack path-ului**

| Element | Valoare |
|---|---|
| Referință Attack Flow sau diagramă | |
| Versiune / dată | |
| ID-uri de flow sau node utilizate în T04 și T08 | |

---

## 12. Sinteza reconnaissance-ului asupra țintei

| Domeniu | Constatări | Risc imediat? |
|---|---|---|
| External attack surface | | ☐ |
| Servicii expuse | | ☐ |
| Identity providers și federare | | ☐ |
| Technology stack | | ☐ |
| Expunerea publică a personalului | | ☐ |
| Expunerea credențialelor în breach corpora | | ☐ |
| Supply chain / accesul terților | | ☐ |

> Orice element marcat drept risc imediat trebuie raportat fără întârziere Trusted Agent.
> Acesta nu trebuie păstrat pentru raportul final.

Raportat către Trusted Agent la data de: ____________ de: ____________

---

## 13. Avizare

| | Nume | Semnătură | Data |
|---|---|---|---|
| Autor | | | |
| Verificator independent | | | |
| Red Team Lead | | | |
