# T09 — Constatare (Finding)

> Câte un formular pentru fiecare constatare. Se atașează raportului misiunii sau se
> încorporează în acesta.

---

## RT-[MISIUNE]-[NNN] — [TITLU]

> Titlul precizează deficiența, nu realizarea. „Parolele conturilor de serviciu pot fi
> recuperate din datele directorului”, nu „A fost obținut controlul administrativ al
> domeniului”.

| Câmp | Valoare |
|---|---|
| ID constatare | RT-[MISIUNE]-[NNN] |
| **Gravitate** | ☐ Critică ☐ Ridicată ☐ Medie ☐ Scăzută ☐ Informativă |
| Categorie | ☐ Prevention ☐ Detection ☐ Response ☐ Recovery ☐ Process |
| Nivelul amenințării la care este accesibilă | ☐ 1 ☐ 2 ☐ 3 ☐ 4 |
| Tehnică/tehnici ATT&CK | |
| ID-uri acțiune / flow din Threat Profile | |
| Stare | ☐ Deschisă ☐ Remediată — așteaptă retestarea ☐ **Închisă (retestare trecută)** ☐ Risc acceptat |

---

## 1. Active afectate

| Tip | Identificator | Responsabil |
|---|---|---|
| | | |

---

## 2. Descriere

*În ce constă vulnerabilitatea. Limbaj clar. Fără culpabilizare.*

| Răspuns / observații |
|---|
| |
| |
| |
| |
---

## 3. Modul de exploatare

*Tehnica și procedura, suficient de detaliate pentru ca apărătorul să poată reproduce
comportamentul și construi o detectare.*

| Răspuns / observații |
|---|
| |
| |
| |
| |
**Pași:**

| Nr. | Pas de reproducere |
|---|---|
| 1 | |
| 2 | |
| 3 | |

---

## 4. Dovezi

| ID dovadă | Descriere | Referința originalului / copiei de lucru | Integritate verificată |
|---|---|---|---|
| | | | ☐ |
| | | | ☐ |

*Screenshot-uri redactate, cu timestamp-uri vizibile.*

---

## 5. Impact asupra misiunii / operațional

> **Câmpul care determină dacă deficiența va fi remediată.** Precizați ce acțiune relevantă
> pentru organizație îi permite adversarului, nu numai ce permite din punct de vedere tehnic.

| Răspuns / observații |
|---|
| |
| |
| |
| |

| Dimensiunea impactului | Evaluare |
|---|---|
| Confidențialitate | |
| Integritate | |
| Disponibilitate | |
| Misiune / serviciu afectat | |
| Consecință juridică sau de reglementare | |

---

## 6. Root cause

> **Nu reformulați simptomul.** „Politică de parole slabă” este un simptom. „Conturile de
> serviciu nu au un responsabil desemnat, astfel încât nu li s-a aplicat niciun control
> compensatoriu” este o root cause. Tratarea simptomelor produce aceeași constatare anul
> următor.

| Câmp | Valoare |
|---|---|
| Root cause | |
| Tipul cauzei | ☐ Configurație ☐ Design ☐ Proces ☐ Resurse ☐ Awareness ☐ Lipsa responsabilității |
| Motivul pentru care nu a fost observată | |
| Posibilă referință la o constatare anterioară | |
| Baza de comparație: obiectivul controlului, mediul și condiția de atac | |
| Concluzie privind recurența | ☐ Recurență validată ☐ Nu este recurență ☐ Nu este comparabilă ☐ Corecția anterioară nu a fost exercitată |

---

## 7. Recomandare

**Recomandarea principală:**

| Răspuns / observații |
|---|
| |
| |
| |
| |
**Alternative, dacă recomandarea principală nu este fezabilă:**

| Opțiune | Efect | Efort | Trade-off |
|---|---|---|---|
| | | | |

**Există un quick win înainte de remedierea integrală?**

| Răspuns / observații |
|---|
| |
| |
| |
| |
---

## 8. Oportunitate de detectare

> Obligatorie atunci când constatarea nu poate fi prevenită cu un cost rezonabil. Oferă
> componentei defensive o acțiune disponibilă până la programarea corecției structurale.

| Câmp | Valoare |
|---|---|
| Comportament observabil | |
| Sursa de date necesară | |
| Telemetria există în prezent? | ☐ Da ☐ Parțial ☐ Nu |
| Logică de detectare sugerată | |
| Profilul de false positives preconizat | |
| Detectarea a fost construită în această misiune? | ☐ Da — ref.: ☐ Nu |

---

## 9. Responsabilitate și remediere

| Câmp | Valoare |
|---|---|
| **Responsabil (funcție, nu persoană)** | |
| Acceptată de responsabil | ☐ Da — data: ☐ Contestată — a se vedea secțiunea 11 |
| Termen | |
| Abordarea remedierii convenită | |
| Dependențe | |
| Read-across: servicii, sisteme, identități sau furnizori comparabili | |
| Responsabil read-across și dovada finalizării | |

---

## 10. Retestare

| Câmp | Valoare |
|---|---|
| **Metoda de retestare** *(metoda exactă de verificare)* | |
| Retestare solicitată de responsabil la | |
| Retestare efectuată la | |
| Retestare efectuată de | |
| Mediu, ID-uri de acțiune și referințele dovezilor | |
| Condiții modificate de la testul inițial | |
| **Rezultat** | ☐ **Trecută — constatarea este închisă** ☐ Eșuată — constatarea rămâne deschisă ☐ Remediată parțial |
| Observație | |

> O constatare este închisă printr-o retestare trecută, nu prin închiderea unei sarcini.

---

## 11. Contestație / acceptarea riscului

**Dacă gravitatea este contestată:**

| Câmp | Valoare |
|---|---|
| Evaluarea Red Team | |
| Evaluarea organizației evaluate | |
| Temeiul declarat de organizația evaluată | |
| Soluționare | |

**Dacă organizația decide să nu remedieze:**

| Câmp | Valoare |
|---|---|
| Risc acceptat | ☐ Da |
| Justificare | |
| Controale compensatorii existente | |
| **Acceptat de (Autoritatea de aprobare)** | |
| Data | |
| **Data revizuirii** | |

> Acceptarea riscului este o decizie legitimă. Nu reprezintă închidere. Constatarea rămâne
> deschisă și este revizuită la data menționată mai sus.

