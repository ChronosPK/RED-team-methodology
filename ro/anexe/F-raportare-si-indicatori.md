# ANEXA F — RAPORTARE ȘI INDICATORI

În sprijinul Capitolelor 7 și 9 din Metodologia Red Team. Emisă sub
autoritatea Head of Red Team.

Partea F1 tratează raportarea și analizele ulterioare. Partea F2 tratează
indicatorii și maturitatea.

---

# PARTEA F1 — RAPORTARE ȘI ANALIZĂ ULTERIOARĂ

## F1.1 Funcția raportului

F1.1.1 Raportul este produsul misiunii. Acesta descrie o succesiune de evenimente
și răspunsul la succesiunea respectivă. Nu este un inventar al deficiențelor.

F1.1.2 Raportul se adresează unui număr de trei categorii de cititori, cu
cerințe diferite.

| Cititori | Cerință | Consultă |
|---|---|---|
| Comanda și Autoritatea de aprobare | Expunerea și aspectele pentru care trebuie alocate resurse | Rezumatul |
| Conducerea structurii de securitate | Controalele care au eșuat, ordinea eșecului și prioritățile | Rezumatul și constatările |
| Inginerii și elementul defensiv | Evenimentele produse, cu suficiente detalii pentru construirea unei detectări sau corectarea unei lacune | Descrierea, constatările și apendicele |

F1.1.3 Sunt întocmite toate cele trei componente. Rezumatul nu este redactat
pentru un inginer, iar descrierea nu este redactată pentru comandă.

---

## F1.2 Structură

F1.2.1 Raportul este întocmit în formularul-tip T08, cu structura următoare.

| | Secțiune | Conținut |
|---|---|---|
| 1 | Controlul documentului | Clasificare, versiune, distribuție, referințe |
| 2 | Rezumat | Nu depășește două pagini și poate fi înțeles în mod independent |
| 3 | Metodă și obiective | Activitatea desfășurată; nivelul de capabilitate emulat; obiectivele |
| 4 | Scenariu și sferă de aplicare | Postura inițială, adversarul emulat, sfera și excluderile, perioada |
| 5 | Descrierea atacului | Succesiunea evenimentelor, cu etapele critice și dovezile |
| 6 | Detectare și răspuns | Ce a observat elementul defensiv, când și ce a urmat |
| 7 | Acoperirea tehnicilor | Fiecare tehnică: încercată, împiedicată sau executată, telemetrie, alertă, investigare, limitare și restabilire |
| 8 | Constatări | Fiecare constatare, inclusiv controalele care au funcționat |
| 9 | Concluzie | Evaluarea generală și riscul rezidual |
| 10 | Apendice | Cronologie, evidența activității, indicatori, indexul dovezilor, atestarea cleanup-ului |

### F1.2.2 Rezumatul

F1.2.2.1 Rezumatul precizează, în ordine:

a. ceea ce trebuia să stabilească misiunea;

b. ceea ce s-a desfășurat: adversarul emulat, postura inițială, perioada;

c. ceea ce s-a produs: rezultatul în raport cu fiecare obiectiv;

d. controalele care au funcționat;

e. controalele care nu au funcționat, în ordinea consecințelor;

f. cele trei-cinci recomandări care produc cea mai mare reducere a riscului;

g. riscul rezidual în cazul în care nu se ia nicio măsură.

F1.2.2.2 Litera d este obligatorie. Un raport care omite controalele care au
funcționat este inexact și va fi perceput drept un atac la adresa elementului
defensiv.

F1.2.2.3 Rezumatul nu conține identificatori de tehnici, denumiri de instrumente
sau terminologie tehnică.

### F1.2.3 Descrierea atacului

F1.2.3.1 Descrierea este cronologică și alcătuită din etape critice numerotate.
Pentru fiecare etapă se consemnează:

a. numărul și titlul etapei;

b. data și ora în UTC;

c. acțiunea întreprinsă, într-un limbaj clar, cu nominalizarea tehnicii;

d. intenția;

e. rezultatul;

f. referința dovezii;

g. observația defensivă.

F1.2.3.2 Litera g este completată pentru fiecare etapă, inclusiv atunci când
răspunsul este că nu a fost generat niciun semnal sau că a fost generată o
alertă, dar aceasta nu a fost examinată în perioada respectivă. Prezența acestei
mențiuni la fiecare etapă este ceea ce diferențiază raportul Red Team de un
raport privind un test de penetrare.

F1.2.3.3 În descriere apar numai etapele relevante. Succesiunea completă a
acțiunilor apare în apendice.

---

## F1.3 Detectare și răspuns

F1.3.1 Această secțiune este construită pe baza corelării cu elementul defensiv
din faza 6 și este secțiunea pe care elementul respectiv o va utiliza. Evidența
acțiunilor și evidența răspunsurilor sunt menținute separat, astfel încât
prevenirea, observabilitatea și răspunsul să nu fie reunite într-un singur scor.

| ID acțiune Red Team | Ora, UTC | Rezultatul încercării | Telemetrie | Alertă | Investigare |
|---|---|---|---|---|---|

| ID acțiune Red Team | Prima limitare | Restabilire finalizată | Dovezi privind timpii | Evaluare |
|---|---|---|---|---|

F1.3.2 Lacunele de acoperire sunt consemnate în trei categorii. Acestea au
responsabili și modalități de remediere diferite; o singură valoare privind
acoperirea detectării nu permite comenzii să acționeze.

| Categorie | Responsabil principal | Acțiune necesară |
|---|---|---|
| Nu există telemetrie utilizabilă | Structurile de inginerie a platformelor, identității sau endpoint-urilor | Instituirea sau remedierea sursei și validarea calității datelor |
| Telemetria este prezentă, dar detectarea nu este eficace | Structura de inginerie a detectării | Proiectarea și validarea detectării prin reluarea activității |
| Alerta a fost generată, dar nu a fost examinată în intervalul necesar | Conducerea operațiilor defensive | Corectarea priorității, direcționării, capacității sau procedurii și repetarea exercițiului |

F1.3.3 Ipotezele privind attack paths consemnate în Anexa D, punctul D.6.3, sunt
comparate cu evenimentele produse. Atunci când organizația a anticipat că un
control va detecta o acțiune, iar acesta nu a detectat-o, diferența este
consemnată drept constatare.

---

## F1.4 Constatări

### F1.4.1 Structură

F1.4.1.1 Fiecare constatare este consemnată în formularul-tip T09 și precizează:
identificatorul; titlul; gravitatea; categoria; nivelul de capabilitate la care
este accesibilă; activele afectate; descrierea; tehnica prin care a fost
exploatată; referința dovezii; impactul asupra misiunii; cauza principală;
recomandarea; posibilitatea de detectare; responsabilul; data-țintă; și metoda de
retestare.

F1.4.1.2 Titlul unei constatări descrie o deficiență, nu o realizare.

F1.4.1.3 Două câmpuri sunt în mod constant cele mai slabe în raportarea imatură.

a. **Cauza principală.** Repetarea unui simptom nu reprezintă o cauză
principală. Absența unui control compensatoriu, deoarece responsabilitatea
pentru o categorie de conturi nu a fost niciodată atribuită, reprezintă o cauză
principală. O politică slabă privind parolele este un simptom. Corectarea
simptomelor reproduce constatarea în misiunea următoare.

b. **Posibilitatea de detectare.** Nu orice deficiență poate fi prevenită la un
cost acceptabil. Fiecare constatare care nu poate fi prevenită în mod economic
trebuie să cuprindă o recomandare de detectare, astfel încât elementul defensiv
să dispună de o acțiune până la programarea corecției structurale.

### F1.4.2 Controale care au funcționat

F1.4.2.1 Fiecare raport trebuie să consemneze controalele care au prevenit,
întârziat sau detectat activitatea; detectările care au funcționat corect;
acțiunile de răspuns care au fost corecte și oportune; și deciziile de proiectare
care au constrâns misiunea.

F1.4.2.2 Această cerință are două motive. Informația este exactă, iar un raport
care o omite nu este exact. De asemenea, acesta este singurul mecanism prin care
o organizație stabilește care dintre investițiile sale sunt eficace.

### F1.4.3 Referirea la personal

F1.4.3.1 Constatările descriu funcții și proceduri. Persoanele nu sunt
nominalizate.

F1.4.3.2 Nu trebuie inclus niciun material care ar putea susține o acțiune
disciplinară sau administrativă.

F1.4.3.3 Rezultatele ingineriei sociale sunt raportate sub formă de rate.
Rezultatele individuale nu sunt raportate.

F1.4.3.4 Factorii umani sunt consemnați ca aspecte procedurale sau de instruire.
O persoană care a răspuns unei tentative bine construite sub presiunea timpului
a demonstrat o lacună a controlului care a permis tentativei să ajungă la ea.

---

## F1.5 Gravitate

F1.5.1 Gravitatea este determinată de impactul asupra misiunii și de
exploatabilitatea în mediul evaluat. Aceasta nu este derivată dintr-un scor
publicat al vulnerabilității.

| Gravitate | Semnificație | Termen preconizat |
|---|---|---|
| Critică | Permite în mod direct pierderea unui serviciu critic, compromiterea unui volum semnificativ de date sau controlul administrativ al infrastructurii, realizabile de adversarul emulat fără obstacole semnificative | Zile |
| Ridicată | Permite o compromitere semnificativă sau constituie o etapă majoră către un obiectiv, realizabilă cu efort moderat | Săptămâni |
| Medie | Contribuie la un attack path, dar necesită condiții suplimentare; sau reprezintă o lacună de detectare pentru o tehnică semnificativă | Următorul ciclu de planificare |
| Scăzută | Deficiență minoră sau posibilitate de consolidare; ori lacună de detectare pentru o tehnică de valoare limitată | Lista de activități restante |
| Informativă | Fără risc direct. Observație de interes. | Informare |

F1.5.2 Gravitatea este evaluată de Red Team și poate fi contestată de
organizația evaluată. Contestația este consemnată în raport împreună cu ambele
poziții. Gravitatea nu trebuie modificată fără consemnare.

F1.5.3 Gravitatea este interpretată în raport cu nivelul de capabilitate emulat.
O constatare accesibilă la nivelul 1 este mai urgentă decât aceeași constatare
accesibilă numai la nivelul 3, deoarece un număr mai mare de adversari o pot
accesa. Nivelul este precizat în raport.

---

## F1.6 Analize ulterioare

### F1.6.1 Analiza tehnică ulterioară

F1.6.1.1 Se desfășoară înainte de emiterea raportului, cu operatorii, elementul
defensiv, structura de inginerie a detectării și responsabilii de sistem
relevanți. Două-patru ore.

F1.6.1.2 Descrierea este parcursă cronologic. La fiecare etapă, elementul
defensiv precizează ce a observat, după care este prezentată succesiunea reală.

F1.6.1.3 Se aplică următoarele cerințe.

a. Comanda nu este prezentă. Elementul defensiv trebuie să poată declara, fără
consecințe, că o acțiune nu a fost observată.

b. Nicio persoană nu este nominalizată. Moderatorul asigură respectarea acestei
cerințe.

c. Structura de inginerie a detectării participă cu acces la interfața sa de
interogare și construiește prima detectare în timpul analizei ulterioare.

d. Acțiunile sunt consemnate împreună cu responsabilii.

F1.6.1.4 Cea mai mare parte a valorii unei misiuni este transferată în cadrul
acestei analize ulterioare, iar raportul devine mai exact ca urmare a acesteia.
Elementul defensiv deține frecvent telemetrie pe care Red Team nu a cunoscut-
o și care modifică constatările.

### F1.6.2 Informarea comenzii

F1.6.2.1 Se desfășoară împreună cu Autoritatea de aprobare, conducerea structurii
de securitate și responsabilii capabilităților relevante, odată cu raportul sau
la scurt timp după acesta. Treizeci-patruzeci și cinci de minute.

F1.6.2.2 Succesiune: întrebarea la care trebuia să răspundă misiunea; activitatea
desfășurată; evenimentele produse; controalele care au funcționat; cele care nu
au funcționat, în ordine; recomandările și costul acestora; deciziile necesare.

F1.6.2.3 Se aplică următoarele cerințe.

a. Impactul asupra misiunii este precizat înaintea tehnicii.

b. Este prezentată o singură diagramă attack path.

c. Nu este desfășurată o demonstrație în direct. Aceasta îndepărtează atenția de
la întrebarea privind aspectele care trebuie corectate.

d. Informarea se încheie cu deciziile necesare din partea audienței.

---

## F1.7 Distribuție și gestionare

F1.7.1 Raportul poartă clasificarea celui mai sensibil material la care face
trimitere.

F1.7.2 Lista de distribuție este definită în Regulile de angajare și indică
persoane sau funcții nominalizate.

F1.7.3 Rapoartele sunt distribuite criptat sau printr-o platformă controlată.

F1.7.4 Elementul defensiv primește evidența activității la încheierea execuției
și raportul după închiderea misiunii.

F1.7.5 Păstrarea se efectuează conform Regulilor de angajare, fiind urmată de
distrugere și de emiterea unui certificat. Rapoartele nu sunt transmise în afara
listei de distribuție fără aprobarea Autorității de aprobare.

---

## F1.8 Remediere și retestare

F1.8.1 Red Team oferă consultanță privind remedierea. Nu o implementează. O
urmărește.

| Etapă | Responsabil | Standard |
|---|---|---|
| Introducerea constatării în registrul de riscuri | Trusted Agent | În termen de 10 zile lucrătoare de la emitere |
| Atribuirea responsabilului și a datei-țintă | Responsabilul sistemului | În termen de 10 zile lucrătoare |
| Implementarea remedierii | Responsabilul sistemului | Conform termenului preconizat pentru gravitate |
| Notificarea finalizării | Responsabilul sistemului | Către Red Team |
| Retestarea | Red Team | În termen de 20 de zile lucrătoare de la notificare |
| Închiderea | Red Team | Numai în urma unei retestări trecute cu succes |

F1.8.2 O constatare este închisă printr-o retestare trecută cu succes, nu prin
închiderea unei sarcini.

F1.8.3 Atunci când organizația decide să nu remedieze, decizia este consemnată
ca acceptare formală a riscului, semnată de Autoritatea de aprobare, cu o dată
de reexaminare. Constatarea rămâne deschisă.

---

## F1.9 Verificare înainte de emitere

F1.9.1 Ofițerul verificator confirmă următoarele înainte de emiterea raportului.

1. Rezumatul poate fi înțeles în mod independent, nu depășește două pagini și
   nu conține terminologie tehnică.
2. Fiecare afirmație este trasabilă la dovezile menționate.
3. Controalele care au funcționat sunt consemnate.
4. Fiecare etapă a descrierii conține o observație defensivă.
5. Lacunele de acoperire sunt consemnate în cele trei categorii prevăzute la
   punctul F1.3.2.
6. Nicio persoană nu este identificată.
7. Niciun credential, token, nicio cheie și niciun volum mare de
   date sensibile nu apare nicăieri, inclusiv în apendice.
8. Capturile de ecran sunt redactate și conțin o referință temporală vizibilă.
9. Evaluările gravității sunt consecvente la nivel intern.
10. Fiecare constatare precizează o cauză principală, nu un simptom reformulat.
11. Fiecare constatare are un responsabil, o dată-țintă și o metodă de retestare.
12. Constatările care nu pot fi prevenite în mod economic conțin o recomandare
    de detectare.
13. Nivelul de capabilitate emulat este precizat.
14. Evidența activității și atestarea cleanup-ului sunt atașate.
15. Clasificarea și distribuția sunt corecte.
16. Ofițerul verificator nu a executat misiunea.
17. Identificatorii dovezilor, hashurile și referințele depozitului se corelează
    cu indexul dovezilor.
18. Indicatorii precizează eșantionul, excluderile, observațiile lipsă sau
    cenzurate și limitările datelor.

---

# PARTEA F2 — INDICATORI ȘI MATURITATE

## F2.1 Principiu

F2.1.1 Red Team este un instrument de măsurare. Eficacitatea sa este
evaluată prin îmbunătățirea apărării, nu prin propria performanță în cadrul
misiunilor.

F2.1.2 Indicatorii exprimați prin realizările Red Team produc trei efecte:
o structură Red Team recompensată pentru succes selectează ținte mai ușoare; un element
defensiv sancționat pentru eșec ascunde incidente și contestă constatările; iar
comanda primește un scor, nu o evaluare a riscului. Interdicția este prevăzută
la punctul 3.7 din metodologie.

---

## F2.2 Indicatori consemnați pentru fiecare misiune

### F2.2.1 Timpi

| Indicator | Definiție |
|---|---|
| Timp până la telemetrie | De la evenimentul definit de începere a acțiunii Red Team la primul eveniment defensiv utilizabil care îi poate fi atribuit |
| Timp până la alertă | De la evenimentul definit de începere a acțiunii Red Team la prima alertă care îi poate fi atribuită |
| Timp până la examinare | De la crearea alertei la prima examinare dovedită a analistului |
| Timp până la răspuns | De la prima examinare dovedită a analistului la prima acțiune eficace de limitare |
| Timp până la limitare | De la evenimentul definit de începere a acțiunii Red Team la eliminarea dovedită a accesului adversarului evaluat |
| Timp până la restabilire | De la prima acțiune de limitare la restabilirea serviciului sau controlului afectat la starea convenită |
| Prezență | De la evenimentul de initial access la eliminarea dovedită a accesului adversarului evaluat |

F2.2.1.1 Evenimentele de început și de sfârșit ale fiecărui indicator de timp
sunt definite înainte de execuție. Acestea sunt consemnate pe acțiune sau
tehnică, nu numai pentru misiune în ansamblu. O singură valoare ascunde
distincția dintre o tehnică detectată cu promptitudine și una nedetectată deloc.

F2.2.1.2 Un eveniment neobservat înainte de încheierea intervalului de măsurare
este raportat ca neobservat sau cenzurat la dreapta, cu precizarea intervalului.
Acesta nu este consemnat ca zero și nu este omis fără explicație. Rezumatul
precizează numărul de cazuri, dimensiunea eșantionului, mediana și intervalul și
identifică observațiile cenzurate. Media este utilizată numai atunci când
distribuția și dimensiunea eșantionului îi conferă relevanță și niciodată fără
precizarea dimensiunii eșantionului.

### F2.2.2 Acoperire

| Indicator | Definiție |
|---|---|
| Starea încercării | Tehnici planificate încercate, neîncercate sau înlocuite, cu precizarea motivului |
| Prevenire | Tehnici încercate și blocate înaintea efectului urmărit, împărțite la tehnicile încercate |
| Execuție | Tehnici încercate care obțin efectul tehnic urmărit, împărțite la tehnicile încercate |
| Telemetrie | Acțiuni executate sau blocate care produc telemetrie utilizabilă, împărțite la acțiunile aplicabile |
| Detectare | Acțiuni aplicabile care generează o alertă relevantă, împărțite la acțiunile aplicabile |
| Examinare | Alerte examinate, împărțite la alertele generate |
| Limitare | Acțiuni executate și limitate efectiv în intervalul convenit, împărțite la acțiunile executate care necesitau limitare |
| Restabilire | Cazuri de limitare restabilite la starea convenită, împărțite la cazurile care necesitau restabilire |
| Profilul lacunelor | Distribuția în cele trei categorii prevăzute la punctul F1.3.2 |

F2.2.2.1 Fiecare raport precizează numărătorul, numitorul, excluderile și
numărul de cazuri. O tehnică nu este numărată ca posibilitate de detectare atunci
când acțiunea planificată nu a fost încercată, a fost înlocuită sau a fost
blocată înainte ca semnalul relevant să poată exista. Prevenirea, telemetria,
alertarea, investigarea, limitarea și restabilirea sunt rezultate distincte ale
controalelor.

### F2.2.3 Rezultat și remediere

| Indicator | Definiție |
|---|---|
| Obiective realizate și împiedicate | Pentru fiecare obiectiv, împreună cu calea sau controlul în cauză |
| Controale care s-au activat | Controalele care au prevenit, întârziat sau detectat activitatea |
| Constatări în funcție de gravitate | Distribuție |
| Închidere | Constatări închise prin retestare, împărțite la constatările formulate |
| Timp până la închidere | Numărul median de zile de la emitere la corecția verificată, în funcție de gravitate |
| Reapariție | Constatări care reapar într-o misiune ulterioară |

F2.2.3.1 Reapariția necesită un temei de comparație documentat. Un titlu similar
nu este suficient: sunt analizate obiectivul controlului, mediul afectat,
condiția de atac și corecția preconizată. O constatare este raportată ca
netestată atunci când o misiune ulterioară nu a exercitat condiția corectată.

### F2.2.4 Social engineering

F2.2.4.1 Este consemnată sub formă de rate. Rezultatele individuale nu sunt
consemnate.

| Indicator | Semnificație |
|---|---|
| Rata de livrare | Dovezi specifice campaniei privind filtrarea și livrarea; nu este un scor general al gateway-ului |
| Rata de interacțiune | Ponderea destinatarilor care efectuează interacțiunea definită, cu excluderea activității automate și duplicate |
| Rata de transmitere | Ponderea destinatarilor care ajung la evenimentul definit de transmitere; nu sunt necesare date reale de autentificare |
| Rata de raportare | Ponderea destinatarilor care raportează tentativa |
| Timp până la prima raportare | De la livrare la primul raport transmis de un destinatar |

F2.2.4.2 Rata de raportare și timpul până la prima raportare sunt valorile
relevante. O rată semnificativă de interacțiune, însoțită de raportare promptă și
larg răspândită, indică faptul că tentativa a fost limitată de personal. O rată
scăzută de interacțiune fără nicio raportare nu indică acest lucru. Sunt
precizate numitorul, tratamentul duplicatelor, interacțiunile automate ale
instrumentelor de securitate, eșecurile de livrare și intervalul de măsurare.

### F2.2.5 Specificarea indicatorilor și calitatea datelor

F2.2.5.1 Fiecare indicator raportat are o specificație aprobată la punctul de
decizie G3. Specificația consemnează:

a. identificatorul indicatorului, decizia sau obiectivul deservit și
responsabilul cu răspundere decizională;

b. definiția, unitatea, numărătorul și numitorul ori evenimentele de început și
de sfârșit;

c. sistemele-sursă, metoda de colectare, intervalul și frecvența măsurării;

d. regulile de includere, excludere și înlocuire;

e. ținta sau intervalul preconizat și justificarea sa, atunci când o țintă este
utilă;

f. dimensiunea eșantionului, datele lipsă, observațiile cenzurate și
incertitudinea cunoscută;

g. metoda de validare, verificatorul și data;

h. mediul, scenariul, Threat Profile și versiunea ATT&CK aplicabile; și

i. păstrarea, clasificarea și formatul de raportare.

F2.2.5.2 Red Team Lead și responsabilul datelor defensive
reconciliază marcajele temporale, identificatorii acțiunilor și evidențele-
sursă înainte de calcul. Ajustările manuale rămân vizibile și atribuibile. Un
indicator care nu îndeplinește pragul de calitate declarat este raportat
împreună cu limitarea sau este reținut; nu este prezentat ca fiind precis.

F2.2.5.3 Țintele sunt aprobate local și bazate pe risc. Acestea nu sunt preluate
de la altă organizație fără a stabili că serviciul, amenințarea, intervalul de
măsurare și calitatea datelor sunt comparabile. Indicatorii sunt analizați în
raport cu stimulentele create: un indicator nu trebuie să recompenseze zgomotul,
crearea superficială de reguli, închiderea prematură a tichetelor sau evitarea
testelor dificile.

---

## F2.3 Indicatorii programului

F2.3.1 Sunt consemnați pentru toate misiunile și raportați trimestrial.

| Indicator | Evoluție urmărită |
|---|---|
| Acoperirea validată a detectării pentru acțiuni comparabile | Îmbunătățire către ținta locală aprobată, bazată pe risc |
| Timpul până la alertă, examinare, limitare și restabilire pentru acțiuni comparabile | Îmbunătățire către ținta locală aprobată, bazată pe risc |
| Închiderea prin retestare trecută cu succes | Îmbunătățire către ținta locală aprobată, bazată pe risc |
| Timpul până la închiderea verificată, în funcție de gravitate | Îmbunătățire, sub rezerva riscului și complexității remedierii |
| Reapariție validată | Scădere, cu prezentarea separată a corecțiilor netestate |
| Îmbunătățiri defensive verificate prin reluare sau retestare | Creșterea eficacității, nu numai a numărului |
| Constatări acceptate în locul corectării | Monitorizare. O pondere în creștere indică fie constatări asupra cărora nu se poate acționa, fie dezacord privind gravitatea evaluată. |
| Misiuni solicitate, nu dispuse | Creștere |

F2.3.2 Niciun indicator unic nu este indicatorul universal al eficacității
programului. Reapariția validată este importantă atunci când o corecție a fost
retestată cu adevărat. Celelalte perspective necesare sunt reducerea riscului
pentru misiune, îmbunătățirea răspunsului, remedierea verificată, amploarea
acoperirii riscului și calitatea dovezilor justificative.

F2.3.3 Tendințele combină numai observații comparabile. Raportul trimestrial
precizează modificările semnificative ale sferei, amenințării, procedurii,
arhitecturii defensive, intervalului de măsurare, versiunii ATT&CK și sursei de
date. Atunci când comparabilitatea este slabă, rezultatele sunt prezentate ca
dovezi ale unor cazuri distincte, nu ca linie de tendință.

---

## F2.4 Raport trimestrial

F2.4.1 O pagină, transmisă Autorității de aprobare, care cuprinde:

a. misiunile desfășurate în cursul trimestrului, câte un rând pentru fiecare;

b. acoperirea în misiuni comparabile sau rezultatele cazurilor distincte atunci
când comparația nu este valabilă;

c. profilul lacunelor, împreună cu responsabilii;

d. constatările formulate, închise, restante și acceptate;

e. orice reapariție și cauza acesteia;

f. îmbunătățirile defensive care pot fi atribuite activității Red Team;

g. deciziile necesare.

F2.4.2 Litera f este consemnată de la început. Atribuirea îmbunătățirilor
respective nu se efectuează în altă parte.

---

## F2.5 Maturitate

F2.5.1 Maturitatea este evaluată anual în patru domenii, pe trei niveluri.

### F2.5.2 Program

| Nivel | Criterii |
|---|---|
| 1 Definit | Scopul și obiectivele sunt documentate și aprobate. Misiunile sunt consemnate. Constatările sunt urmărite. Există un program. |
| 2 Gestionat | Organizația în ansamblu înțelege funcția. Misiunile produc îmbunătățiri tactice consecvente. Indicatorii sunt raportați ciclic. |
| 3 Optimizat | Misiunile sunt selectate în raport cu principalele riscuri ale organizației. Produsele influențează deciziile de alocare a resurselor. |

### F2.5.3 Personal

| Nivel | Criterii |
|---|---|
| 1 Definit | Funcțiile sunt documentate. Capabilitatea depinde parțial de sprijin extern. |
| 2 Gestionat | Există expertiză internă privind tehnologia utilizată efectiv. Există o matrice de competențe și un plan de instruire. |
| 3 Optimizat | Există specialiști în mai multe discipline, cu posibilitatea de a implica expertiză de domeniu prin concepție, nu din necesitate. |

### F2.5.4 Proces

| Nivel | Criterii |
|---|---|
| 1 Definit | Există Reguli de angajare pentru fiecare misiune. Ciclul de viață și punctele de decizie sunt respectate. |
| 2 Gestionat | Threat Profile-urile determină scenariile. Misiunile sunt planificate conform unui calendar. Aspectele juridice sunt integrate în planificare. Ciclul de retestare funcționează. |
| 3 Optimizat | Misiunile sunt selectate în contextul principalelor riscuri. Există corelare completă a tehnicilor și măsurarea acoperirii. Reluarea în regim Purple Team este integrată ca standard. |

### F2.5.5 Tehnologie

| Nivel | Criterii |
|---|---|
| 1 Definit | Instrumente consacrate. Infrastructură construită manual. Evidențe manuale. |
| 2 Gestionat | Implementarea automatizată a infrastructurii. Evidențe automate ale operatorilor și infrastructurii. Mediu de laborator pentru testarea tehnicilor. |
| 3 Optimizat | Capabilitate proprie acolo unde Threat Profile o impune. Raportare și colectare a dovezilor automatizate. |

F2.5.6 Nivelul 1 în toate cele patru domenii constituie o capabilitate
funcțională. Nivelul 2 reprezintă o destinație legitimă.

F2.5.7 Domeniul tehnologiei nu trebuie avansat dincolo de nivelul 1 înainte ca
domeniul procesului să fi atins nivelul 2. Capabilitatea proprie într-o
organizație fără un ciclu de retestare instituit nu îmbunătățește rezultatele
defensive și reprezintă cea mai frecventă alocare eronată a efortului în acest
domeniu.

---
