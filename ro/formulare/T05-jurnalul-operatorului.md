# T05 — Jurnalul operatorului (Operator Log)

> Se utilizează permanent în **faza 4**. Se completează **în timp real**, pe măsura
> desfășurării acțiunii, nu se reconstituie la sfârșitul zilei.
>
> Operator Log este cea mai importantă evidență a misiunii. Session logs și log-urile C2
> consemnează *ce* s-a întâmplat; numai operatorul poate consemna *de ce*, ce rezultat
> anticipa și cum a interpretat rezultatul. Aceste informații fac raportul justificabil și
> după șase luni.

| Câmp | Valoare |
|---|---|
| Referința misiunii | |
| Operator | |
| Data (UTC) | |
| Sursa de timp aprobată | |
| Clock offset măsurat / verificat (UTC) | |

---

## Reguli

1. **UTC pentru fiecare timestamp.** Consemnați offset-ul măsurat față de sursa aprobată;
   nu rescrieți fără mențiune un timestamp discrepant.
2. **Consemnați fiecare acțiune, inclusiv eșecurile.** O tehnică blocată dovedește că un
   control a funcționat și constituie adesea cea mai valoroasă constatare.
3. **Fără intervale neexplicate.** Un interval neexplicat în timpul unui incident nu poate
   fi deosebit de ascunderea activității.
4. **Câmpul 12 (Descriere) și câmpul 15 (Modificarea sistemului) sunt obligatorii.** Sunt
   cele două câmpuri omise cel mai frecvent și cu cele mai importante consecințe: primul
   transformă log-ul într-o explicație, iar al doilea face posibil cleanup-ul.
5. **Reconciliați evidența cu log-urile C2 și session logs la sfârșitul zilei.** Soluționați
   discrepanțele în aceeași zi.

---

## Înregistrări

### Înregistrarea [N]

| Nr. | Câmp | Valoare |
|---|---|---|
| 1 | Început (UTC) | |
| 2 | Sfârșit (UTC) | |
| 3 | Operator | |
| 4 | IP sursă | |
| 5 | IP destinație | |
| 6 | Port destinație | |
| 7 | Sistem destinație | |
| 8 | IP / port pivot | |
| 9 | URL | |
| 10 | Tool / aplicație | |
| 11 | Comandă | |
| 12 | **Descriere — ce am urmărit să realizez și de ce** | |
| 13 | Output (sinteză; referința output-ului integral) | |
| 14 | Rezultat | ☐ Reușită ☐ Eșec ☐ Parțial ☐ **Blocat de un control** |
| 15 | **Modificarea sistemului** *(alimentează T12)* | |
| 16 | Referința dovezii | |
| 17 | Observații — interpretare, decizii, anomalii | |
| 18 | ID stabil al acțiunii / ID element T12, dacă este cazul | |

---

## Log cronologic compact

Utilizați câte un rând pentru fiecare acțiune. Continuați pe copii suplimentare ale acestei
pagini, atunci când este necesar.

| Început | Sfârșit | Op. | IP src. | IP dst. | Port | Sistem dst. | Tool | Comandă | Descriere | Rezultat | Modificare | Dovadă |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| | | | | | | | | | | | | |
| | | | | | | | | | | | | |
| | | | | | | | | | | | | |
| | | | | | | | | | | | | |
| | | | | | | | | | | | | |
| | | | | | | | | | | | | |
| | | | | | | | | | | | | |
| | | | | | | | | | | | | |
| | | | | | | | | | | | | |
| | | | | | | | | | | | | |
| | | | | | | | | | | | | |
| | | | | | | | | | | | | |
| | | | | | | | | | | | | |
| | | | | | | | | | | | | |
| | | | | | | | | | | | | |
| | | | | | | | | | | | | |

---

## Reconcilierea la sfârșitul zilei

| Nr. | Verificare | ✔ |
|---|---|---|
| 1 | Fiecare task C2 din log-ul framework-ului are o înregistrare corespunzătoare în Operator Log | ☐ |
| 2 | Fiecare segment de session log este justificat | ☐ |
| 3 | Fiecare fișier de dovezi la care se face referire există în repository | ☐ |
| 4 | Fiecare modificare a sistemului este consemnată în T12 | ☐ |
| 5 | Nu există intervale de timp neexplicate | ☐ |
| 6 | Discrepanțele au fost soluționate | ☐ |
| 7 | Pentru dovezile semnificative există ID-uri, iar hash-urile corespund la primul punct stabil de colectare | ☐ |
| 8 | Clock offset-ul s-a menținut în toleranță sau intervalele afectate sunt adnotate | ☐ |

**Discrepanțe identificate și soluționarea lor:**

| Răspuns / observații |
|---|
| |
| |
| |

| | Nume | Semnătură | Data |
|---|---|---|---|
| Operator | | | |
| Verificat de Red Team Lead | | | |

