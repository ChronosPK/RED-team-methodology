# T07 — Evidența deconflictării

> Se întocmește câte o evidență pentru fiecare eveniment de deconflictare. Este completată
> de Red Team Lead și contrasemnată de Trusted Agent.
>
> **Timeline-ul consemnat aici devine dovadă privind timpul de răspuns în raport.**
> Consemnați orele cu precizie.

| Câmp | Valoare |
|---|---|
| Referința misiunii | |
| Numărul evidenței de deconflictare | |
| Data | |

---

## 1. Solicitarea

| Câmp | Valoare |
|---|---|
| Ora primirii solicitării (UTC) | |
| Primită de | |
| Inițiată de (nume, funcție) | |
| Canal utilizat | ☐ Linia de deconflictare ☐ Variantă de rezervă ☐ Altul: |
| A fost utilizat cuvântul codificat? | ☐ Da ☐ Nu ☐ N/A |

**Activitatea observată, astfel cum a fost raportată:**

| Câmp | Valoare |
|---|---|
| Ora activității observate (UTC) | |
| Adresa-sursă observată | |
| Sistem(e) țintă | |
| Comportament observat | |
| Sursa detectării (tool / ID alertă) | |
| Elementul care a declanșat escaladarea | |

---

## 2. Acțiunea Red Team

| Câmp | Valoare |
|---|---|
| Ora opririi activității în zona afectată (UTC) | |
| Oprită de | |
| Jurnalele operatorilor verificate | ☐ Da — referință: |
| Log-uri C2 verificate | ☐ Da |
| Session logs verificate | ☐ Da |

---

## 3. Stabilire

| Câmp | Valoare |
|---|---|
| **Stabilire** | ☐ **Atribuibilă Red Team** ☐ **Neatribuibilă** |
| Ora stabilirii (UTC) | |
| Ora comunicării stabilirii (UTC) | |
| **Timp scurs: solicitare-răspuns** | ______ minute (interval convenit: ______) |
| Intervalul convenit a fost respectat | ☐ Da ☐ Nu. Temei: |

> Stabilirea unei atribuiri probabile nu este permisă. Atunci când evidențele nu permit
> atribuirea, se stabilește că activitatea nu este atribuibilă și aceasta este gestionată
> drept intruziune reală până la stabilirea contrariului.

**Dacă este atribuibilă, activitatea corespunzătoare:**

| Câmp | Valoare |
|---|---|
| Operator | |
| Referința jurnalului operatorului | |
| Tehnică | |
| În limitele ROE | ☐ Da ☐ Nu. A se vedea secțiunea 5. |

**Dacă nu este atribuibilă:**

| Nr. | Acțiune | Ora (UTC) | De |
|---|---|---|---|
| 1 | Întreaga activitate Red Team a încetat | | |
| 2 | Trusted Agent a fost informat utilizând cuvântul codificat | | |
| 3 | Dovezile au fost conservate | | |
| 4 | Evidența activității a fost predată | | |
| 5 | Autoritatea de aprobare a fost informată | | |
| 6 | Funcțiile juridică / protecția datelor / reglementare au fost informate, atunci când era necesar | | |

**Starea misiunii:** ☐ Suspendată ☐ Încetată definitiv ☐ Reluată — autoritate:

---

## 4. Dovezi privind răspunsul defensiv

*Consemnate pentru raport. Aceasta este o măsurare, nu o judecată și nu este utilizată
niciodată pentru evaluarea persoanelor.*

| Eveniment | Ora (UTC), sursa și referința dovezii |
|---|---|
| Ora acțiunii Red Team (UTC) | |
| Prima telemetrie înregistrată (UTC) | |
| Alertă generată (UTC) | |
| Începerea examinării (UTC) | |
| Escaladare inițiată (UTC) | |
| Prima acțiune eficace de containment (UTC) | |
| Eliminarea accesului evaluat (UTC) | |
| Restabilire finalizată (UTC), dacă este cazul | |
| Încheierea intervalului de măsurare (UTC) | |
| Evenimente neobservate sau cenzurate | |
| Acțiune întreprinsă | |
| Acțiunea a fost corectă pentru o intruziune reală? | ☐ Da ☐ Parțial ☐ Nu — observație: |

> Măsurile temporale sunt calculate în T08 conform definițiilor aprobate în T04. Prezenta
> evidență păstrează evenimentele-sursă; un eveniment neobservat în interval nu este
> consemnat drept zero.

---

## 5. Conformitatea cu ROE

| Câmp | Valoare |
|---|---|
| Activitatea s-a încadrat în ROE? | ☐ Da ☐ Nu |
| Dacă nu — abaterea produsă | |
| Cauză | |
| Acțiune corectivă imediată | |
| Raportat Autorității de aprobare | ☐ Da — ora (UTC): |
| Este necesară modificarea ROE | ☐ Da — referință apendicele 9: ☐ Nu |

---

## 6. Decizia privind disclosure-ul

*Decizia aparține exclusiv Trusted Agent.*

| Câmp | Valoare |
|---|---|
| Componenta defensivă a fost informată că activitatea este un exercițiu? | ☐ Da ☐ **Nu — misiunea rămâne covert** |
| Justificare | |
| Dacă nu a fost informată, cum a fost închis incidentul la nivelul său? | |

---

## 7. Reluare

| Câmp | Valoare |
|---|---|
| Activitatea a fost reluată? | ☐ Da ☐ Nu |
| Ora reluării (UTC) | |
| Autorizată de | |
| Condițiile reluării | |

---

## 8. Semnături

| | Nume | Semnătură | Data/ora (UTC) |
|---|---|---|---|
| Red Team Lead | | | |
| Trusted Agent | | | |
