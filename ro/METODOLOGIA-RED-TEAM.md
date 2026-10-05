---
title: "METODOLOGIA RED TEAM"
subtitle: "Planificarea, autorizarea, desfășurarea și raportarea misiunilor Red Team"
author: "Versiunea 1.0"
date: "2026"
---

# EVIDENȚA MODIFICĂRILOR

Versiunea 1.0

| Modificare | Data | Operată de | Rezumat |
|---|---|---|---|
| Ediția inițială | | | |
| | | | |
| | | | |

# DISTRIBUȚIE

Publicația este deținută de Autoritatea de aprobare, Head of Red Team,
Consilierul juridic, Autoritatea de securitate și întregul personal Red Team. Șeful elementului defensiv deține prezenta publicație, dar nu și
documentele vreunei misiuni.

---

# CAPITOLUL 1 — INTRODUCERE

## Scop

1.1 Prezenta publicație stabilește metodologia pentru planificarea, autorizarea,
desfășurarea și raportarea misiunilor Red Team. Aceasta definește funcțiile
implicate, autoritatea necesară, succesiunea activităților, constrângerile
aplicabile acestora și criteriile de evaluare a eficacității.

1.2 Prezenta este o publicație de reglementare, nu un manual tehnic. Ea descrie
modul în care sunt controlate misiunile. Nu descrie modul de executare a
tehnicilor. Îndrumările tehnice sunt emise separat, în anexele enumerate la
punctul 1.9.

## Sferă de aplicare

1.3 Prezenta publicație se aplică tuturor activităților de asigurare desfășurate
asupra sistemelor informatice cu consimțământul autorității responsabile de
aceste sisteme, indiferent dacă sistemele aparțin organizației emitente sau unei
alte organizații evaluate în temeiul unui mandat.

1.4 Aceasta se aplică în egală măsură misiunilor covert, activităților
colaborative desfășurate în regim open cu elementele defensive și participării
la exerciții.

## Aplicabilitate

1.5 Prezenta publicație este obligatorie pentru întregul personal care
desfășoară sau sprijină activități Red Team, precum și pentru titularii
funcțiilor care autorizează și controlează aceste activități.

1.6 Respectarea prezentei publicații este o condiție a autorizării. Activitatea
desfășurată în afara acestei metodologii este neautorizată, cu consecințele
prevăzute la punctul 5.2.

## Limite

1.7 Prezenta publicație reglementează exclusiv activitatea de asigurare. Ea nu
conferă nicio autoritate în legătură cu operațiile desfășurate împotriva
sistemelor unui adversar. Limita este stabilită în Capitolul 2, punctele 2.11-
2.14.

1.8 Aprobarea prezentei publicații nu autorizează nicio activitate asupra
vreunei ținte. Autoritatea necesară desfășurării activității se stabilește pentru
fiecare misiune în parte, în conformitate cu Capitolul 5.

## Publicații conexe

1.9 Anexele A-G constituie setul comun de controale aplicabile misiunilor. Anexa
H se aplică în funcție de categoria activității, Anexa I se aplică exclusiv
mediilor specializate pe care le enumeră, Anexa J reglementează capabilitatea
permanentă, iar Anexa K consemnează aplicabilitatea și proveniența surselor.
Anexele sunt emise sub autoritatea Head of Red Team și pot fi modificate
fără modificarea prezentei publicații.

| Anexa | Titlu |
|---|---|
| A | Roluri și drepturi de decizie |
| B | Standardul regulilor de angajare |
| C | Ciclul de viață al misiunii |
| D | Planificarea și elaborarea Threat Profile-ului |
| E | Execuție și tradecraft |
| F | Raportare și indicatori |
| G | Aspecte juridice, siguranță și gestionarea datelor |
| H | Categorii de misiuni |
| I | Medii specializate |
| J | Capabilitate: instrumente, laborator și instruire |
| K | Fundamentare și surse |

1.10 Formularele-tip T01-T12 sunt emise împreună cu prezenta publicație pentru
a fi utilizate pe durata unei misiuni. Fiecare formular-tip trebuie completat și
păstrat în dosarul misiunii.

## Terminologie

1.11 Următoarele convenții se aplică în întreaga publicație și în anexele sale.

| Termen | Semnificație |
|---|---|
| trebuie | Cerință obligatorie. Orice abatere necesită aprobarea scrisă a Autorității de aprobare, în conformitate cu punctul 11.4. |
| ar trebui | Cerință fermă. Orice abatere necesită o justificare consemnată în planul misiunii. |
| poate | Acțiune permisă la aprecierea titularului funcției indicate. |

1.12 Termenii de specialitate sunt definiți în Lexicon.

---

# CAPITOLUL 2 — RED TEAM

## Definiție

2.1 O structură Red Team este un element cu suficientă independență organizațională și
funcțională pentru a contesta o organizație din perspectiva unui adversar, în
scopul îmbunătățirii eficacității organizației respective. Nu se prezumă că o
structură Red Team internă este independentă din punct de vedere structural;
controalele prevăzute la punctul 5.9 protejează independența deciziilor, a
dovezilor și a raportării sale.

2.2 Activitatea Red Team constă în emularea TTP-urilor unui adversar real
împotriva sistemelor, personalului și
proceselor active, în baza unei autorizări, pentru a măsura eficacitatea
mijloacelor de apărare care se opun adversarului respectiv.

2.3 Obiectul unei misiuni Red Team nu este obținerea accesului. Obiectul
este stabilirea modului în care acționează organizația care se apără atunci când
accesul este obținut.

## Delimitarea față de activitățile conexe

2.4 Activitatea Red Team este confundată frecvent cu alte forme de
testare a securității. Această distincție determină ceea ce primește clientul și
trebuie stabilită în scris înainte de acceptarea unei misiuni.

| Activitate | Întrebarea la care răspunde | Produs | Gradul de informare a elementului defensiv |
|---|---|---|---|
| Evaluarea vulnerabilităților | Ce deficiențe există la nivelul infrastructurii? | Un inventar al deficiențelor | Informat |
| Test de penetrare | Poate fi compromis un sistem definit? | Deficiențe demonstrate în sistemul respectiv | Informat |
| Exercițiu Purple Team | Este detectat comportamentul adversarului atunci când se produce? | Detectări validate | Participant pe deplin informat |
| Misiune Red Team | Poate un adversar să producă un impact asupra misiunii fără a fi oprit? | Un attack path și o evaluare a răspunsului la acesta | În mod normal, informațiile sunt reținute față de elementul defensiv evaluat; Control Team este informată |
| Adversary emulation | Sunt mijloacele de apărare eficace împotriva unui actor nominalizat care generează amenințări? | Gradul de acoperire față de comportamentul documentat al actorului respectiv | Open sau covert, prin concepție |

2.5 Un test de penetrare măsoară sistemul-țintă. O misiune Red Team
măsoară organizația care se apără. Un client care solicită un inventar al
deficiențelor are nevoie de o evaluare a vulnerabilităților, iar o misiune
Red Team nu va satisface această cerință.

## Limitări

2.6 O misiune Red Team oferă asigurare numai cu privire la target space-ul,
tehnicile și perioada definite în autorizarea sa. Absența unei constatări nu
constituie dovada absenței unei deficiențe.

2.7 O misiune emulează un nivel declarat al capabilității adversarului. Aceasta
nu reprezintă capabilitatea tuturor adversarilor posibili.

2.8 Tehnicile excluse din motive de siguranță, legalitate sau capabilitate sunt
consemnate în Threat Profile. Un adversar care nu este constrâns de aceste
limite poate obține rezultate care nu au fost demonstrate în cadrul misiunii.

## Activități în afara atribuțiilor

2.9 Red Team nu îndeplinește următoarele funcții.

a. Scanarea vulnerabilităților unei infrastructuri pe baza unui inventar.

b. Certificarea conformității cu vreun cadru de control. O misiune produce
dovezi privind comportamentul în condițiile unui atac, nu dovezi de
conformitate.

c. Răspunsul la incidente. Atunci când este identificată o intruziune reală,
activitatea încetează, iar cazul este transferat în conformitate cu punctele
8.15.f și 8.23.

d. Evaluarea individuală a personalului. Constatările descriu sisteme și
procese. Atunci când acțiunea unei persoane este relevantă, aceasta este
descrisă prin funcția deținută și niciodată prin nume.

## Limita față de operațiile cibernetice ofensive

2.10 O organizație poate deține atât o capabilitate de asigurare, cât și o
capabilitate de producere a efectelor operaționale. Cele două utilizează
competențe comparabile, instrumente similare și o terminologie comună. Ele sunt
funcții distincte, exercitate în temeiul unor autorități distincte, și nu
trebuie confundate.

| | Asigurare (prezenta publicație) | Efecte operaționale |
|---|---|---|
| Obiect | Măsurarea și îmbunătățirea propriilor mijloace de apărare | Obținerea unui efect împotriva unui adversar |
| Țintă | Sisteme proprii sau sisteme evaluate în temeiul unui mandat | Sistemele unui adversar |
| Temei | Consimțământul autorității responsabile de sistem | Un cadru juridic distinct |
| Reglementată de | Prezenta publicație | Nu este reglementată de prezenta publicație |

2.11 Nicio activitate desfășurată în temeiul prezentei publicații nu trebuie să
afecteze un sistem din afara target space-ului autorizat, consemnat în Reguli de
angajare și într-o Scrisoare de autorizare semnate. Nu există excepții motivate
de necesitatea operațională și nu este prevăzută posibilitatea unei derogări
verbale.

2.12 Infrastructura, instrumentele și personalul alocate activității de
asigurare nu trebuie utilizate în activități de producere a efectelor
operaționale și nici invers. Utilizarea în comun invalidează modelul de
autorizare al ambelor funcții.

2.13 Capabilitatea dezvoltată pentru asigurare poate fi transferată funcției
operaționale numai printr-un proces aprobat de Autoritatea de aprobare.
Transferul informal este interzis. Atunci când o persoană activează în ambele
funcții, aceasta acționează în cadrul unei singure funcții la un moment dat și
consemnează funcția respectivă.

2.14 Orice dispoziție de utilizare a acestei capabilități în afara spațiului-
țintă autorizat trebuie refuzată și raportată Autorității de aprobare, indiferent
de nivelul ierarhic al emitentului. Refuzul întemeiat pe acest motiv este o
cerință a prezentei publicații și nu atrage consecințe pentru persoana în cauză.

---

# CAPITOLUL 3 — SCOP ȘI OBIECTIVE

## Scop

3.1 Scopul activității Red Team este de a măsura și îmbunătăți capacitatea
unei organizații de a preveni și detecta atacurile adversarilor care o amenință
în mod realist, de a răspunde la acestea și de a restabili funcționarea în urma
lor, precum și de a transforma rezultatele în îmbunătățiri ale apărării,
verificate până la finalizare.

3.2 Două elemente ale acestui scop guvernează desfășurarea misiunilor. În primul
rând, adversarii sunt selectați pe baza unei amenințări realiste, nu pe baza
interesului tehnic. Referința este stabilită de amenințarea cu care organizația
se confruntă efectiv, consemnată în Threat Profile prevăzut în Anexa D. În
al doilea rând, o misiune care se încheie odată cu predarea unui raport a produs
un document, nu o îmbunătățire. Verificarea remedierii face parte din misiune și
este tratată în Capitolul 7, faza 7.

## Obiectivele evaluării

3.3 Fiecare misiune trebuie să contribuie la realizarea a cel puțin unuia dintre
următoarele patru obiective, iar obiectivul selectat trebuie consemnat în
Regulile de angajare.

| | Obiectiv | Întrebarea la care răspunde | Indicator principal |
|---|---|---|---|
| 1 | Protecție | Controalele preventive opresc adversarul emulat? | Ponderea tehnicilor blocate în totalul tehnicilor încercate |
| 2 | Detectare | Atunci când adversarul nu este oprit, sunt generate date de telemetrie utilizabile și o alertă relevantă? | Acțiunile aplicabile care produc telemetrie și alertă; timpul până la alertă |
| 3 | Răspuns | Personalul și procedurile examinează, limitează și escaladează corect în intervalul acceptabil? | Timpul până la examinare și limitare; corectitudinea acțiunii |
| 4 | Restabilire | Poate fi restabilită capabilitatea afectată într-o stare de încredere? | Timpul de restabilire; integritatea restabilirii |

3.4 Programele imature evaluează numai primul obiectiv, care este cel mai ușor de
demonstrat. În etapele inițiale ale unui program, cele mai mari beneficii sunt
obținute din al doilea și al treilea obiectiv.

## Indicatori de eficacitate

3.5 Activitatea Red Team este evaluată în funcție de îmbunătățirea apărării,
nu de reușitele Red Team. Următoarele elemente indică o capabilitate
eficace.

a. Acoperirea validată a detectării se îmbunătățește pentru acțiuni comparabile,
relevante pentru amenințare.

b. Timpul până la alertare, examinare, limitare și restabilire se îmbunătățește
pentru acțiuni comparabile.

c. Constatările sunt închise prin retestări trecute cu succes, prin analiză prin
read-across, după caz, și nu reapar în condiții cu adevărat comparabile.

d. Elementele defensive solicită misiuni.

e. Comanda utilizează rapoartele rezultate în deciziile de alocare a resurselor.

3.6 Următoarele elemente indică o capabilitate ineficace, indiferent de numărul
obiectivelor realizate pe durata misiunilor.

a. Constatările reapar de la o misiune la alta.

b. Rapoartele sunt primite, dar nu sunt urmate de nicio schimbare.

c. Elementele defensive află pentru prima dată despre o misiune din raportul
acesteia.

d. Rezultatele sunt discutate ca o competiție între elemente.

e. Activitatea nu poate fi reconstituită din evidențele proprii Red Team.

## Indicatori interziși

3.7 Următoarele nu trebuie să apară în niciun produs, nicio informare sau niciun
tablou de bord Red Team.

a. Orice indicator exprimat ca rată de succes sau de victorie Red Team.

b. Orice număr al situațiilor în care un element defensiv nu a detectat
activitatea.

c. Timpul necesar obținerii controlului administrativ asupra unui domeniu,
prezentat ca o realizare.

d. Numărul sistemelor compromise sau al deficiențelor identificate, prezentat
fără raportare la impact.

e. Comparația între elemente defensive, schimburi sau persoane.

3.8 Indicatorii de acest tip determină organizația să ascundă problemele. Atunci
când comanda solicită un astfel de indicator, trebuie oferit în locul acestuia
indicatorul echivalent privind performanța apărării.

---

# CAPITOLUL 4 — CATEGORII DE MISIUNI

## Categorii

4.1 Sunt recunoscute patru categorii de misiuni. Toate sunt desfășurate în
temeiul prezentei publicații. Particularitățile fiecărei categorii sunt
prevăzute în Anexa H.

| | Categorie | Client | În mod normal, covert |
|---|---|---|---|
| SL-1 | Evaluarea internă a sistemelor, personalului și proceselor proprii | Comanda proprie | Da |
| SL-2 | Evaluarea unei alte organizații în temeiul unui mandat sau acord | Organizația evaluată și autoritatea care acordă mandatul | Da |
| SL-3 | Element Red Team în cadrul unui exercițiu structurat | Directorul exercițiului | Conform scenariului |
| SL-4 | Activitate Purple Team, desfășurată în regim open cu elementele defensive | Elementul defensiv propriu | Nu |

4.2 Categoriile sunt introduse în ordinea SL-4, SL-1, SL-3, SL-2. Evaluarea unei
alte organizații comportă cel mai ridicat risc juridic și instituțional și
tolerează cel mai puțin erorile de procedură. Aceasta nu trebuie întreprinsă până
când procedurile prevăzute în prezenta publicație nu sunt aplicate în practică,
iar cadrul juridic prevăzut în Anexa G nu este confirmat.

## Selectare

4.3 Categoria activității trebuie stabilită în raport cu cerința clientului
înainte de acceptarea unei misiuni.

| Cerința clientului | Activitate |
|---|---|
| Un inventar al deficiențelor din întreaga infrastructură | Evaluarea vulnerabilităților; nu este o sarcină Red Team |
| Demonstrarea faptului că un sistem definit poate fi compromis | Test de penetrare |
| Confirmarea funcționării detectărilor | Exercițiu Purple Team (SL-4) |
| Stabilirea faptului dacă un atac realist produce impact fără a fi detectat | Misiune Red Team (SL-1 sau SL-2) |
| Instruirea personalului în condiții de presiune operațională | Exercițiu (SL-3) |

## Condiții prealabile

4.4 O misiune desfășurată împotriva unei organizații care nu deține nicio
capabilitate de detectare produce un rezultat previzibil: toate obiectivele sunt
realizate, nicio activitate nu este detectată, iar raportul recomandă
introducerea jurnalizării. Acest rezultat poate fi obținut și fără o misiune.

4.5 Înainte de acceptarea unei misiuni SL-1 sau SL-2, trebuie confirmat faptul că
organizația-țintă deține următoarele elemente.

a. Colectarea centralizată a jurnalelor de la endpoint-urile și serviciile
de identitate.

b. O funcție responsabilă cu analizarea alertelor, cu un program de acoperire
definit.

c. O procedură documentată de răspuns la incidente.

d. O evidență suficientă a responsabilității pentru active, astfel încât o
constatare să poată fi repartizată unui responsabil.

e. Dovezi că o evaluare anterioară a fost remediată.

## Motive de refuz

4.6 Atunci când lipsesc cel puțin trei dintre condițiile prealabile prevăzute la
punctul 4.5, misiunea ar trebui refuzată în scris, iar în locul acesteia ar trebui
recomandat un exercițiu Purple Team sau un exercițiu de simulare la
masă. Recomandarea și temeiul acesteia trebuie consemnate în formularul-tip T01.

4.7 O misiune trebuie refuzată atunci când autoritatea este neclară, sfera de
aplicare nu poate fi delimitată, funcțiile prevăzute în Capitolul 6 nu pot fi
încadrate sau activitatea nu poate fi desfășurată în condiții de siguranță.

## Activități care necesită autorizare expresă

4.8 Următoarele activități necesită autorizare scrisă expresă în Regulile de
angajare și acceptarea riscului, consemnată de Autoritatea de aprobare.
Autorizarea se aplică numai atunci când Anexa B clasifică acțiunea drept
condiționată. O interdicție absolută nu poate face obiectul unei derogări din
partea Autorității de aprobare sau a vreunui semnatar al misiunii. Cerințele
legale și cele ale furnizorilor se aplică în continuare în mod independent.

a. Social engineering asupra personalului, prin orice vector. Constrângeri
suplimentare reglementează temele de pretext permise, persoanele excluse,
gestionarea datelor de autentificare capturate și raportarea rezultatelor sub
formă de rată, nu la nivel individual.

b. Pătrunderea fizică, eludarea controalelor fizice și utilizarea unui pretext
la fața locului. Aceste activități necesită o Scrisoare de autorizare separată
și notificarea prealabilă a structurii de securitate a obiectivului.

c. Testarea controlată a disponibilității sau a epuizării resurselor. Acțiunile
cu adevărat distructive fac obiectul unei interdicții absolute.

d. Orice activitate care afectează o parte terță, un furnizor sau un serviciu
găzduit, dar numai cu permisiunea directă a părții respective și cu respectarea
condițiilor în vigoare ale furnizorului.

## Medii specializate

4.9 Atunci când sfera de aplicare include o rețea clasificată sau izolată fizic,
un sistem de misiune, de comandă sau de armament, o rețea dislocată ori tactică,
tehnologii operaționale ale unei instalații sau un sistem aliat ori de coaliție,
se aplică în mod obligatoriu controalele suplimentare prevăzute în Anexa I.
Verificarea aplicabilității prevăzută în Anexa I este efectuată în faza 0.

---

# CAPITOLUL 5 — AUTORITATE

## Temeiul activității legale

5.1 Activitatea Red Team poate intra sub incidența legislației penale,
civile, de reglementare, contractuale, a muncii și privind protecția datelor.
Este necesară o autorizare scrisă, specifică țintei, emisă de o autoritate
competentă, însă aceasta poate să nu îndeplinească singură toate cerințele
aplicabile. Consilierul juridic trebuie să identifice temeiul complet al fiecărei
misiuni, în conformitate cu Anexa G.

5.2 O autoritate viciată sau incompletă poate expune atât organizația, cât și
participanții individuali. Prin urmare, operatorul are dreptul necondiționat de
a refuza activitatea din motive legate de caracterul viciat al autorității, iar
acest refuz nu atrage nicio consecință negativă.

## Documente de autorizare

5.3 Sunt necesare trei documente. Fiecare îndeplinește o funcție distinctă.
Activitatea nu trebuie să înceapă până când toate cele trei documente nu sunt în
vigoare.

```{.mermaid filename="main-authorisation"}
flowchart TD
    A["1. Prezenta publicație<br/>Instituie capabilitatea<br/>Se semnează o singură dată; se analizează anual<br/>Nu autorizează nicio activitate asupra vreunei ținte"]
    B["2. Reguli de angajare, pentru fiecare misiune<br/>Sfera de aplicare, acțiunile permise și interzise, contactele, criteriile de încetare<br/>Semnate de Autoritatea de aprobare, Trusted Agent și Red Team Lead"]
    C["3. Scrisoare de autorizare, pentru fiecare misiune<br/>Scurtă, clară, de sine stătătoare<br/>Semnată de autoritatea competentă să consimtă la acces<br/>Autoritatea competentă pentru risc contrasemnează dacă este diferită<br/>Deținută de fiecare operator"]
    D(["Activitatea poate începe"])
    A --> B --> C --> D
```

**Figura 1. Lanțul de autorizare**

5.4 Separarea dintre prezenta publicație și documentele misiunii nu trebuie
eliminată. O autoritate permanentă de desfășurare a activității asupra unor ținte
nespecificate nu poate fi deosebită, în cadrul unei examinări ulterioare, de
absența autorității.

5.5 Standardul Regulilor de angajare este prevăzut în Anexa B. Formularul-tip
este T02. Formularul-tip al Scrisorii de autorizare este T10.

## Autoritatea de comandă și autoritatea responsabilă de sistem

5.6 Autoritatea de comandă și autoritatea responsabilă de sistem sunt distincte.

a. Autoritatea de comandă reprezintă competența de a dispune desfășurarea unei
evaluări.

b. Autoritatea responsabilă de sistem reprezintă competența de a consimți la
accesarea unui anumit sistem.

5.7 Un ordin de misiune stabilește prima formă de autoritate. Acesta nu o
stabilește, prin el însuși, pe cea de a doua, cu excepția cazului în care actul
care instituie mandatul o conferă în mod expres. Atunci când cele două forme de
autoritate sunt deținute de organisme diferite, ambele sunt necesare.
Autoritatea responsabilă de sistem consemnează consimțământul necesar pentru
acces; aceasta nu înlocuiește nicio altă cerință legală, contractuală sau a
furnizorului. Situația trebuie stabilită în scris înainte de finalizarea fazei 1
din Capitolul 7.

## Independență

5.8 Independența evaluării și lanțul de comandă se află în tensiune. O structură Red Team subordonată unui ofițer a cărui capabilitate o evaluează își va modera
constatările. Acest lucru se produce prin funcționarea obișnuită a ierarhiei, nu
prin lipsă de onestitate, și nu este evident pentru persoanele implicate.

5.9 Următoarele controale sunt obligatorii și trebuie consemnate în Regulile de
angajare pentru fiecare misiune.

a. Dreptul scris de raportare directă către Autoritatea de aprobare, cu
eludarea oricărui comandant intermediar.

b. Autoritatea de aprobare a unei misiuni trebuie să se afle în afara lanțului
de comandă evaluat.

c. Rapoartele trebuie transmise simultan Autorității de aprobare și comandantului
evaluat. Nu este permisă consultarea prealabilă și nu trebuie oferită
posibilitatea modificării constatărilor înainte de emitere.

d. Evaluările gravității pot fi contestate, iar contestația poate fi
consemnată. Acestea nu trebuie modificate fără consemnarea modificării.

e. Head of Red Team nu trebuie evaluat profesional de un comandant a cărui
capabilitate este evaluată de Red Team.

f. Refuzul unei activități din motive juridice, de siguranță sau etice este
protejat și este escaladat direct către Autoritatea de aprobare.

5.10 Litera 5.9.c reprezintă controlul erodat cel mai frecvent, de regulă printr-o
solicitare de consultare a raportului înainte de emitere. O astfel de solicitare
trebuie refuzată. Cerințele legitime pe care aceasta le reprezintă sunt
îndeplinite prin transmiterea simultană, prin dreptul la un răspuns scris anexat
raportului și prin consemnarea oricărei contestații privind evaluarea gravității.

## Limitele autorizării

5.11 Aprobarea prezentei publicații autorizează menținerea unei capabilități
permanente, pregătirea misiunilor și deținerea datelor misiunilor sub controalele
prevăzute în Anexa G. Aceasta nu autorizează nicio activitate asupra vreunei
ținte.

---

# CAPITOLUL 6 — ORGANIZARE ȘI RESPONSABILITĂȚI

## Funcții

6.1 Activitatea Red Team este guvernată de o funcție permanentă și cinci
funcții aferente misiunii. Responsabilitățile complete sunt prevăzute în Anexa A.

| Funcție | Responsabilități | Nu trebuie să fie |
|---|---|---|
| Head of Red Team (funcție permanentă) | Capabilitatea: personalul, instrumentele, standardele, anexele și raportarea trimestrială către comandă. | Evaluat profesional de un comandant a cărui capabilitate este evaluată de Red Team |
| Autoritatea de aprobare | Acceptarea riscului operațional. Semnarea sau contrasemnarea Scrisorii de autorizare. | Un ofițer a cărui capabilitate este evaluată în cadrul misiunii |
| Trusted Agent (Control Team Lead) | Controlul misiunii și siguranța acesteia. Deține autoritatea unilaterală de a o suspenda sau înceta definitiv. | Membru Red Team sau al elementului defensiv evaluat |
| Red Team Lead | Desfășurarea unei misiuni, siguranța acesteia și exactitatea raportului său. | Trusted Agent |
| Operator | Propriile acțiuni și propriile evidențe. | Nu se aplică |
| Elementul defensiv | Apărarea obișnuită a organizației. | Informat în prealabil, în cadrul unei misiuni covert |

Head of Red Team poate îndeplini funcția de Red Team Lead
pentru o anumită misiune. Cele două funcții sunt distincte: prima este
permanentă și răspunde de capabilitate, iar cea de a doua este desemnată pentru
o singură misiune și răspunde de desfășurarea acesteia.

6.2 Prima îndatorire a Trusted Agent este prevenirea prejudiciilor
ireversibile. Autoritatea respectivă este unilaterală, nu necesită justificare
și este exercitată fără notificare prealabilă. Nicio persoană nu trebuie
criticată pentru o suspendare care se dovedește ulterior inutilă.

## Autoritatea decizională

6.3 Deciziile următoare revin titularilor funcțiilor indicate.

| Decizie | Funcție competentă |
|---|---|
| Dacă misiunea continuă | Autoritatea de aprobare |
| Obiectivele și sfera de aplicare | Autoritatea de aprobare, la recomandarea Trusted Agent |
| Consimțământul pentru acces și semnarea Scrisorii de autorizare | Autoritatea responsabilă de sistem; Autoritatea de aprobare contrasemnează dacă este diferită |
| Extinderea sferei de aplicare sau autorizarea unei acțiuni interzise pe durata misiunii | Autoritatea de aprobare |
| Stabilirea faptului dacă activitatea observată aparține Red Team sau este reală | Trusted Agent |
| Suspendarea sau încetarea definitivă a misiunii | Trusted Agent, în mod unilateral |
| Aprobarea unei acțiuni cu risc ridicat | Trusted Agent |
| Refuzul începerii sau continuării din motive de siguranță sau autoritate | Red Team Lead și orice operator |
| Evaluarea gravității unei constatări | Red Team, sub rezerva consemnării contestației |
| Închiderea unei constatări | Red Team, în urma unei retestări trecute cu succes |
| Acceptarea unui risc în locul remedierii | Autoritatea de aprobare, în scris, cu o dată de reexaminare |

6.4 Pe durata execuției, răspunderea pentru suspendare revine Agentului de
încredere, nu Red Team Lead.

## Funcții incompatibile

6.5 Următoarele cumuluri de funcții sunt interzise.

| Cumul | Motiv |
|---|---|
| Red Team Lead și Trusted Agent | Funcția care generează riscul ar evalua dacă riscul respectiv este acceptabil |
| Orice membru Red Team și Autoritatea de aprobare | Autoautorizare, care nu poate fi deosebită din punct de vedere juridic de absența autorizării |
| Trusted Agent și un membru al elementului defensiv evaluat, în cadrul unei misiuni covert | Cunoașterea prealabilă invalidează rezultatul pentru elementul respectiv |
| Autorul unui raport și unicul său verificator | Lipsește verificarea independentă a afirmațiilor formulate |
| Autoritatea de aprobare din cadrul lanțului de comandă evaluat | Riscul nu poate fi acceptat în mod imparțial în numele unei capabilități pe care misiunea o evaluează |

6.6 Cumulurile prevăzute la punctul 6.5 nu pot face obiectul unei derogări. Dacă
funcțiile nu pot fi separate, activitatea trebuie reconfigurată ca exercițiu
open sau Purple Team ori funcția incompatibilă trebuie
îndeplinită de o persoană externă calificată. Activitatea nu trebuie să continue
ca misiune covert Red Team. Încadrarea limitată nu constituie, prin ea
însăși, un control compensatoriu.

## Încadrare

6.7 Încadrarea este dimensionată în funcție de activitate. Autoritatea de
aprobare, Autoritatea responsabilă de sistem, Trusted Agent și orice
Control Team care acordă sprijin nu fac parte din încadrarea Red Team.

| Personal de execuție | Activitate permisă | Condiții |
|---|---|---|
| Două persoane | Activitate SL-4 Purple Team, validare în laborator și activități open, strict delimitate, cu postură assumed breach | Trusted Agent și Autoritate de aprobare distincte; prezența ambelor persoane de execuție; verificare independentă obținută din afara celulei de execuție |
| Trei-cinci persoane | Activități SL-1 covert și misiuni curente threat-led | Sunt desemnați un Red Team Lead și cel puțin doi operatori; sunt disponibili un locțiitor și un verificator independent; niciun membru nu îndeplinește atribuții defensive sau de răspuns la incidente pentru aceeași misiune |
| Șase-nouă persoane | Program sustenabil, cu specializare și activități paralele | Funcțiile pot fi separate și poate fi menținut programul prevăzut la punctul 10.4 |

6.8 Două condiții guvernează sustenabilitatea la fiecare nivel.

a. Nicio capabilitate critică nu trebuie să depindă permanent de o singură
persoană. La nivelurile cu două și trei persoane, rezerva poate fi asigurată de
o persoană calificată din afara celulei de execuție, supusă acelorași controale
privind autorizarea de securitate, confidențialitatea și conflictele.

b. Douăzeci la sută din timpul aferent încadrării ar trebui rezervat dezvoltării
capabilității, validării în laborator, sprijinului pentru remediere și
retestării. O echipă utilizată continuu pentru misiuni noi reproduce aceleași
constatări prin aceleași tehnici și lasă neverificate constatările anterioare.

---

# CAPITOLUL 7 — DESFĂȘURAREA UNEI MISIUNI

## Faze

7.1 Fiecare misiune parcurge opt faze. În cazul misiunilor de mică amploare,
fazele sunt comprimate. Nicio fază nu este omisă. Detaliile, inclusiv criteriile
de intrare și de ieșire, sunt prevăzute în Anexa C.

```{.mermaid filename="main-lifecycle"}
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

**Figura 2. Ciclul de viață al misiunii**

| Faza | Scop | Se încheie atunci când |
|---|---|---|
| 0 Solicitare și calificare | Se stabilește dacă misiunea ar trebui să continue și dacă activitatea Red Team este instrumentul adecvat | Clientul precizează decizia pe care o va fundamenta rezultatul |
| 1 Inițiere și autorizare | Se stabilesc autoritatea verificată, analiza juridică, limitele și controalele de siguranță | Regulile de angajare și Scrisoarea de autorizare sunt semnate, iar contactele sunt verificate telefonic |
| 2 Threat intelligence | Se stabilește adversarul care este emulat și temeiul alegerii sale | Un adversar nominalizat este justificat prin raportări actuale |
| 3 Planificare și pregătire | Se atinge nivelul de pregătire necesar înainte de accesarea mediului | Toate instrumentele sunt testate în laborator, iar activitatea poate fi suspendată în cel mult cincisprezece minute |
| 4 Execuție | Se desfășoară scenariul în limitele Regulilor de angajare | Obiectivele sunt realizate sau perioada expiră |
| 5 Încheierea execuției și cleanup | Mediul și infrastructura misiunii sunt readuse la starea convenită | Fiecare modificare este anulată, acceptată sau transferată și verificată în mod independent |
| 6 Raportare și analiză ulterioară | Activitatea este transformată în decizii | Fiecare afirmație este susținută de dovezi și a semnat un verificator care nu a participat la execuție |
| 7 Remediere și retestare | Se stabilește dacă organizația s-a îmbunătățit | Constatările critice și cele cu gravitate ridicată sunt retestate și verificate |

## Puncte de decizie

7.2 Fiecare fază se încheie la un punct de decizie. Acesta reprezintă o decizie
luată de titularul unei funcții nominalizate, prin care misiunea fie trece în
faza următoare, fie este returnată.

7.3 Punctul de decizie G1 este absolut. Un alt punct de decizie poate fi trecut
condiționat numai dacă responsabilul deciziei consemnează criteriul neîndeplinit,
riscul, controlul compensatoriu, responsabilul și termenul. O trecere
condiționată nu poate remedia o autoritate viciată, o permisiune nevalabilă a
furnizorului sau a unei părți terțe, o interdicție absolută, un criteriu de
încetare nesoluționat sau un plan nesigur. Activitatea desfășurată înainte de
punctul de decizie G1 este neautorizată.

7.4 Faza 7 diferențiază o capabilitate de asigurare de o simplă cheltuială. O
constatare este închisă printr-o retestare trecută cu succes, nu prin închiderea
unei sarcini.

## Durate

7.5 Următoarele sunt valori de planificare pentru o misiune internă cu sferă de
aplicare delimitată.

| Faze | Durata scursă |
|---|---|
| 0-3, de la solicitare la starea de pregătire | Trei-cinci săptămâni, determinate în principal de obținerea semnăturilor |
| 4, execuție | Două-patru săptămâni |
| 5-6, de la cleanup la raport | O săptămână și jumătate-două săptămâni |
| 7, remediere și retestare | Una-trei luni, periodic |
| De la solicitare la predarea raportului | Șase-nouă săptămâni |

7.6 Execuția reprezintă mai puțin de jumătate dintr-o misiune. O cerință
exprimată ca misiune de două săptămâni reprezintă, în realitate, o misiune de
șase săptămâni care cuprinde două săptămâni de execuție.

7.7 Un test formal TIBER, DORA sau CBEST respectă durata, produsele și procesul de
autorizare prevăzute de versiunea în vigoare a cadrului respectiv, care pot fi
semnificativ mai ample decât aceste valori de planificare internă. Duratele
cadrelor nu sunt preluate în activitatea internă obișnuită și nu trebuie reduse
atunci când cadrul respectiv este aplicabil.

## Etapele execuției

7.8 Execuția se desfășoară în trei etape. Etapele descriu succesiunea
operațională și sunt distincte de tacticile prevăzute în Anexa D, care descriu
comportamente individuale.

| Etapa | Obiect |
|---|---|
| Get In | Stabilirea unui punct de initial access |
| Stay In | Asigurarea fiabilității și rezilienței accesului |
| Act | Realizarea obiectivului și demonstrarea impactului |

## Deconflictare

7.9 Deconflictarea stabilește dacă activitatea observată provine de la Red Team sau de la un adversar real. Aceasta protejează împotriva a două deficiențe:
consumarea efortului defensiv pentru activitatea unui exercițiu și respingerea
unei intruziuni reale ca activitate de exercițiu. Cea de a doua este mai gravă.

```{.mermaid filename="main-deconfliction"}
sequenceDiagram
    participant D as Elementul defensiv<br/>sau Trusted Agent
    participant R as Șeful misiunii<br/>Red Team
    participant A as Autoritatea<br/>de aprobare
    D->>R: Cerere de deconflictare<br/>Ora UTC, sursa și ținta<br/>Comportamentul observat
    R->>R: Suspendă activitatea afectată<br/>Verifică evidențele operatorilor<br/>și ale infrastructurii
    R-->>D: Decizie în cel mult<br/>treizeci de minute
    alt Atribuibilă Red Team
        Note over D,R: Încetarea alertei<br/>Calitatea răspunsului se consemnează drept constatare
    else Nu poate fi atribuită
        R->>A: Suspiciune de intruziune reală
        Note over R,A: Suspendarea misiunii<br/>Păstrarea dovezilor<br/>Transferarea evidențelor activității
    end
```

**Figura 3. Procedura de deconflictare**

7.10 Nu este permisă stabilirea unei atribuiri probabile. Atunci când
înregistrările nu stabilesc atribuirea activității Red Team, activitatea
trebuie tratată ca intruziune reală până la stabilirea contrariului.

7.11 Procedura completă, inclusiv cuvântul codificat de autentificare și
intervalul maxim permis fără contact, este prevăzută în Anexa E.

---

# CAPITOLUL 8 — INSTRUCȚIUNI PERMANENTE

8.1 Cerințele din prezentul capitol sunt obligatorii și se aplică fiecărei
misiuni. Detaliile justificative sunt prevăzute în Anexele B, E și G.

## Înainte de începere

8.2 Activitatea nu trebuie să înceapă înainte de semnarea Regulilor de angajare.
Autoritatea verbală nu este suficientă.

8.3 Activitatea nu trebuie să înceapă înainte ca Scrisoarea de autorizare să fie
semnată de fiecare Autoritate responsabilă de sistem care este competentă să
consimtă la accesarea sistemelor și facilităților incluse în sfera de aplicare.
Autoritatea de aprobare contrasemnează atunci când autoritatea competentă pentru
riscul operațional este deținută separat. Autoritatea și orice conflict privind
rezultatul sunt verificate și consemnate; denumirea funcției nu constituie,
singură, dovada autorității.

8.4 Fiecare contact din Regulile de angajare trebuie verificat telefonic în
intervalul de douăzeci și patru de ore anterior începerii activității.

8.5 Fiecare operator trebuie să fi citit Regulile de angajare și să fi confirmat
acest fapt în scris.

8.6 Niciun instrument și nicio tehnică nu trebuie introduse într-un mediu-țintă
înainte de a fi testate într-un mediu de laborator reprezentativ. Atunci când
activitatea planificată poate modifica starea sistemului, responsabilul
sistemului trebuie, de asemenea, să confirme că este disponibilă metoda
relevantă de creare a copiei de siguranță sau de restabilire și că aceasta are
un operator cu răspundere decizională.

8.7 Red Team trebuie să poată suspenda întreaga activitate în cel mult
cincisprezece minute de la primirea dispoziției.

## Pe durata execuției

8.8 Apartenența la target space-ul autorizat trebuie verificată înaintea fiecărei
acțiuni. Atunci când apartenența este ambiguă, ținta este în afara sferei de
aplicare.

8.9 Înregistrările trebuie efectuate în momentul acțiunii, nu reconstituite
ulterior. Acțiunile nereușite trebuie consemnate; acestea constituie dovada că un
control a funcționat.

8.10 Un al doilea operator trebuie consultat înaintea exploatării, înaintea
primei utilizări a oricărui instrument în mediul respectiv și înaintea oricărei
acțiuni ireversibile.

8.11 Impactul trebuie demonstrat, nu exploatat. Posibilitatea de a accesa un
sistem este demonstrată fără extragerea conținutului acestuia.

8.12 Datele cu caracter personal, medicale, financiare și clasificate nu trebuie
exfiltrate. Datele din mediul de producție nu trebuie modificate sau șterse, cu
excepția unui artefact marcat și reversibil, consemnat în registrul de eliminare
a artefactelor.

8.13 Traficul de Command and Control trebuie criptat. Fiecare modificare adusă
unui sistem trebuie consemnată la momentul efectuării.

8.14 Erorile trebuie raportate imediat. Ascunderea unei erori constituie abatere
disciplinară; eroarea în sine nu constituie o astfel de abatere.

## Încetarea activității

8.15 Activitatea trebuie să înceteze imediat, iar Trusted Agent trebuie
informat telefonic în oricare dintre situațiile următoare.

a. Se suspectează degradarea sau pierderea unui serviciu, indiferent dacă este
sau nu cauzată de Red Team.

b. Integritatea sau disponibilitatea datelor din mediul de producție este pusă
în pericol.

c. Expunerea datelor sensibile depășește necesarul pentru demonstrarea
rezultatului.

d. Este posibil ca activitatea să fi ajuns la un sistem din afara spațiului-
țintă autorizat.

e. Este posibil să fie afectată o parte terță.

f. Sunt identificate dovezi ale unei intruziuni reale, fără legătură cu
misiunea.

g. Un element defensiv a inițiat un răspuns la un incident real.

h. Se implică organele de aplicare a legii, o autoritate de reglementare sau un
organism extern.

i. Apare o problemă de natură juridică, de protecție a vieții private, de
siguranță sau privind personalul.

j. Un operator nu este sigur dacă o acțiune este permisă.

k. Contactul cu Trusted Agent este pierdut pentru o durată mai mare decât
intervalul stabilit în Regulile de angajare.

l. Un operator a comis o eroare ale cărei consecințe nu sunt înțelese pe deplin.

8.16 Orice operator, Red Team Lead, Trusted Agent sau
Autoritatea de aprobare poate dispune încetarea activității. Nu este necesară
nicio justificare și nu trebuie solicitată vreuna. Reluarea necesită autorizarea
scrisă a Trusted Agent.

## La finalizare

8.17 Fiecare modificare trebuie eliminată, iar eliminarea sa trebuie verificată
de o a doua persoană. Orice element care nu poate fi eliminat trebuie transferat
în scris unui responsabil nominalizat și rămâne deschis.

8.18 Întreaga infrastructură a misiunii trebuie dezafectată, după păstrarea
prealabilă a evidențelor. Comanda și controlul trebuie dezactivate; trebuie
verificate mecanismele de dezactivare aferente sferei de aplicare și datei;
conturile de test, cheile, tokenurile și canalele securizate trebuie eliminate,
revocate sau restabilite; datele de autentificare capturate trebuie distruse sau
resetate; iar fiecare acțiune trebuie consemnată. Responsabilii copiilor de
siguranță și ai instantaneelor de sistem trebuie informați cu privire la modul de
prevenire a restabilirii ulterioare a programelor malware de test, a
instrumentelor sau a mecanismelor de persistence.

8.19 O evidență cu marcaje temporale a întregii activități Red Team,
inclusiv adresele-sursă, trebuie furnizată Trusted Agent pentru
corelarea cu telemetria defensivă.

## Conduita personalului

8.20 Atunci când realismul intră în conflict cu siguranța personalului, a
sistemelor, a datelor sau cu starea de pregătire operațională, realismul cedează.

8.21 Raportarea trebuie să fie veridică și trebuie să includă erorile comise de
Red Team și controalele care au contracarat-o. Un raport care omite
mijloacele de apărare care au reușit este inexact.

8.22 Nicio persoană nu trebuie nominalizată ca fiind responsabilă de un eșec și
niciun material al misiunii nu trebuie furnizat în scopuri disciplinare.

8.23 O intruziune reală trebuie declarată imediat, indiferent de efectul asupra
obiectivelor misiunii.

8.24 Activitatea ilegală, nesigură sau lipsită de etică trebuie refuzată și
raportată. Refuzul întemeiat pe aceste motive este protejat.

8.25 Capabilitatea și cunoștințele obținute pe durata unei misiuni nu trebuie
utilizate în afara unei misiuni autorizate.

---

# CAPITOLUL 9 — EVALUAREA EFICACITĂȚII

## Principiu

9.1 Red Team este un instrument de măsurare. Eficacitatea sa este evaluată
prin îmbunătățirea apărării, nu prin propria performanță în cadrul misiunilor.
Definițiile și metodele de calcul sunt prevăzute în Anexa F.

## Indicatori

9.2 Pentru fiecare misiune sunt consemnate următoarele elemente.

| Categorie | Indicatori |
|---|---|
| Timpi | Timpul până la generarea telemetriei, alertare, examinare, limitare și restabilire; durata prezenței evaluate |
| Acoperire | Acțiuni planificate care au fost încercate, înlocuite, blocate sau executate; acțiuni aplicabile care au produs telemetrie, alertă, investigare, limitare și restabilire |
| Rezultat | Obiective realizate și împiedicate; controale care s-au activat; constatări în funcție de gravitate |
| Remediere | Constatări închise prin retestare; timpul până la închidere; rata de reapariție |
| Social engineering | Rata de raportare de către personal și timpul până la prima raportare. Rezultatele individuale nu sunt consemnate. |

9.2.1 Fiecare indicator raportat trebuie să precizeze scopul său, numărătorul și
numitorul exacte ori evenimentele de început și de sfârșit, sursa datelor,
responsabilul, excluderile, dimensiunea eșantionului, datele lipsă și limitările
semnificative. O acțiune care nu a fost detectată, investigată sau limitată este
consemnată ca neobservată în intervalul de testare; nu i se atribuie o durată
egală cu zero. Mediile sunt utilizate numai atunci când eșantionul permite acest
lucru. Pentru eșantioane mici sunt preferate valorile la nivel de eveniment,
medianele, intervalele și numărul de cazuri.

9.3 Lacunele de acoperire trebuie raportate în trei categorii. Acestea au
responsabili și modalități de remediere diferite; o singură valoare privind
acoperirea detectării nu permite comenzii să acționeze.

| Categorie | Responsabil principal | Decizie necesară |
|---|---|---|
| Nu există telemetrie utilizabilă | Structurile de inginerie a platformelor, identității sau endpoint-urilor | Instituirea sau remedierea sursei și validarea calității datelor sale |
| Telemetria este prezentă, dar detectarea nu este eficace | Structura de inginerie a detectării | Proiectarea și validarea detectării prin reluarea activității |
| Alerta a fost generată, dar nu a fost examinată în intervalul necesar | Conducerea operațiilor defensive | Corectarea priorității, direcționării, capacității sau procedurii și repetarea exercițiului |

9.4 Reapariția este un indicator principal al programului atunci când misiunile
sunt comparabile din punct de vedere material. Atunci când o constatare reapare,
este posibil ca remedierea să fi fost ineficace, incompletă ca sferă sau
exprimată în termeni care nu permiteau niciunui responsabil să acționeze. Cauza
trebuie stabilită, nu dedusă exclusiv din numărul de cazuri.

## Raportarea către comandă

9.5 Un raport de o singură pagină trebuie transmis trimestrial Autorității de
aprobare. Acesta trebuie să cuprindă misiunile desfășurate, rezultatele
comparabile privind acoperirea, categoriile de lacune prevăzute la punctul 9.3 și
responsabilii acestora, constatările formulate, închise, restante și acceptate,
reaparițiile validate, îmbunătățirile defensive care pot fi atribuite
activității Red Team, limitările semnificative ale datelor și deciziile
necesare. Atunci când cazurile nu sunt comparabile, acestea sunt prezentate
separat, nu ca tendință.

## Maturitate

9.6 Maturitatea capabilității este evaluată anual în patru domenii, respectiv
program, personal, proces și tehnologie, pe trei niveluri. Modelul este prevăzut
în Anexa F.

9.7 Dezvoltarea unor instrumente proprii nu trebuie întreprinsă înainte ca
domeniul procesului să fi atins nivelul al doilea. Capabilitatea privind
instrumentele într-o organizație care nu are instituit un ciclu de retestare nu
îmbunătățește rezultatele defensive.

---

# CAPITOLUL 10 — RESURSE ȘI ANGAJAMENTE ALE COMENZII

## Resurse

10.1 Capabilitatea necesită următoarele elemente.

a. O încadrare conformă cu punctul 6.7. Două persoane de execuție sunt
suficiente pentru a începe în siguranță activități open și colaborative;
trei persoane reprezintă efectivul minim al celulei de execuție pentru o misiune
reală covert; șase-nouă persoane reprezintă obiectivul pentru un program
sustenabil cu misiuni multiple. Funcțiile de control și autorizare rămân în
afara acestor efective.

b. Un mediu de laborator reprezentativ pentru infrastructura de producție.
Acesta este principala cerință materială și condiția prealabilă pentru
instrucțiunea permanentă de la punctul 8.6.

c. Sisteme controlate ale operatorilor și infrastructura misiunii.

10.2 Organizația evaluată trebuie să asigure aproximativ două zile din timpul
Trusted Agent pentru fiecare săptămână de execuție, o zi din timpul
fiecărui responsabil de sistem pe durata definirii sferei de aplicare și patru
ore din timpul elementului defensiv pentru analiza ulterioară.

10.3 Costul principal al capabilității este remedierea. Constatările formulate
necesită alocarea de resurse. O capabilitate care produce constatări pentru care
nu sunt alocate resurse nu produce nicio îmbunătățire.

## Program anual

10.4 Programul anual trebuie ales în funcție de nivelul pe care echipa îl poate
susține în paralel cu finalizarea eliminării artefactelor, raportării,
sprijinului pentru remediere și retestării. Tabelul reprezintă o limită maximă de
planificare, nu o normă.

| Nivel | Program sustenabil |
|---|---|
| Echipă inițială de două persoane | Un exercițiu restrâns Purple Team în fiecare trimestru; o evaluare open cu postură assumed breach în primul an; retestare înainte de acceptarea unei noi sfere de aplicare |
| Trei-cinci persoane | Patru-șase exerciții Purple Team, două misiuni cu sferă delimitată și o misiune threat-led pe an; analiză trimestrială a portofoliului |
| Șase-nouă persoane | Activitate lunară Purple Team; o misiune cu sferă delimitată pe trimestru; două misiuni threat-led și un exercițiu extern pe an; revalidare semestrială |

Fiecare nivel efectuează evaluarea anuală a maturității și analiza prezentei
publicații. Ritmul trebuie redus atunci când remedierile deschise, oboseala,
concediile, instruirea sau pierderea unei funcții de rezervă fac ca următoarea
misiune să fie nesigură ori imposibil de verificat.

## Angajamentele comenzii

10.5 Desfășurarea eficace a activității Red Team necesită următoarele din
partea comenzii.

a. Desemnarea unei Autorități de aprobare care deține autoritate reală și este
situată în afara lanțului de comandă evaluat.

b. Acceptarea faptului că unele constatări vor fi incomode și că misiunile sunt
concepute ca activități de învățare, nu de examinare.

c. Alocarea resurselor pentru remediere.

d. Menținerea controalelor de independență prevăzute la punctul 5.9, în special
la litera 5.9.c.

e. Asumarea faptului că materialele misiunii nu trebuie utilizate în scopuri
disciplinare. Atunci când personalul consideră că o misiune îi poate afecta
poziția, organizația încetează să furnizeze informații exacte, iar capabilitatea
își pierde valoarea.

## Riscuri acceptate

10.6 Următoarele riscuri sunt acceptate de comandă la aprobarea unei misiuni și
sunt controlate după cum se indică.

| Risc | Control |
|---|---|
| Perturbarea unui serviciu | Autoritatea Trusted Agent de a suspenda; criterii de încetare; lista de excluderi; evaluarea riscurilor |
| Un incident de protecție a datelor cauzat de evaluare | Reducerea la minimum a datelor; utilizarea marcajelor în locul datelor reale; specificarea dovezilor interzise |
| Supunerea constatărilor unui control extern | Distribuție convenită; clasificare; acceptarea formală a riscului |
| Afectarea reputației personalului defensiv | Interdicția nominalizării persoanelor; raportarea controalelor care au funcționat |
| Cheltuieli care nu produc nicio îmbunătățire | Urmărirea remedierii; retestare; reluare în regim Purple Team; raportare trimestrială |

10.7 Fiecare dintre aceste riscuri este controlat prin procedură, nu printr-o
măsură tehnică.

---

# CAPITOLUL 11 — GUVERNANȚĂ

## Structura publicației

11.1 Publicația este emisă pe două niveluri.

| Nivel | Modificare | Autoritate |
|---|---|---|
| Prezenta publicație | Modificarea unei cerințe exprimate prin „trebuie” necesită o nouă semnare | Autoritatea de aprobare |
| Anexe și formulare-tip | Se modifică în funcție de evoluția practicii și tehnologiei | Head of Red Team, cu informarea Autorității de aprobare |

11.2 Conținutul supus schimbării, inclusiv instrumentele, tehnicile,
infrastructura și tabelele cu tehnici, este inclus în anexe, astfel încât
modificarea sa să nu necesite o nouă semnare a prezentei publicații.

## Analiză

11.3 Prezenta publicație este analizată anual și, suplimentar, în urma oricăreia
dintre situațiile următoare.

a. O misiune produce o lecție identificată marcată ca necesitând o modificare.

b. Un incident în care activitatea Red Team a produs un impact neintenționat
sau a ridicat o problemă juridică, de securitate ori de clasificare.

c. O modificare semnificativă a mediului juridic, a mandatului sau a regimului
de clasificare.

## Excepții

11.4 O excepție de la o cerință exprimată prin „trebuie” necesită aprobarea
scrisă, specifică și limitată în timp a Autorității de aprobare, cu nominalizarea
controlului compensatoriu în vigoare. Nicio excepție nu poate crea
autoautorizare, elimina consimțământul responsabilului sistemului, extinde o
sferă de aplicare nesemnată, cumula funcțiile de Red Team Lead și
Trusted Agent, elimina verificarea independentă a raportului, slăbi un
criteriu de încetare, anula un refuz juridic, de siguranță sau etic ori permite o
activitate interzisă de legislația, contractul sau politica furnizorului
aplicabile. De asemenea, nicio excepție nu poate permite un cumul de funcții
desemnat la punctul 6.5 ca nefiind supus derogării sau o activitate care face
obiectul unei interdicții absolute în Anexa B.

11.5 Excepțiile sunt consemnate în Regulile de angajare ale misiunii în cauză și
sunt examinate în cadrul analizei anuale. Excepțiile permanente sau pe durată
nedeterminată nu sunt permise.

## Escaladare

11.6 Divergențele sunt soluționate după cum urmează.

| Aspect | Soluționare |
|---|---|
| Între Red Team Lead și Trusted Agent | Autoritatea de aprobare |
| Gravitatea unei constatări | Se consemnează drept contestație, cu prezentarea ambelor poziții în raport |
| Remedierea sau acceptarea riscului | Autoritatea de aprobare, în scris, cu o dată de reexaminare |
| Refuzul din motive juridice, de siguranță sau etice | Nu poate fi anulat. Este escaladat Autorității de aprobare și consemnat. |

## Asigurare independentă

11.7 După prima misiune reală covert și cel puțin anual atât timp cât
serviciul respectiv este activ, o persoană calificată din afara celulei de
execuție trebuie să verifice prin eșantionare o misiune finalizată și controalele
programului. Pentru o echipă mică, această persoană poate proveni din auditul
intern, structura juridică, de risc sau de asigurare a securității ori poate fi
un specialist extern, cu condiția consemnării competenței, autorizării de
securitate și independenței sale.

11.8 Analiza nu repetă activitatea ofensivă. Aceasta verifică cel puțin:
autoritatea și sfera de aplicare pozitivă; separarea funcțiilor; permisiunile
furnizorilor și ale părților terțe; dovezile aferente punctelor de decizie;
trasabilitatea de la amenințare la acțiune; evidențele operatorilor și ale
dovezilor; încetarea și deconflictarea; cleanup și restabilirea;
afirmațiile din raport; calitatea indicatorilor; atribuirea responsabilității
pentru constatări; acceptarea riscurilor; retestarea; excepțiile; accesul la
depozitul de date și distrugerea datelor. Rezultatele și acțiunile corective sunt
raportate Autorității de aprobare și urmărite până la închiderea verificată.

---

# LEXICON

## Abrevieri

| | |
|---|---|
| ATT&CK | Adversarial Tactics, Techniques and Common Knowledge (MITRE) |
| C2 | Command and Control |
| CBEST | Cadrul Bank of England pentru testarea securității bazată pe threat intelligence |
| CTI | Cyber Threat Intelligence |
| DORA | Regulamentul privind reziliența operațională digitală, Regulamentul (UE) 2022/2554 |
| GDPR | Regulamentul general privind protecția datelor, Regulamentul (UE) 2016/679 |
| LoA | Scrisoare de autorizare |
| NCSC | Centrul Național de Securitate Cibernetică al Regatului Unit |
| NIST | Institutul Național de Standarde și Tehnologie al Statelor Unite |
| ROE | Reguli de angajare |
| SITREP | Raport de situație |
| TIBER-EU | Cadrul Uniunii Europene pentru activitatea etică Red Team, bazată pe threat intelligence |
| TLPT | Threat-Led Penetration Testing |
| TTP | Tactics, Techniques and Procedures |
| UTC | Timp universal coordonat |

## Termeni și definiții

**evidența activității.** Descrierea consolidată și ordonată cronologic a
activității Red Team, realizată prin corelarea evidențelor operatorilor,
infrastructurii, sesiunilor și instrumentelor. Aceasta include sursa, ținta și
identificatorii stabili ai acțiunilor și este transferată la încheierea
execuției.

**adversary emulation.** Reproducerea tehnicilor documentate ale unui actor
nominalizat care generează amenințări, ordonate în concordanță cu comportamentul
observat al actorului respectiv.

**Autoritatea de aprobare.** Funcția care acceptă riscul unei misiuni și semnează
Scrisoarea de autorizare.

**obiectivul evaluării.** Unul sau mai multe dintre cele patru rezultate
defensive prevăzute la punctul 3.3: Protecție, Detectare, Răspuns și Restabilire.
Acesta precizează ceea ce urmărește să evalueze misiunea și este distinct de
obiectivul misiunii, care precizează starea finală ce trebuie atinsă.

**assumed breach.** O postură inițială în care initial access este
acordat prin acord, astfel încât misiunea să evalueze evenimentele ulterioare
compromiterii, nu obținerea compromiterii.

**attack path.** Succesiunea ordonată sau ramificată de acțiuni autorizate prin
care un scenariu poate avansa de la postura inițială la un obiectiv.

**target space autorizat.** Sistemele, rețelele, identitățile, grupurile de
personal și locurile asupra cărora este permisă activitatea, astfel cum sunt
definite în Regulile de angajare. Orice element care nu este cuprins în acest
spațiu și orice element al cărui statut este incert se află în afara sferei de
aplicare.

**nivel de capabilitate.** Nivelul capabilității adversarului emulat în
conformitate cu Anexa B, punctul B.7. Acesta descrie adversarul reprezentat, nu
maturitatea sau competența Red Team.

**Cleanup and Rollback Register.** Evidența controlată a fiecărei
modificări aduse sistemelor, a fiecărui artefact, credential, canal
și element de infrastructură a misiunii care necesită eliminare, transfer sau o
soluționare verificată la încheierea execuției. Se utilizează formularul-tip T12.

**Control Team.** Grupul restrâns din cadrul organizației evaluate, condus
de Trusted Agent, care cunoaște și controlează o misiune covert. În
publicații anterioare, acesta poate fi denumit White Team.

**misiune covert.** O misiune desfășurată fără informarea prealabilă a
elementului defensiv evaluat. Trusted Agent și orice Control Team
care acordă sprijin rămân informați.

**deconflictare.** Procesul prin care se stabilește dacă activitatea observată
provine de la Red Team sau de la un adversar real.

**element defensiv.** Personalul și funcțiile responsabile cu detectarea
intruziunilor și răspunsul la acestea. Este denumit în alte publicații Blue Team.

**misiune.** O singură evaluare autorizată, desfășurată în temeiul unui set de
Reguli de angajare și al unei Scrisori de autorizare, prin fazele prevăzute în
Capitolul 7.

**dovezi.** Un artefact sau o înregistrare păstrată cu o proveniență și o
integritate suficiente pentru a susține o afirmație a misiunii. Acestea nu sunt
prezentate drept probe criminalistice și nici ca având un lanț formal de
custodie, cu excepția cazului în care au fost aplicate controalele necesare.

**constatare.** O deficiență sau o lacună de control susținută de dovezi,
prezentată împreună cu principala sa cauză, riscul, sfera afectată, controlul
recomandat, responsabilul și metoda de retestare. Acceptarea riscului nu închide
o constatare; închiderea necesită o retestare trecută cu succes.

**marcaj.** Un element fără valoare intrinsecă, plasat într-un loc-țintă de
Trusted Agent și recuperat pentru a demonstra accesul fără accesarea
datelor reale.

**punct de decizie.** Decizia nominalizată de la sfârșitul unei faze a ciclului
de viață, care permite avansarea misiunii, o returnează pentru corectare sau o
oprește, utilizând criteriile prevăzute în Anexa C.

**Get In, Stay In, Act.** Cele trei etape ale execuției
definite la punctul 7.8.

**golden thread.** Trasabilitatea stabilă de la serviciul expus riscului
și dovezile justificative privind amenințarea, prin scenariu, obiectiv, acțiune,
observație defensivă, constatare și remediere, până la retestare.

**Head of Red Team.** Funcția permanentă care răspunde de capabilitate,
personalul acesteia, standardele și anexele sale.

**Consilierul juridic.** Un consilier calificat, responsabil cu stabilirea
instrumentelor juridice, a constrângerilor și a analizelor aplicabile
organizației și misiunii. Avizul nu conferă, prin el însuși, autoritatea de a
accesa o țintă.

**Scrisoarea de autorizare.** Instrumentul succint care consemnează
consimțământul specific țintei și autoritatea în temeiul căreia se desfășoară
activitatea, deținut de fiecare operator pe durata unei misiuni. Aceasta nu
înlocuiește alte cerințe legale, contractuale sau ale furnizorului.

**obiectiv.** O stare finală definită și verificabilă, care demonstrează impactul
asupra misiunii.

**autoritatea competentă pentru riscul operațional.** Persoana sau organismul
competent să accepte posibilele consecințe operaționale și riscul rezidual al
unei misiuni. În mod normal, aceasta este Autoritatea de aprobare și poate fi
distinctă de Autoritatea responsabilă de sistem.

**operator.** Un membru Red Team desemnat să desfășoare activitatea
autorizată și să mențină evidența contemporană a propriilor acțiuni și decizii.

**jurnalul operatorului.** Descrierea contemporană a acțiunii unui operator, a
motivației, rezultatului așteptat și a celui efectiv, a sursei și țintei, a
identificatorilor dovezilor și a oricărei modificări efectuate. Se utilizează
formularul-tip T05.

**exercițiu Purple Team.** Activitate colaborativă desfășurată în
regim open cu elementele defensive, tehnică cu tehnică, pentru instituirea și
validarea detectărilor.

**read-across.** Evaluarea structurată a măsurii în care o
constatare sau o lecție se aplică și serviciilor, sistemelor ori implementărilor
de control comparabile din afara sferei testate.

**Red Team.** Un element cu suficientă independență organizațională și
funcțională pentru a contesta o organizație din perspectiva unui adversar, în
scopul îmbunătățirii eficacității organizației respective.

**Red Team Lead.** Funcția responsabilă cu desfășurarea unei
singure misiuni.

**retestare.** Repetarea autorizată a procedurii relevante sau o verificare
echivalentă, pentru a stabili dacă remedierea a corectat constatarea fără efecte
negative inacceptabile.

**ofițer verificator.** O persoană calificată care nu a executat misiunea și nu
a redactat raportul acesteia și care verifică în mod independent raportul înainte
de emitere.

**Reguli de angajare.** Documentul care reglementează desfășurarea unei singure
misiuni.

**scenariu.** Un proiect fundamentat pe amenințări, care combină premisa privind
adversarul, postura inițială, obiectivele, attack paths, punctele de decizie,
constrângerile și măsurile de siguranță.

**Autoritatea de securitate.** Funcția responsabilă, conform politicii
organizaționale aplicabile, cu clasificarea, gestionarea în condiții de
securitate și verificarea înainte de diseminare a materialelor sensibile sau
clasificate.

**Autoritatea responsabilă de sistem.** Persoana sau organismul competent să
consimtă la accesarea unui anumit sistem, a unei identități, rețele, facilități
sau a altei ținte. Autoritatea de a dispune o evaluare nu conferă, prin ea
însăși, calitatea de Autoritate responsabilă de sistem.

**responsabilul sistemului.** Funcția care răspunde de operarea și protecția unui
sistem. Nu se prezumă că responsabilul sistemului deține autoritatea de a
consimți la acces, cu excepția cazului în care este desemnat și ca Autoritate
responsabilă de sistem.

**Threat Profile.** O descriere structurată a adversarului emulat pe durata
unei misiuni.

**Trusted Agent.** Control Team Lead din cadrul organizației
evaluate, care controlează misiunea și deține autoritatea unilaterală de a o
suspenda sau înceta definitiv.

---
