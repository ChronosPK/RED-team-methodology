# ANEXA A — ROLURI ȘI DREPTURI DE DECIZIE

În sprijinul Capitolului 6 din Metodologia Red Team. Emisă sub autoritatea
Head of Red Team.

---

## A.1 Scop

A.1.1 Prezenta anexă stabilește funcțiile implicate într-o misiune,
responsabilitățile acestora, cumulurile de funcții permise și interzise,
încadrarea necesară și controalele care protejează independența în cadrul unui
lanț de comandă.

A.1.2 Misiunile eșuează mai frecvent din cauza confuziei între funcții decât din
lipsa competențelor tehnice. Trei deficiențe se repetă: autorizarea este acordată
de o persoană care nu are competența necesară; controlul misiunii este deținut de
elementul evaluat; și nu poate fi contactat niciun titular al unei funcții atunci
când activitatea trebuie suspendată.

## A.2 Structura funcțiilor

```{.mermaid filename="annex-a-roles"}
flowchart TB
    AA["AUTORITATEA DE APROBARE<br/>Acceptă riscul. Semnează Scrisoarea de autorizare.<br/>În afara lanțului de comandă evaluat"]
    TA["TRUSTED AGENT<br/>(Control Team Lead)<br/>Controlează misiunea<br/>Autoritate unilaterală de suspendare sau încetare definitivă"]
    CT["Control Team"]
    LA["Consilierul juridic"]
    RTL["RED TEAM LEAD"]
    OP["Operatorii"]
    TI["THREAT INTELLIGENCE<br/>ANALYST"]
    IE["Inginerul de<br/>infrastructură"]
    RO["Ofițerul verificator"]
    BT["ELEMENTUL DEFENSIV<br/>Evaluat și, într-o misiune covert, neinformat"]
    AA -->|autorizează| TA
    TA --> CT
    TA --> RTL
    TA --- LA
    RTL --> OP
    RTL --> TI
    RTL --> IE
    RTL --> RO
    OP -.->|evaluează| BT
```

**Figura A-1. Funcțiile din cadrul unei misiuni**

---

## A.3 Funcții

### A.3.1 Head of Red Team

A.3.1.1 Funcție permanentă. Răspunde de capabilitate, personalul și standardele
acesteia, precum și de anexele la metodologie. Poate îndeplini funcția de Șef al
misiunii Red Team pentru o anumită misiune.

**Responsabilități**

a. Menține capabilitatea, încadrarea, instrumentele și instruirea acesteia.

b. Emite și modifică anexele și formularele-tip, cu informarea Autorității de
aprobare.

c. Acceptă sau refuză solicitările la punctul de decizie G0, consemnând decizia
și temeiul acesteia.

d. Transmite raportul trimestrial Autorității de aprobare.

e. Efectuează analiza anuală a metodologiei și evaluarea maturității.

### A.3.2 Autoritatea de aprobare

A.3.2.1 Acceptă riscul unei misiuni. Această funcție este ocupată frecvent la un
nivel ierarhic prea scăzut. Funcția este încadrată corect atunci când titularul
ar fi avut competența de a aproba în prealabil pierderea, timp de patru ore, a
unui serviciu de producție.

| | |
|---|---|
| Titular | Un ofițer care deține autoritatea de a accepta riscul operațional pentru sistemele incluse în sfera de aplicare |
| Nu trebuie să fie | Șeful elementului defensiv sau orice persoană a cărei performanță ori funcție este măsurată în cadrul misiunii |
| Semnează | Metodologia și, atunci când autoritatea competentă pentru riscul operațional este diferită de Autoritatea responsabilă de sistem, contrasemnează Scrisoarea de autorizare |

A.3.2.2 Autoritatea de comandă și autoritatea responsabilă de sistem sunt
distincte. Autoritatea de a dispune o evaluare nu conferă autoritatea de a
consimți la acces. Atunci când cele două sunt deținute separat, ambele sunt
necesare. A se vedea Anexa G, punctul G.2.4.

**Responsabilități**

a. Confirmă faptul că misiunea servește unei cerințe a misiunii.

b. Acceptă în scris riscul operațional rezidual.

c. Semnează sau contrasemnează Scrisoarea de autorizare, fără a înlocui
consimțământul Autorității responsabile de sistem atunci când aceasta este
deținută în altă structură.

d. Rămâne contactabilă, personal sau printr-un înlocuitor nominalizat, pe
întreaga perioadă de execuție.

e. Asigură alocarea resurselor pentru remediere.

f. Soluționează divergențele dintre Red Team Lead și Trusted Agent.

### A.3.3 Trusted Agent (Control Team Lead)

A.3.3.1 Controlează misiunea în cadrul organizației evaluate. Deține informații
despre activitate, etapele principale și stare care, dacă ar fi divulgate, ar
influența elementul defensiv.

| | |
|---|---|
| Titular | Un reprezentant superior al organizației evaluate, care are competența de a opri activitatea și nivelul de înțelegere tehnică necesar evaluării riscului |
| Nu trebuie să fie | Membru Red Team sau al elementului defensiv evaluat |
| Autoritate | Autoritatea unilaterală de a suspenda sau înceta definitiv misiunea în orice moment, fără justificare și fără consultare |

A.3.3.2 Prima îndatorire a Trusted Agent este prevenirea prejudiciilor
ireversibile. Toate celelalte îndatoriri îi sunt subordonate.

**Responsabilități**

a. Menține target space-ul autorizat, lista de excluderi și lista de contacte și
controlează modificările acestora.

b. Monitorizează riscul operațional pe durata execuției și suspendă activitatea
atunci când riscul depășește apetitul pentru risc.

c. Stabilește dacă activitatea observată poate fi atribuită Red Team.

d. Protejează confidențialitatea unei misiuni covert.

e. Obține, atunci când este necesar, consimțământul responsabililor de sistem și
al părților terțe.

### A.3.4 Control Team

A.3.4.1 Personalul care acordă sprijin Trusted Agent în cadrul
misiunilor mai ample. Într-o misiune de mică amploare, Trusted Agent poate
constitui întreaga Control Team. Termenul istoric pentru această funcție
este consemnat în Lexiconul metodologiei și nu este utilizat ca denumire a unei
funcții.

**Responsabilități**

a. Asigură încadrarea liniei de deconflictare în intervalele convenite.

b. Verifică afirmațiile Red Team în raport cu telemetria deținută de
organizația evaluată.

c. Consemnează deciziile Control Team împreună cu orele aferente.

d. Pregătește evidența observațiilor defensive utilizată la analiza ulterioară.

### A.3.5 Red Team Lead

A.3.5.1 Răspunde de desfășurarea unei misiuni, de siguranța acesteia și de
exactitatea raportului său.

**Responsabilități**

a. Transformă obiectivele clientului într-un scenariu și într-un plan al
misiunii care pot fi executate în siguranță.

b. Răspunde de Regulile de angajare, de la proiect până la semnare.

c. Desemnează operatorii și controlează repartizarea sarcinilor.

d. Aprobă fiecare instrument și fiecare tehnică înainte de prima utilizare în
mediu. A se vedea Anexa E, punctul E.2.3.

e. Se asigură că jurnalele operatorilor și dovezile sunt complete și realizate
în momentul acțiunii.

f. Escaladează riscul către Trusted Agent fără întârziere sau filtrare.

g. Suspendă activitatea la îndeplinirea oricărui criteriu de încetare prevăzut
în Capitolul 8.

h. Răspunde de raport.

A.3.5.2 Red Team Lead trebuie să refuze începerea sau continuarea
unei misiuni atunci când Regulile de angajare nu sunt semnate, sfera de aplicare
este ambiguă, contactele nu pot fi apelate sau un criteriu de încetare nu este
soluționat. Acest refuz nu poate fi anulat. Deficiența poate fi corectată, iar
starea de pregătire poate fi reevaluată prin punctul de decizie aplicabil.

### A.3.6 Operatorul

A.3.6.1 Desfășoară activități de recunoaștere, exploatare, lateral movement,
persistence și captare a dovezilor în cadrul mediului.

**Responsabilități**

a. Acționează în limitele Regulilor de angajare. Atunci când permisiunea este
incertă, încetează activitatea și solicită îndrumare.

b. Completează jurnalul operatorului în momentul acțiunii, la standardul
prevăzut în Anexa E.

c. Captează dovezi suficiente pentru demonstrarea impactului și nimic în plus.

d. Consultă un al doilea operator înaintea oricărei acțiuni ireversibile, cu
risc ridicat sau efectuate pentru prima dată.

e. Raportează fără întârziere orice suspiciune privind pierderea unui serviciu,
contactul cu un sistem din afara sferei de aplicare, indiciul prezenței unui
adversar real sau expunerea datelor sensibile peste necesarul demonstrativ.

f. Consemnează fiecare modificare adusă unui sistem în momentul efectuării.

A.3.6.2 Operatorul nu reprezintă ultima măsură de protecție împotriva producerii
unui prejudiciu. Atunci când aprecierea unui operator este singurul control care
previne un incident, misiunea este proiectată incorect.

### A.3.7 Threat Intelligence Analyst

A.3.7.1 Stabilește adversarul emulat și temeiul alegerii sale. În cadrul
încadrării prevăzute la punctul A.5.1, aceasta este o funcție dedicată.

**Responsabilități**

a. Identifică adversarii care amenință în mod realist ținta și consemnează
temeiul.

b. Întocmește Threat Profile în formularul-tip T03.

c. Descompune amenințarea într-un set ordonat de tehnici corelate cu MITRE
ATT&CK.

d. Desfășoară recunoașterea țintei în limitele autorizate.

A.3.7.2 Informațiile produse de operatorii care intenționează să le utilizeze
tind să justifice tehnici deja selectate. Threat Profile ar trebui redactat
de o persoană care nu îl va executa. Atunci când acest lucru nu este posibil,
profilul trebuie verificat de o a doua persoană, iar verificatorul trebuie
consemnat în planul misiunii.

### A.3.8 Inginerul de infrastructură

A.3.8.1 Construiește și administrează infrastructura operațională.

**Responsabilități**

a. Proiectează și implementează infrastructura misiunii la standardul prevăzut
în Anexa D, punctul D.7.

b. Se asigură că traficul de Command and Control este criptat, iar infrastructura
este segmentată pe niveluri.

c. Menține jurnalizarea automată a activității infrastructurii, independent de
acțiunea operatorului.

d. Menține inventarul infrastructurii și finalizează dezafectarea la încheierea
execuției.

e. Menține configurația de referință a instrumentelor și verifică integritatea
acestora înainte de implementare.

### A.3.9 Ofițerul verificator

A.3.9.1 O persoană calificată care nu a executat misiunea și nu a redactat
raportul, desemnată să îl verifice înainte de emitere. Verificatorul poate fi un
membru Red Team care nu a fost desemnat pentru misiune sau un verificator
intern ori extern din afara celulei de execuție, autorizat corespunzător pentru
acces. Același standard de independență se aplică verificării profilului
amenințării atunci când autorul acestuia va executa planul.

**Responsabilități**

a. Verifică dacă fiecare afirmație din raport este susținută de dovezi
consemnate.

b. Verifică dacă nicio constatare nu identifică o persoană.

c. Verifică dacă în raport sau în anexele sale nu apare niciun element de
autentificare, token, nicio cheie și niciun volum mare de date sensibile.

d. Verifică dacă evaluările gravității sunt conforme cu modelul din Anexa F.

e. Verifică dacă Cleanup and Rollback Register este completat și semnat.

A.3.9.2 Ofițerul verificator nu trebuie să fie autorul raportului.

### A.3.10 Consilierul juridic

A.3.10.1 Este consultat, fără a fi integrat în echipă. Este implicat în faza 1 și
pentru orice problemă juridică nouă.

**Responsabilități**

a. Confirmă valabilitatea lanțului de autorizare pentru țintă și jurisdicție.

b. Oferă consultanță privind protecția datelor, monitorizarea personalului și
constrângerile aplicabile ingineriei sociale.

c. Oferă consultanță privind condițiile părților terțe și ale furnizorilor de
găzduire atunci când sfera de aplicare le implică.

d. Verifică Scrisoarea de autorizare înainte de semnare.

e. Oferă consultanță privind gestionarea și păstrarea dovezilor.

### A.3.11 Elementul defensiv

A.3.11.1 Nu este o funcție Red Team. Conduita sa pe durata unei misiuni
este prevăzută aici deoarece misiunile produc rezultate nevalide atunci când
elementul defensiv se comportă anormal.

**Responsabilități**

a. Asigură apărarea în mod normal. Nu își modifică postura deoarece suspectează
desfășurarea unei misiuni.

b. Urmează procedura standard de răspuns la incidente, inclusiv escaladarea.

c. Păstrează dovezile și telemetria.

d. Participă la analiza ulterioară.

e. Răspunde de îmbunătățirile detectării rezultate din constatări și le
implementează.

A.3.11.2 În cadrul unei misiuni covert, elementul defensiv nu este informat.
În activitatea Purple Team, acesta este participant cu drepturi
depline. A se vedea Anexa H, partea H4.

---

## A.4 Separarea atribuțiilor

### A.4.1 Cumuluri permise

A.4.2 În cadrul încadrării prevăzute la punctul A.5.1, majoritatea funcțiilor
sunt deținute separat. Următoarele cumuluri sunt permise atunci când încadrarea
nu permite o altă soluție.

| Cumul | Condiție |
|---|---|
| Red Team Lead și Threat Intelligence Analyst | Este consemnat în plan; Threat Profile este verificat de o a doua persoană |
| Red Team Lead și Operatorul | Permis în misiunile de mică amploare; autoritatea de suspendare este exercitată separat |
| Operatorul și Inginerul de infrastructură | Permis |
| Trusted Agent și Control Team | Permis în misiunile de mică amploare; o singură persoană poate constitui Control Team atunci când disponibilitatea și un înlocuitor sunt documentate |
| Operatorul și Ofițerul verificator | Numai cu privire la o misiune la care operatorul respectiv nu a participat |

### A.4.3 Cumuluri interzise

A.4.4 Următoarele funcții nu trebuie cumulate.

| Cumul | Motiv |
|---|---|
| Red Team Lead și Trusted Agent | Funcția care generează riscul ar stabili dacă riscul este acceptabil, eliminând autoritatea independentă de suspendare |
| Orice membru Red Team și Autoritatea de aprobare | Autoautorizare, care nu poate fi deosebită din punct de vedere juridic de absența autorizării |
| Trusted Agent și un membru al elementului defensiv evaluat, în cadrul unei misiuni covert | Cunoașterea prealabilă invalidează rezultatul pentru elementul respectiv |
| Autorul unui raport și unicul Ofițer verificator al acestuia | Lipsește verificarea independentă a afirmațiilor formulate |
| Autoritatea de aprobare din cadrul lanțului de comandă evaluat | Riscul nu poate fi acceptat în mod imparțial în numele unei capabilități pe care misiunea o evaluează |

A.4.5 Cumulurile prevăzute la punctul A.4.4 nu pot face obiectul unei derogări.
Atunci când încadrarea nu permite separarea, o persoană externă calificată
trebuie să îndeplinească funcția incompatibilă sau activitatea trebuie
reconfigurată ca exercițiu open ori Purple Team. Activitatea nu
trebuie să continue ca misiune covert Red Team. Încadrarea limitată nu
constituie, prin ea însăși, un control compensatoriu.

---

## A.5 Încadrare

### A.5.1 Încadrarea minimă viabilă

A.5.1.1 O celulă de execuție formată din două persoane este suficientă pentru a
începe cu activitate SL-4 Purple Team, validare în laborator și
activități open, strict delimitate, cu postură assumed breach.
O misiune reală covert necesită un Red Team Lead și cel puțin
doi operatori suplimentari. Această componență de trei persoane reflectă și
referința pentru entitățile interne de testare din TIBER-EU și Regulamentul
delegat (UE) 2025/1190 al Comisiei; aceasta este utilizată aici drept referință,
nu ca afirmație privind aplicabilitatea reglementării.

| Funcție de execuție | Echipă inițială de două persoane | Celulă de trei persoane pentru misiuni reale |
|---|---|---|
| 1 | Head of Red Team; Red Team Lead; operator | Red Team Lead; poate îndeplini și rolul de operator dacă volumul de muncă permite |
| 2 | Operator; infrastructură; cercetarea amenințărilor | Operator; identitate și endpoint-uri; cercetarea amenințărilor |
| 3 | Neîncadrat | Operator; rețea, cloud și infrastructură |

A.5.1.2 Indiferent de dimensiune, Autoritatea de aprobare, Autoritatea
responsabilă de sistem și Trusted Agent sunt funcții distincte din afara
celulei de execuție. Verificarea independentă a Threat Profile-ului și a
raportului trebuie asigurată de o persoană calificată care nu a pregătit sau
executat materialul verificat. O celulă formată din două persoane nu trebuie să
desfășoare activități reale covert sau activități care impun unui membru al
celulei de execuție să acționeze singur.

### A.5.2 Încadrarea-țintă sustenabilă

A.5.2.1 Șase funcții permit separarea rolurilor, asigurarea continuității pe
durata concediilor și instruirii, verificarea internă independentă și
specializarea funcțională. Funcțiile 7-9 sunt adăugate în funcție de solicitări
și de infrastructură.

| | Funcție | Funcție principală sau domeniu principal |
|---|---|---|
| 1 | Head of Red Team | Responsabilul capabilității; Red Team Lead în misiunile selectate |
| 2 | Locțiitor | Red Team Lead; operator; verificator intern atunci când nu este desemnat în misiune |
| 3 | Operator, identitate și endpoint-uri | Operator; legătura cu structura de detectare |
| 4 | Operator, rețea și infrastructură | Operator; Inginer de infrastructură |
| 5 | Threat Intelligence Analyst | Threat Profile; asigurarea scenariului; sprijin pentru raport |
| 6 | Inginer de infrastructură și instrumente | Inginer de infrastructură; operator; responsabilul laboratorului |
| 7 | Operator, cloud și furnizor de identitate | Control plane-ul mediului cloud și identitatea federată |
| 8 | Legătura cu structura de inginerie a detectării | Transformă observațiile în îmbunătățiri defensive validate |
| 9 | Operator, aplicații sau sisteme de misiune | Selectat în funcție de infrastructura-țintă |

A.5.2.2 Autoritatea de aprobare, Autoritatea responsabilă de sistem, Trusted
Agent, Control Team care acordă sprijin și Consilierul juridic sunt
funcții deținute în afara încadrării de execuție.

### A.5.3 Grupare funcțională

A.5.3.1 Pentru cel puțin șase persoane de execuție, specializarea funcțională
poate fi mai eficientă decât activitatea paralelă a generaliștilor. Sub șase
persoane, efortul de coordonare depășește beneficiul, iar încadrarea nu este
divizată.

A.5.3.2 Pentru încadrarea descrisă se utilizează domenii funcționale în
misiunile curente. Subechipe nominalizate sunt constituite numai pentru misiuni
și exerciții de amploare.

| Subechipă | Domeniu principal |
|---|---|
| Dispozitive ale utilizatorilor finali | Stații de lucru, endpoint-uri, phishing, initial access orientat către utilizator |
| Aplicații și identitate | Web, interfețe, serviciu de directoare, federație, planul de control al mediului cloud |
| Rețea și infrastructură | Echipamente de rețea, segmentare, lateral movement, infrastructura misiunii |
| Sisteme de misiune și tehnologii operaționale | Numai atunci când sunt incluse în sfera de aplicare și numai în conformitate cu Anexa I |

A.5.3.3 Fiecare subechipă are un șef. Red Team Lead coordonează
subechipele și este unicul punct de contact cu Trusted Agent. Șefii
subechipelor nu trebuie să comunice direct cu organizația evaluată.

### A.5.4 Sustenabilitate

A.5.4.1 Două condiții guvernează sustenabilitatea pentru orice încadrare.

a. Nicio capabilitate critică nu trebuie să depindă permanent de o singură
persoană. Construirea infrastructurii, operarea comenzii și controlului,
întocmirea raportului și elaborarea Threat Profile-ului trebuie să aibă,
fiecare, câte un înlocuitor nominalizat. Pentru o încadrare redusă, acel
înlocuitor poate fi o persoană calificată din afara celulei de execuție, supusă
acelorași controale privind autorizarea de securitate, confidențialitatea și
conflictele. Situația este consemnată în matricea de competențe prevăzută în
Anexa J, punctul J2.2.

b. Douăzeci la sută din timpul aferent încadrării trebuie rezervat dezvoltării
capabilității.

A.5.4.2 Limitele maxime de planificare în funcție de încadrare sunt prevăzute în
Capitolul 10, punctul 10.4. Echipa trebuie să reducă ritmul înainte de a sacrifica
verificarea independentă, cleanup-ul, sprijinul pentru remediere,
retestarea, concediile, instruirea sau disponibilitatea unei funcții de rezervă.

---

## A.6 Responsabilități pe faze

A.6.1 **A** indică funcția cu răspundere decizională, unică pentru fiecare
activitate. **R** indică funcția responsabilă cu execuția; **C**, funcția
consultată; **I**, funcția informată.

| Fază și activitate | Aut. aprob. | Trusted Agent | Red Team Lead | Operatori |
|---|---|---|---|---|
| 0 Acceptarea sau refuzarea solicitării | A | C | R | I |
| 1 Aprobarea obiectivelor și sferei de aplicare | A | R | C | I |
| 1 Semnarea Regulilor de angajare | A | R | R | I |
| 1 Semnarea Scrisorii de autorizare | A | C | C | I |
| 2 Întocmirea Threat Profile-ului | I | C | A | C |
| 3 Întocmirea planului misiunii | I | C | A | R |
| 3 Aprobarea infrastructurii | I | C | A | R |
| 4 Execuția | I | C | A | R |
| 4 Deconflictarea unui eveniment | I | **A** | R | C |
| 4 Suspendarea sau încetarea definitivă | C | **A** | R | I |
| 4 Aprobarea modificării Regulilor de angajare | **A** | R | R | I |
| 5 Cleanup și verificare | I | C | A | R |
| 6 Redactarea raportului | I | C | A | R |
| 6 Verificarea raportului | I | I | A | R |
| 6 Susținerea analizei ulterioare | I | R | A | R |
| 7 Asumarea remedierii | A | C | C | I |
| 7 Retestarea | I | C | A | R |

A.6.2 Threat Intelligence Analyst este responsabil cu execuția
în faza 2 și este consultat în fazele 0, 1, 3 și 6. Consilierul juridic este
responsabil cu execuția verificării Scrisorii de autorizare în faza 1 și este
consultat în fazele 0, 1 și 4. Elementul defensiv este consultat pentru
deconflictare în faza 4 și este responsabil cu execuția în fazele 6 și 7.

A.6.3 Pe durata execuției, răspunderea decizională pentru deconflictare și
suspendare revine Trusted Agent, nu Red Team Lead.

---

## A.7 Contact și disponibilitate

A.7.1 Pentru fiecare misiune, Regulile de angajare trebuie să consemneze, pentru
Autoritatea de aprobare, Trusted Agent, Red Team Lead și
câte un înlocuitor nominalizat al fiecăruia:

a. numele și funcția;

b. numărul de telefon principal;

c. numărul de telefon alternativ;

d. adresa de e-mail;

e. identificatorul pentru mesageria securizată, atunci când este utilizată;

f. intervalele de disponibilitate garantată;

g. calea de escaladare în afara programului.

A.7.2 Fiecare număr trebuie verificat telefonic în intervalul de douăzeci și
patru de ore anterior începerii activității, iar verificarea trebuie consemnată
în planul misiunii. O listă de contacte neverificată constituie o cauză frecventă
a întârzierii aplicării unei cerințe de încetare a activității.

---

## A.8 Independența în cadrul unui lanț de comandă

A.8.1 Independența evaluării și subordonarea se află în tensiune. O structură Red Team
subordonată unui ofițer a cărui capabilitate o evaluează își va modera
constatările. Acest fapt decurge din funcționarea obișnuită a ierarhiei, nu din
lipsă de onestitate, și nu este evident pentru persoanele implicate.

A.8.2 Următoarele controale sunt obligatorii și trebuie consemnate în Regulile de
angajare pentru fiecare misiune.

| | Control | Deficiență prevenită |
|---|---|---|
| 1 | Dreptul scris de raportare directă către Autoritatea de aprobare, cu eludarea oricărui comandant intermediar | Moderarea constatărilor în cursul transmiterii |
| 2 | Autoritatea de aprobare se află în afara lanțului de comandă evaluat | Ofițerul care acceptă riscul este și cel a cărui activitate este evaluată prin rezultat |
| 3 | Rapoartele sunt transmise simultan Autorității de aprobare și comandantului evaluat, fără consultare prealabilă și fără posibilitatea modificării înainte de emitere | Negocierea constatărilor înaintea examinării independente |
| 4 | Gravitatea poate fi contestată, iar contestația este consemnată; aceasta nu trebuie modificată fără consemnare | Reducerea evaluărilor sub presiunea nivelului ierarhic |
| 5 | Head of Red Team nu este evaluat profesional de un comandant a cărui capabilitate este evaluată de Red Team | Ofițerul evaluator constituie subiectul raportului |
| 6 | Refuzul din motive juridice, de siguranță sau etice este protejat și escaladat direct | Înlocuirea autorizării prin grad |

A.8.3 Controlul 3 este controlul erodat cel mai frecvent, de regulă printr-o
solicitare de consultare a raportului înainte de emitere. O astfel de solicitare
trebuie refuzată. Cerințele legitime pe care aceasta le reprezintă sunt
îndeplinite prin transmiterea simultană, prin dreptul la un răspuns scris anexat
raportului și prin consemnarea oricărei contestații privind evaluarea gravității.

---

## A.9 Relația cu funcția ofensivă

A.9.1 Atunci când organizația deține atât o capabilitate de asigurare, cât și o
capabilitate de producere a efectelor operaționale, personalul poate activa în
ambele sau se poate transfera între acestea. Regulile aplicabile sunt prevăzute
în Capitolul 2, punctele 2.10-2.14 din metodologie și sunt obligatorii pentru
fiecare funcție din prezenta anexă.

| Funcție | Cerință |
|---|---|
| Fiecare membru Red Team | Acționează în cadrul unei singure funcții la un moment dat, sub autoritatea funcției respective, și consemnează funcția |
| Red Team Lead | Refuză și raportează orice ordin de misiune care ar utiliza această capabilitate în afara unor Reguli de angajare și a unei Scrisori de autorizare semnate, indiferent de nivelul ierarhic al emitentului |
| Autoritatea de aprobare | Reprezintă singura cale prin care capabilitatea poate fi transferată între cele două funcții |
| Inginerul de infrastructură | Menține separarea infrastructurii de asigurare de infrastructura operațională: fără active, denumiri sau furnizori comuni |
