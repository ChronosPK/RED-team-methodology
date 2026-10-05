# ANEXA C — CICLUL DE VIAȚĂ AL MISIUNII

În sprijinul Capitolului 7 din Metodologia Red Team. Emisă sub autoritatea
Head of Red Team.

---

## C.1 Cele opt faze

C.1.1 Fiecare misiune parcurge fazele de mai jos. Misiunile de mică amploare
comprimă fazele în conformitate cu punctul C.12. Nicio fază nu este omisă.

```{.mermaid filename="annex-c-lifecycle"}
flowchart TB
    subgraph TOP[" "]
        direction LR
        P0["0<br/>Solicitare și<br/>calificare"] -->|G0| P1["1<br/>Inițiere și<br/>autorizare"]
        P1 -->|G1| P2["2<br/>Informații privind<br/>amenințările"]
        P2 -->|G2| P3["3<br/>Planificare și<br/>pregătire"]
    end
    subgraph BOTTOM[" "]
        direction RL
        P4["4<br/>Execuție"] -->|G4| P5["5<br/>Încheierea execuției și<br/>cleanup"]
        P5 -->|G5| P6["6<br/>Raportare și<br/>analiză ulterioară"]
        P6 -->|G6| P7["7<br/>Remediere și<br/>retestare"]
    end
    TOP -->|G3| BOTTOM
    BOTTOM -.->|G7| TOP
    style TOP fill:transparent,stroke:transparent
    style BOTTOM fill:transparent,stroke:transparent
```

**Figura C-1. Fazele și punctele de decizie**

C.1.2 Fiecare fază se încheie la un punct de decizie. Acesta reprezintă o
decizie luată de titularul unei funcții nominalizate, prin care misiunea fie
trece în faza următoare, fie este returnată. Trecerea unui punct de decizie cu
criterii neîndeplinite produce o misiune ale cărei deficiențe devin evidente.

C.1.3 Punctul de decizie G1 este absolut. Orice alt punct de decizie poate fi
trecut cu un risc consemnat.

---

## C.2 Durate

C.2.1 Următoarele sunt valori de planificare pentru o misiune internă cu sferă
de aplicare delimitată.

| Faza | Durata scursă | Efort |
|---|---|---|
| 0 Solicitare și calificare | 2-5 zile | Redus |
| 1 Inițiere și autorizare | 5-10 zile | Determinat de obținerea semnăturilor |
| 2 Threat intelligence | 5-10 zile | Se poate suprapune cu faza 1 |
| 3 Planificare și pregătire | 5-10 zile | Ridicat |
| 4 Execuție | 10-20 de zile lucrătoare | Complet |
| 5 Încheierea execuției și cleanup | 2-3 zile | Moderat |
| 6 Raportare și analiză ulterioară | 5-10 zile | Ridicat |
| 7 Remediere și retestare | 30-90 de zile | Periodic |
| De la solicitare la predarea raportului | 6-9 săptămâni | |

C.2.2 Execuția reprezintă mai puțin de jumătate dintr-o misiune. O cerință
exprimată ca misiune de două săptămâni reprezintă o misiune de șase săptămâni
care cuprinde două săptămâni de execuție.

C.2.3 Faza 6 nu trebuie comprimată pentru respectarea unei date. Un raport
transmis cu întârziere poate fi recuperat; un raport inexact, nu.

---

## C.3 Alinierea la cadre recunoscute

C.3.1 Structura fazelor urmează cadrele consacrate, extinse astfel încât fiecare
punct de decizie să aibă un responsabil nominalizat. Alinierea este consemnată
aici pentru ca metodologia să poată fi justificată în fața unui auditor sau a
unei organizații evaluate.

| Faza | TIBER-EU | NIST SP 800-115 | Vest și Tubberville |
|---|---|---|---|
| 0 Solicitare și calificare | Pregătire, inițiere | Planificare | Planificarea misiunii |
| 1 Inițiere și autorizare | Pregătire, definirea sferei | Planificare | Planificarea misiunii |
| 2 Threat intelligence | Testare, threat intelligence | Descoperire | Planificarea amenințării |
| 3 Planificare și pregătire | Testare, planificarea Red Team | Descoperire | Planificarea misiunii |
| 4 Execuție | Testare, testarea Red Team | Atac | Execuția misiunii |
| 5 Încheierea execuției și cleanup | Închidere | Atac | Încheierea execuției misiunii |
| 6 Raportare și analiză ulterioară | Închidere, raportare și activitate Purple Team | Raportare | Raportarea misiunii |
| 7 Remediere și retestare | Închidere, plan de remediere | Raportare | Netratată |

C.3.2 Două diferențe sunt intenționate. Solicitarea este separată de inițiere,
astfel încât refuzarea unei misiuni să constituie o decizie consemnată cu un
temei declarat. Remedierea și retestarea sunt constituite ca fază, nu ca
activitate ulterioară; omiterea acestora reprezintă motivul cel mai frecvent
pentru care un program nu produce nicio îmbunătățire.

C.3.3 Sursele sunt prevăzute în Anexa K.

---

## C.4 Faza 0 — Solicitare și calificare

C.4.1 **Scop.** Stabilirea faptului dacă misiunea ar trebui să continue și dacă
activitatea Red Team este instrumentul adecvat.

C.4.2 **Activități.**

a. Consemnarea solicitării în formularul-tip T01.

b. Identificarea misiunii sau a serviciului expus riscului și apoi a sistemelor
care îl susțin. Ordinea nu se inversează.

c. Stabilirea deciziei pe care o va fundamenta rezultatul. Atunci când nu poate
fi oferit niciun răspuns, misiunea nu continuă.

d. Selectarea instrumentului, în conformitate cu punctul 4.3 din metodologie.

e. Efectuarea verificării aplicabilității prevăzute în Anexa I atunci când sfera
de aplicare poate include un mediu specializat.

f. Aplicarea condițiilor prealabile prevăzute la punctul 4.5 din metodologie.

g. Estimarea efortului, costului și riscului. Identificarea candidaților pentru
funcțiile de Autoritate de aprobare și Trusted Agent.

C.4.3 **Punctul de decizie G0**, decis de Head of Red Team. Trebuie
îndeplinite următoarele condiții.

1. Este identificată o misiune sau un serviciu nominalizat.
2. Clientul a precizat decizia pe care o va fundamenta rezultatul.
3. Activitatea Red Team este instrumentul adecvat.
4. Condițiile prealabile sunt îndeplinite sau este propusă o alternativă de
   intensitate mai redusă.
5. Există un candidat pentru funcția de Autoritate de aprobare care deține
   suficientă autoritate.
6. Sunt identificate entitățile juridice și Autoritățile responsabile de sistem
   avute în vedere pentru target space-ul propus.
7. Sunt identificați furnizorii și părțile terțe relevante, iar permisiunea
   directă pare să poată fi obținută.
8. Încadrarea dispune de capacitatea, separarea și competențele necesare sau de
   un plan pentru obținerea acestora.

C.4.4 **Produse.** Cerere completată; decizie de acceptare sau refuzare, cu
temeiul consemnat. O misiune refuzată trebuie consemnată împreună cu temeiul său
și alternativa recomandată.

---

## C.5 Faza 1 — Inițiere și autorizare

C.5.1 **Scop.** Stabilirea autorității verificate, a analizei juridice, a
limitelor și a controalelor de siguranță înainte de orice interacțiune cu ținta.

C.5.2 **Activități.**

a. Desemnarea în scris a Autorității de aprobare și a Trusted Agent;
identificarea și verificarea fiecărei Autorități responsabile de sistem al cărei
consimțământ este necesar.

b. Desfășurarea reuniunii pentru definirea sferei de aplicare cu Agentul de
încredere, Autoritățile responsabile de sistem și responsabilii sistemelor.

c. Definirea a unu-trei obiective, fiecare cu o metodă de verificare și un
standard privind dovezile.

d. Redactarea Regulilor de angajare în formularul-tip T02, împreună cu toate
apendicele.

e. Identificarea în mod pozitiv a limitei exterioare autorizate și obținerea
consimțământului Autorității responsabile de sistem competente. Obținerea listei
de excluderi de la organizația evaluată și a confirmării responsabilului
fiecărui sistem exclus.

f. Obținerea analizei juridice a lanțului de autorizare, a protecției datelor, a
condițiilor părților terțe și a oricărei constrângeri aplicabile ingineriei
sociale.

g. Completarea registrelor de aplicabilitate și de permisiuni ale furnizorilor
și părților terțe și obținerea consimțământului direct sau a aprobării
furnizorului, după caz.

h. Obținerea semnăturii pe Scrisoarea de autorizare, formularul-tip T10.

i. Verificarea telefonică a fiecărui contact.

j. Obținerea confirmării scrise a fiecărui operator că a citit Regulile de
angajare.

C.5.3 **Punctul de decizie G1**, decis de Autoritatea de aprobare. Trebuie
îndeplinite următoarele condiții.

1. Regulile de angajare sunt complete, verificate în raport cu Anexa B, punctul
   B.9, și semnate.
2. Scrisoarea de autorizare este semnată de fiecare Autoritate responsabilă de
   sistem necesară și contrasemnată de Autoritatea de aprobare atunci când
   autoritatea competentă pentru riscul operațional este diferită.
3. Analiza juridică este finalizată și consemnată.
4. Limita exterioară autorizată este identificată în mod pozitiv; consimțământul
   părților terțe și permisiunea furnizorilor sunt susținute de dovezi, după caz.
5. Excluderile clarifică limita respectivă și sunt confirmate de responsabilul
   fiecărui sistem exclus.
6. Lista de contacte a fost verificată telefonic în cele douăzeci și patru de
   ore anterioare.
7. Procedura de deconflictare și cuvântul codificat sunt convenite de ambele
   părți.
8. Fiecare operator a confirmat în scris că a citit Regulile de angajare.
9. Atunci când se aplică Anexa I, sunt îndeplinite cerințele sale suplimentare
   pentru faza 1.

C.5.4 **Produse.** Reguli de angajare semnate; Scrisoare de autorizare semnată;
listă de contacte verificată; evidența analizei juridice.

C.5.5 Activitatea desfășurată înainte de punctul de decizie G1 este neautorizată.

---

## C.6 Faza 2 — Threat intelligence

C.6.1 **Scop.** Stabilirea adversarului emulat și a temeiului alegerii sale.

C.6.2 **Activități.**

a. Analizarea peisajului amenințărilor: adversarii care amenință în mod realist
organizația evaluată, având în vedere sectorul, zona geografică, misiunea,
tehnologia și situația actuală.

b. Selectarea unui adversar principal și, opțional, a unuia secundar.
Consemnarea temeiului selecției în raport cu raportările actuale.

c. Întocmirea Threat Profile-ului în formularul-tip T03, la standardul
prevăzut în Anexa D.

d. Desfășurarea recunoașterii țintei în limitele autorizate.

e. Raportarea imediată către Trusted Agent a oricărei expuneri care
reprezintă un risc critic imediat. Aceste aspecte nu trebuie reținute până la
întocmirea raportului.

f. Elaborarea a trei-cinci ipoteze privind attack paths, de la postura inițială
la fiecare obiectiv.

C.6.3 **Punctul de decizie G2**, decis de Red Team Lead și avizat
de Trusted Agent.

1. Adversarul este nominalizat, iar selecția este justificată prin raportări
   actuale.
2. Threat Profile este complet și corelat cu MITRE ATT&CK.
3. Recunoașterea s-a menținut în limitele autorizate.
4. Expunerile critice identificate pe durata recunoașterii au fost raportate.
5. Cel puțin trei ipoteze privind attack paths ajung la minimum un obiectiv.
6. Sunt consemnate fiabilitatea surselor, nivelul de încredere în informații,
   opiniile divergente, limitările și data-limită a informațiilor.
7. Sunt consemnate versiunea ATT&CK și data verificării.
8. Identificatorii stabili ai sursei, scenariului, obiectivului, acțiunii și
   fluxului stabilesc golden thread-ul către plan.
9. Nivelul de capabilitate este convenit și consemnat.

C.6.4 **Produse.** Threat Profile; raport privind attack surface-ul;
ipoteze privind attack paths.

---

## C.7 Faza 3 — Planificare și pregătire

C.7.1 **Scop.** Atingerea stării de pregătire înainte de accesarea mediului.

C.7.2 **Activități.**

a. Întocmirea planului misiunii în formularul-tip T04.

b. Construirea, testarea și verificarea infrastructurii misiunii la standardul
prevăzut în Anexa D, punctul D.7.

c. Testarea fiecărui instrument într-un mediu de laborator reprezentativ pentru
țintă.

d. Stabilirea artefactelor și a semnăturii de rețea produse de fiecare tehnică.

e. Instituirea depozitului de dovezi; sincronizarea tuturor sistemelor la Timpul
universal coordonat; și consemnarea abaterii observate a ceasului față de sursa
de timp aprobată.

f. Finalizarea evaluării riscurilor operaționale: pentru fiecare tehnică,
modurile de defectare credibile, probabilitatea, impactul, măsurile de reducere,
metoda de revenire și mijloacele de detectare a prejudiciului.

g. Testarea canalului de deconflictare prin efectuarea unui apel real către
Trusted Agent.

h. Întocmirea planului de cleanup și restabilire, care cuprinde
fiecare modificare planificată, dezactivarea comenzii și controlului, mecanismele
de dezactivare aferente sferei și datei, datele de autentificare și canalele
securizate, precum și tratamentul copiilor de siguranță sau al instantaneelor
care pot restabili ulterior artefacte de test.

i. Confirmarea, împreună cu responsabilii sistemelor, a disponibilității
măsurilor aplicabile pentru copii de siguranță și restabilire și identificarea
persoanei care poate restabili fiecare serviciu critic inclus în sferă.

j. Completarea și reverificarea registrului permisiunilor furnizorilor și
părților terțe prevăzut în Anexa G, punctul G.2.5.

k. Desfășurarea informării pentru întregul personal autorizat să cunoască
misiunea.

l. Aprobarea unei specificații pentru fiecare indicator raportat, inclusiv
definițiile evenimentelor sau numărătorul și numitorul, sursa, intervalul,
excluderile, cenzurarea, validarea și limitările.

m. Definirea convenției pentru identificatorii dovezilor, a algoritmului hash
aprobat, a depozitului originalelor, a spațiului pentru copiile de lucru și a
oricărei cerințe privind lanțul de custodie.

C.7.3 **Punctul de decizie G3**, decis de Red Team Lead.

1. Planul misiunii este complet și a fost prezentat tuturor operatorilor.
2. Infrastructura este construită, testată și inventariată, iar dezafectarea sa
   este documentată.
3. Fiecare instrument și fiecare tehnică a fost testată în laborator.
4. Depozitul de dovezi este pregătit; toate sistemele sunt sincronizate la UTC;
   abaterea ceasului se încadrează în toleranța aprobată local și este
   consemnată.
5. Evaluarea riscurilor operaționale este completă, cu mijloacele de revenire
   consemnate.
6. Canalul de deconflictare a fost testat printr-un apel real.
7. Există un plan de cleanup și restabilire pentru fiecare
   modificare planificată și mecanism rezidual, inclusiv restabilirea copiilor de
   siguranță sau instantaneelor.
8. Întreaga activitate poate fi suspendată în cel mult cincisprezece minute de
   la primirea dispoziției.
9. Responsabilii sistemelor au confirmat starea de pregătire a copiilor de
   siguranță și a restabilirii atunci când poate fi afectată starea sistemului.
10. Politicile furnizorilor și permisiunile părților terțe au fost reverificate
    și rămân valabile pentru sursa, ținta, serviciile, activitatea și datele
    planificate.
11. Fiecare indicator raportat are o specificație și o regulă privind calitatea
    datelor aprobate.
12. Controalele privind identificarea și proveniența dovezilor, calcularea
    hashurilor, păstrarea originalelor și copiile de lucru sunt pregătite și
    testate.

C.7.4 **Produse.** Planul misiunii; infrastructură construită; evaluarea
riscurilor; comunicații testate.

---

## C.8 Faza 4 — Execuție

C.8.1 **Scop.** Desfășurarea scenariului în limitele Regulilor de angajare și
generarea dovezilor.

C.8.2 Execuția se desfășoară prin cele trei etape prevăzute la punctul 7.8 din
metodologie. Instrucțiunile permanente sunt prevăzute în Capitolul 8.
Standardele detaliate sunt prevăzute în Anexa E.

C.8.3 **Rutina zilnică.**

| Moment | Activitate |
|---|---|
| Începere | Reuniune internă: situația, intenția zilei, riscuri |
| Continuu | Jurnalele operatorilor sunt completate în momentul acțiunii |
| Continuu | Dovezile sunt captate în momentul descoperirii |
| Sfârșitul zilei | Corelarea jurnalelor operatorilor cu evidențele infrastructurii și sesiunilor |
| Sfârșitul zilei | Actualizarea diagramei atacului |
| Sfârșitul zilei | Raport de situație către Trusted Agent, în formularul-tip T06 |

C.8.4 O zi în care nu este transmis niciun raport de situație este tratată ca o
pierdere a contactului și activează procedura prevăzută în Anexa E, punctul E.6.

C.8.5 **Verificare continuă.** Înaintea fiecărei acțiuni semnificative,
operatorul stabilește că ținta se află în spațiul autorizat și în afara
excluderilor; că acțiunea este autorizată; că efectul său este înțeles și
reversibil; și că este consemnată. Un răspuns negativ la oricare dintre aceste
verificări impune operatorului să înceteze activitatea și să solicite îndrumare.

C.8.6 **Punctul de decizie G4**, decis în comun de Red Team Lead
și Trusted Agent.

1. Obiectivele sunt realizate sau perioada convenită a expirat.
2. Întreaga activitate s-a menținut în limitele Regulilor de angajare, iar orice
   abatere a fost consemnată și aprobată.
3. Jurnalele operatorilor sunt complete și se corelează cu evidențele
   infrastructurii și sesiunilor.
4. Dovezile pentru fiecare constatare invocată sunt captate și verificate.
5. Fiecare modificare este consemnată în Cleanup and Rollback Register.

C.8.7 **Produse.** Jurnalele operatorilor; dovezi; rapoarte de situație;
evidențe ale deconflictării; diagrama atacului.

C.8.8 Nerealizarea obiectivelor este un rezultat legitim, care indică faptul că
apărarea a rezistat. Acest rezultat este raportat cu aceeași rigoare ca
realizarea obiectivelor, consemnând controlul care a împiedicat fiecare tehnică.

---

## C.9 Faza 5 — Încheierea execuției și cleanup

C.9.1 **Scop.** Readucerea mediului-țintă și a infrastructurii misiunii la starea
convenită și securizarea dovezilor.

C.9.2 **Activități.**

a. Încetarea operațiilor la ora stabilită și confirmarea faptului că toți
operatorii au procedat astfel.

b. Anularea fiecărei modificări consemnate în registrul de eliminare a
artefactelor, formularul-tip T12: implanturi, persistence, conturi, apartenența
la grupuri, delegări, chei, configurații, controlul accesului, fișiere încărcate
și date scrise pentru demonstrarea accesului.

c. Verificarea fiecărui element de către o a doua persoană. Orice element care
nu poate fi anulat este transferat în scris unui responsabil nominalizat și
rămâne deschis.

d. Dezactivarea comenzii și controlului; verificarea mecanismelor de dezactivare
aferente sferei și datei; apoi dezafectarea infrastructurii după păstrarea
evidențelor sale.

e. Eliminarea, revocarea, rotația sau restabilirea conturilor de test, a datelor
de autentificare, tokenurilor, cheilor, certificatelor și canalelor de comunicare
securizate, potrivit acordului cu responsabilii acestora.

f. Identificarea copiilor de siguranță, instantaneelor, imaginilor și mediilor
de recuperare care pot conține programe malware de test, instrumente,
persistence sau configurații modificate. Furnizarea către responsabilii acestora
a unei proceduri scrise și a unei referințe de urmărire care previn o
restabilire ulterioară nesigură.

g. Consolidarea dovezilor; calcularea sau verificarea hashurilor criptografice;
păstrarea originalelor și a referințelor surselor; și aplicarea controalelor
privind păstrarea, accesul și clasificarea.

h. Distrugerea materialelor cu date de autentificare capturate care nu sunt
necesare unui scop de păstrare autorizat și consemnarea distrugerii. Datele de
autentificare încă valabile în mediul-țintă sunt resetate sau rotite de
responsabilul lor.

i. Monitorizarea apelurilor întârziate sau a altor activități de test reziduale
pe perioada prevăzută în plan și direcționarea imediată a oricărei detectări
către Trusted Agent.

j. Desfășurarea analizei interne în termen de patruzeci și opt de ore.

k. Furnizarea către Trusted Agent a evidenței cu marcaje temporale a
întregii activități Red Team, inclusiv adresele-sursă, pentru corelarea
cu telemetria defensivă.

C.9.3 **Punctul de decizie G5**, decis de Trusted Agent.

1. Fiecare element din Cleanup and Rollback Register este anulat și
   verificat de o a doua persoană.
2. Elementele care nu au putut fi anulate sunt transferate în scris unui
   responsabil nominalizat.
3. Comanda și controlul sunt dezactivate, mecanismele de dezactivare sunt
   verificate, iar infrastructura este dezafectată după păstrarea evidențelor.
4. Conturile de test, datele de autentificare, tokenurile, cheile, certificatele
   și canalele securizate sunt eliminate, revocate, resetate, rotite sau
   restabilite și verificate.
5. Responsabilii copiilor de siguranță și instantaneelor au acceptat, atunci
   când este necesar, o procedură urmărită pentru restabilirile viitoare.
6. Depozitul de dovezi este consolidat, verificat criptografic din punctul de
   vedere al integrității, clasificat și supus controlului accesului.
7. Materialele cu date de autentificare capturate sunt distruse, după caz, iar
   distrugerea este consemnată.
8. Perioada de monitorizare a activității reziduale este finalizată sau are un
   responsabil nominalizat și o dată de încheiere.
9. Evidența activității a fost predată Trusted Agent.
10. Analiza internă a fost desfășurată.

C.9.4 **Produse.** Cleanup and Rollback Register semnat; evidența
activității; dovezi consolidate.

C.9.5 Această fază este scurtată frecvent. Mecanismele de persistence omise, conturile active
și infrastructura care continuă să existe după misiune sunt cele mai grave
deficiențe pe care capabilitatea le poate produce și sunt descoperite, de regulă,
de o altă parte.

---

## C.10 Faza 6 — Raportare și analiză ulterioară

C.10.1 **Scop.** Transformarea activității în decizii. Standardul este prevăzut
în Anexa F.

C.10.2 **Activități.**

a. Reconstituirea cronologiei din jurnalele operatorilor și evidențele
infrastructurii și instrumentelor.

b. Corelarea cu telemetria defensivă împreună cu elementul defensiv: pentru
fiecare acțiune Red Team, ce s-a observat, când și ce acțiune a urmat.
Acest lucru nu poate fi stabilit numai din evidențele Red Team.

c. Redactarea descrierii atacului.

d. Redactarea constatărilor în formularul-tip T09, inclusiv a controalelor care
au funcționat.

e. Finalizarea diagramei atacului.

f. Obținerea verificării de către un Ofițer verificator desemnat care nu a
participat la execuție.

g. Desfășurarea analizei tehnice ulterioare împreună cu elementul defensiv.

h. Susținerea informării comenzii.

i. Emiterea raportului în formularul-tip T08.

C.10.3 **Punctul de decizie G6**, decis de Red Team Lead după
verificare.

1. Fiecare afirmație este susținută de dovezi la care se face trimitere.
2. Corelarea cu telemetria defensivă este finalizată.
3. Controalele care au funcționat sunt raportate împreună cu cele care nu au
   funcționat.
4. Nicio persoană nu este identificată într-un mod care să sprijine o acțiune
   disciplinară.
5. În raport sau în apendicele sale nu apare niciun credential,
   token, nicio cheie și niciun volum mare de date sensibile.
6. Evaluările gravității sunt conforme cu modelul din Anexa F.
7. Fiecare constatare are un responsabil, o recomandare și o metodă de retestare.
8. Ofițerul verificator a semnat.

C.10.4 **Produse.** Raport; informarea comenzii; analiză tehnică ulterioară;
constatări cu responsabili.

---

## C.11 Faza 7 — Remediere și retestare

C.11.1 **Scop.** Stabilirea faptului că organizația s-a îmbunătățit.

C.11.2 **Activități.**

a. Transferarea constatărilor în registrul de riscuri al organizației, cu
responsabili și date.

b. Oferirea de consultanță privind remedierea. Red Team oferă consultanță și
nu implementează; implementarea propriilor recomandări îi elimină independența.

c. Reluarea în regim Purple Team a tehnicilor care nu au fost
detectate, împreună cu structura de inginerie a detectării, astfel încât
detectările să fie construite în raport cu procedura utilizată, nu cu descrierea
acesteia. A se vedea Anexa H, partea H4.

d. Retestarea constatărilor critice și a celor cu gravitate ridicată după
declararea remedierii.

e. Consemnarea lecțiilor în formularul-tip T11, atât pentru organizația
evaluată, cât și pentru Red Team.

f. Modificarea anexelor, bibliotecii de tehnici și bibliotecii de scenarii, după
caz.

C.11.3 **Punctul de decizie G7**, decis de Autoritatea de aprobare.

1. Toate constatările sunt consemnate în registrul de riscuri al organizației,
   cu responsabili și date.
2. Constatările critice și cele cu gravitate ridicată au fost retestate și
   verificate.
3. Există detectări pentru principalele tehnici utilizate.
4. Lecțiile sunt consemnate pentru ambele părți.
5. Anexele și bibliotecile sunt modificate.

C.11.4 **Produse.** Evidența retestării; detectări; lecții; modificări.

C.11.5 O constatare este închisă printr-o retestare trecută cu succes, nu prin
închiderea unei sarcini. Atunci când organizația decide să nu remedieze, decizia
este consemnată ca acceptare formală a riscului, semnată de Autoritatea de
aprobare, cu o dată de reexaminare. Constatarea rămâne deschisă.

---

## C.12 Comprimare

C.12.1 Un exercițiu Purple Team sau o micromisiune nu necesită
succesiunea completă. Sunt permise următoarele comprimări.

| Faza | Misiune completă | Formă comprimată |
|---|---|---|
| 0 | Cerere formală și punct de decizie | Decizie consemnată într-un singur paragraf |
| 1 | Reguli de angajare și Scrisoare de autorizare complete | Reguli de angajare permanente pentru activitatea Purple Team, cu o notă privind sfera pentru fiecare exercițiu. Scrisoarea de autorizare rămâne obligatorie. |
| 2 | Threat Profile complet | Selectarea a trei-zece tehnici dintr-un Threat Profile existent |
| 3 | Plan și infrastructură complete | Plan de testare de o pagină; tehnici testate în laborator |
| 4 | 10-20 de zile | 1-3 zile, desfășurate împreună cu elementul defensiv |
| 5 | Cleanup and Rollback Register complet | Fără comprimare |
| 6 | Raport complet | Tabel de rezultate pe tehnici, cu acțiunile de detectare |
| 7 | Ciclu complet de retestare | Detectările sunt construite și validate în aceeași săptămână |

C.12.2 Autorizarea, Cleanup and Rollback Register și consemnarea
dovezilor nu trebuie comprimate.
