# ANEXA D — PLANIFICARE ȘI THREAT PROFILING

În sprijinul fazelor 2 și 3 din Capitolul 7 al Metodologiei Red Team. Emisă
sub autoritatea Head of Red Team.

---

## D.1 Principiu

D.1.1 Acțiunile unei echipe roșii sunt derivate dintr-o amenințare. Acestea nu
sunt selectate dintr-un set de instrumente.

D.1.2 Planificarea care pornește de la capabilitatea disponibilă produce misiuni
care reflectă obiceiurile echipei. Constatările rezultate determină elementul
defensiv să construiască detectări împotriva Red Team, nu împotriva unui
adversar. Planificarea care pornește de la amenințare produce constatări care
reflectă expunerea reală.

D.1.3 Analiza necesară presupune un număr redus de zile pentru fiecare misiune și
reprezintă practica prin care activitatea Red Team se diferențiază
de testarea tehnică.

---

## D.2 Threat Profile

D.2.1 Threat Profile este întocmit în faza 2, în formularul-tip T03, și
constituie Apendicele 8 la Regulile de angajare.

### D.2.2 Selectarea adversarului

D.2.2.1 Se răspunde în ordine la următoarele întrebări, iar răspunsurile sunt
consemnate.

| | Întrebare | Surse |
|---|---|---|
| 1 | Ce deține organizația evaluată și ar urmări un adversar să obțină? | Misiune, date, acces, poziție într-un supply chain, valoare simbolică |
| 2 | Ce adversari au acționat împotriva unor organizații comparabile în ultimele 24 de luni? | Raportări ale echipei naționale de răspuns la incidente de securitate cibernetică, schimburi de informații sectoriale, raportări ale furnizorilor, relatări publicate despre incidente |
| 3 | Ce adversari au acționat împotriva acestei organizații? | Istoricul incidentelor, escaladări, telemetrie privind phishingul |
| 4 | Care este expunerea geopolitică și sectorială? | Țară, apartenența la alianțe, caracter critic, situația actuală |
| 5 | Care dintre acești adversari are tehnici documentate public ce pot fi emulate? | Grupuri ATT&CK, biblioteca de emulare a Centre for Threat-Informed Defense, raportări ale furnizorilor |
| 6 | Împotriva căruia este cel mai instructiv să fie construită apărarea? | Adversarul ale cărui tehnici se suprapun cu cel mai larg set de amenințări plauzibile |

D.2.2.2 Este selectat un adversar principal. Poate fi selectat un adversar
secundar atunci când este necesar un set de tehnici contrastant. Mai mult de doi
adversari produc un scenariu incoerent.

D.2.2.3 Atunci când niciun grup documentat nu corespunde țintei, se construiește
un profil compozit pornind de la o categorie de amenințări și utilizând tehnici
comune mai multor grupuri documentate. Un profil compozit este legitim și este
frecvent mai util decât un grup nominalizat fără un interes demonstrat pentru
sectorul în cauză. Profilul trebuie să precizeze caracterul său compozit.

### D.2.3 Conținutul profilului

| Secțiune | Conținut |
|---|---|
| Identitate | Denumire, pseudonime, identificatorul grupului ATT&CK sau denumirea „compozit” |
| Actualitate | Data-limită a informațiilor; data publicării profilului; perioada de activitate reprezentată |
| Temei | Raportările din care este construit profilul, cu referințe, fiabilitatea surselor, nivelul de încredere al analizei și opiniile divergente semnificative |
| Referință ATT&CK | Versiunea Enterprise ATT&CK și data verificării matricei curente |
| Motivație | Spionaj, câștig financiar, perturbare, activism, prepoziționare |
| Obiective împotriva țintei | Ceea ce ar urmări adversarul să obțină de la această organizație |
| Nivel de capabilitate | 1-4, conform Anexei B, punctul B.7, cu precizarea temeiului |
| Initial access | Vectori de intrare documentați, ordonați după frecvența observată |
| Instrumente | Instrumente cunoscute, familii de programe malware, fișiere binare native, capabilități proprii |
| Modelul infrastructurii | Găzduire, denumirea domeniilor, practici privind certificatele, protocoale, intervalele apelurilor de revenire |
| Set de tehnici | Lista ordonată a tehnicilor care urmează să fie emulate |
| Indicatori | Indicatori din raportări, utilizați pentru a alimenta detectările și a diferenția emularea de actorul real |
| Tehnici neemulate | Tehnici excluse din motive de siguranță, legalitate sau capabilitate, cu precizarea temeiului |

D.2.4 Ultimul rând este obligatoriu. Emularea este întotdeauna parțială, iar
precizarea omisiunilor împiedică interpretarea raportului drept asigurare
împotriva adversarului în ansamblu.

---

## D.3 Referința MITRE ATT&CK

D.3.1 Lista tacticilor formează structura fiecărui Threat Profile și a
fiecărui raport de acoperire. Tabelul următor reproduce matricea MITRE ATT&CK
pentru mediul organizațional, în ordinea în care este prezentată acolo, împreună
cu etapa de execuție căreia îi corespunde de regulă fiecare tactică.

| | Identificator | Tactică | Intenția adversarului | Etapă |
|---|---|---|---|---|
| 1 | TA0043 | Reconnaissance | Colectarea informațiilor pentru planificarea operațiilor | Get In |
| 2 | TA0042 | Resource Development | Instituirea resurselor pentru sprijinirea operațiilor | Get In |
| 3 | TA0001 | Initial Access | Pătrunderea în rețea | Get In |
| 4 | TA0002 | Execution | Rularea codului rău intenționat | Get In |
| 5 | TA0003 | Persistence | Menținerea punctului inițial de acces | Stay In |
| 6 | TA0004 | Privilege Escalation | Obținerea unor permisiuni de nivel superior | Stay In |
| 7 | TA0005 | Stealth | Ascunderea activității și aparența unui comportament normal | Stay In |
| 8 | TA0112 | Defense Impairment | Compromiterea mecanismelor și instrumentelor de securitate, astfel încât apărătorii să nu poată vedea sau considera de încredere ceea ce se întâmplă | Stay In |
| 9 | TA0006 | Credential Access | Obținerea numelor de cont și a parolelor | Stay In |
| 10 | TA0007 | Discovery | Stabilirea componenței mediului | Act |
| 11 | TA0008 | Lateral Movement | Deplasarea în cadrul mediului | Act |
| 12 | TA0009 | Collection | Colectarea datelor de interes | Act |
| 13 | TA0011 | Command and Control | Comunicarea cu sistemele compromise | Stay In |
| 14 | TA0010 | Exfiltration | Extragerea datelor | Act |
| 15 | TA0040 | Impact | Manipularea, întreruperea sau distrugerea sistemelor și datelor | Act |

D.3.2 La data emiterii prezentei anexe, ATT&CK v19 este versiunea curentă din
28 aprilie 2026. Aceasta a împărțit fosta tactică Defense Evasion în Stealth și
Defense Impairment. ATT&CK este supus revizuirii; tabelul trebuie verificat în
raport cu matricea curentă la începerea fiecărui Threat Profile și trebuie
consemnate atât versiunea, cât și data verificării. Un raport de acoperire
construit pe baza unei matrice diferite nu este direct comparabil până când
corelările și modificările nu sunt reconciliate.

D.3.3 Sursa: <https://attack.mitre.org/tactics/enterprise/>.

---

## D.4 Tabelul tehnicilor

D.4.1 Tabelul acțiunilor formează structura planului, a evidenței execuției și a
raportului de acoperire. Acesta este construit în faza 2 și utilizează
identificatori stabili, păstrați până la închidere.

| ID acțiune | Tactică și tehnică | Procedură | ID surse amenințare | Nivel de aprobare | Starea în plan |
|---|---|---|---|---|---|
| A-01 | Initial Access — T1566.001 Spearphishing Attachment | Metoda specifică ce urmează a fi utilizată | | | Planificată |
| A-02 | Execution — T1204.002 User Execution | | | | Planificată |
| A-03 | Persistence — T1053.005 Scheduled Task | | | | Planificată |

D.4.2 Coloana privind procedura este cea operațională. Zece echipe care emulează
o singură tehnică o vor implementa în zece moduri, iar elementele defensive
detectează proceduri, nu identificatori de tehnici. Consemnarea procedurii exacte
face ca misiunea să fie reproductibilă, iar activitatea de detectare să fie
relevantă.

D.4.3 Execuția și rezultatele defensive nu sunt anticipate într-un singur câmp
de acoperire. Fiecare acțiune este consemnată ca neîncercată, înlocuită, blocată
sau executată; pentru acțiunile aplicabile sunt apoi consemnate separat
telemetria utilizabilă, alerta, investigarea, limitarea și restabilirea. A se
vedea Anexa F.

---

## D.5 Obiective

### D.5.1 Caracteristici

D.5.1.1 Un obiectiv valabil este specific, verificabil și corelat cu impactul
asupra misiunii.

| Obiectiv deficitar | Deficiență | Obiectiv adecvat |
|---|---|---|
| Compromiterea domeniului | Tehnic, nu axat pe consecințe; controlul administrativ este o etapă, nu un efect | Demonstrarea capabilității de a autoriza o tranzacție peste o valoare declarată fără a doua aprobare |
| Identificarea vulnerabilităților | Acesta este un test de penetrare | Stabilirea faptului dacă un adversar care deține un cont de utilizator standard poate citi un set de date declarat în termen de zece zile lucrătoare |
| Evaluarea elementului defensiv | Neverificabil | Stabilirea faptului dacă deplasarea laterală bazată pe identitate este detectată și escaladată în perioada convenită |
| Obținerea accesului | Fără stare finală | Obținerea și demonstrarea accesului la interfața administrativă a unui sistem declarat, pornind de la o postură externă |

### D.5.2 Specificație

D.5.2.1 Fiecare obiectiv trebuie să consemneze:

a. starea finală, într-o singură frază;

b. justificarea în raport cu misiunea;

c. obiectivul evaluării pe care îl deservește, conform punctului 3.3 din
metodologie;

d. metoda de verificare;

e. standardul privind dovezile și limita acestuia;

f. dovada care este interzisă;

g. perioada după care încercarea încetează.

D.5.2.2 Litera f este elementul care împiedică transformarea unei misiuni într-un
incident de protecție a datelor. Acesta este stabilit înainte de execuție.

### D.5.3 Marcaje

D.5.3.1 Atunci când obiectivul este un loc, nu o capabilitate, Agentul de
încredere plasează un marcaj în locul-țintă înainte de execuție.

D.5.3.2 Marcajele sunt preferate deoarece recuperarea demonstrează accesul fără
contact cu date reale, rezultatul este neechivoc, iar recuperarea constituie ea
însăși un eveniment în raport cu care poate fi evaluat elementul defensiv.

D.5.3.3 Un marcaj trebuie să poarte un identificator unic, să nu conțină date
sensibile, să fie consemnat de Trusted Agent împreună cu locul și ora
plasării și să fie eliminat în faza de cleanup.

---

## D.6 Proiectarea scenariului

### D.6.1 Componente

| Componentă | Conținut |
|---|---|
| Premisă | Adversarul, scopul său și momentul campaniei sale în care începe misiunea |
| Postură inițială | Externă, assumed breach, insider sau supply chain |
| Obiective | Conform specificației de la punctul D.5 |
| Etapizare | Tehnicile alocate etapelor Get In, Stay In și Act |
| Puncte de decizie | Punctele în care planul se ramifică în funcție de elementele descoperite |
| Variante de rezervă | Acțiunea aplicată atunci când calea principală eșuează |
| Constrângeri | Perioadă, nivel de capabilitate, tehnici interzise |
| Măsuri de siguranță | Pentru fiecare tehnică |

### D.6.2 Postura inițială

D.6.2.1 Postura inițială este decizia de planificare cu cele mai importante
consecințe.

| Postură | Evaluează | Este selectată atunci când | Cost |
|---|---|---|---|
| Externă, fără acces | Întregul lanț, inclusiv perimetrul și initial access | Reziliența perimetrului și la phishing este realmente pusă în discuție | Ridicat; poate consuma întreaga perioadă fără obținerea accesului |
| Assumed breach, stație de lucru a utilizatorului | Tot ceea ce urmează după initial access | Detectarea și răspunsul constituie obiectul evaluării | Redus |
| Assumed breach, server sau service account | Activitatea ulterioară exploatării în infrastructura de servere | Segmentarea și accesul privilegiat constituie obiectul evaluării | Redus |
| Insider | Controalele împotriva unui insider rău intenționat sau compromis | Riscul din interior constituie o preocupare declarată | Redus |
| Supply chain | Relațiile de încredere cu furnizorii | Accesul părților terțe este semnificativ | Moderat; necesită consimțământul furnizorului |

D.6.2.2 Postura assumed breach de la o stație de lucru a unui utilizator standard
este opțiunea implicită recomandată. Un adversar capabil va obține în cele din
urmă initial access; consumarea întregii perioade pentru a stabili acest fapt
produce informații limitate. Întrebările defensive relevante apar după obținerea
accesului.

D.6.2.3 Atunci când reziliența perimetrului necesită evaluare, aceasta este
desfășurată în paralel, ca activitate distinctă și limitată în timp.

### D.6.3 Ipoteze privind attack paths

D.6.3.1 Înainte de execuție sunt consemnate trei-cinci căi de la postura
inițială la fiecare obiectiv. Pentru fiecare se consemnează etapele, controalele
preconizate și predicția dacă fiecare control va preveni, detecta sau omite
activitatea.

D.6.3.2 Predicțiile constituie ele însele o constatare. Atunci când organizația
a anticipat că un control va detecta o acțiune, iar controlul nu a detectat-o,
diferența dintre convingere și efect reprezintă unul dintre cele mai utile
produse ale unei misiuni. Predicțiile sunt consemnate înainte de execuție și
comparate în raport.

### D.6.4 Trasabilitate end-to-end

D.6.4.1 Fiecare misiune menține un golden thread de la serviciul
operațional expus riscului până la îmbunătățirea verificată. Identificatorii
stabili sunt transferați între T01 și T12 și nu sunt înlocuiți numai cu titluri.

| Legătură | De la | La | Evidență necesară |
|---|---|---|---|
| 1 | Serviciu critic sau important | Dovezi privind amenințarea | Motivul pentru care amenințarea este relevantă pentru serviciu |
| 2 | Dovezi privind amenințarea | Scenariu | Referințele surselor, nivelul de încredere și data-limită a informațiilor |
| 3 | Scenariu | Obiectiv sau marcaj | Efectul asupra misiunii și criteriul de succes |
| 4 | Obiectiv sau marcaj | Procedură și acțiune | ID scenariu, ID obiectiv, ID procedură și referințe la jurnalul operatorului |
| 5 | Acțiune | Observație defensivă | Referințe privind evenimentul, telemetria, alerta, investigarea și răspunsul |
| 6 | Observație | Constatare și remediere | Referințele dovezilor, responsabilul, termenul de finalizare și efectul preconizat al controlului |
| 7 | Remediere | Retestare și închidere | Procedura inițială, controlul modificat, rezultatul retestării și riscul rezidual |

D.6.4.2 Pentru o misiune restrânsă, tabelul de trasabilitate și diagrama attack
path-urilor sunt suficiente. Atunci când scenariul are dependențe, căi paralele sau
variante de rezervă dificil de reprezentat în mod clar, echipa ar trebui să
întocmească și un Attack Flow. Specificația curentă a Centre for Threat-Informed
Defense poate fi utilizată pentru un flux prelucrabil automat, însă utilizarea
unui instrument sau a unui format oficial de schimb nu constituie un criteriu
de trecere pentru o echipă mică.

---

## D.7 Evaluarea riscurilor operaționale

D.7.1 În faza 3 este finalizată o evaluare a riscurilor operaționale pentru
fiecare categorie de tehnici planificată, care consemnează:

a. tehnica;

b. modurile de defectare credibile, inclusiv pierderea serviciului, blocarea
conturilor, coruperea datelor, saturarea alertelor și efectul asupra unei părți
terțe;

c. probabilitatea și impactul;

d. măsura de reducere aplicată înaintea acțiunii;

e. metoda de revenire;

f. mijloacele prin care ar fi detectat prejudiciul;

g. nivelul la care este necesară aprobarea.

D.7.2 O tehnică evaluată ca având impact ridicat și fără metodă de revenire nu
trebuie executată fără aprobarea scrisă a Autorității de aprobare, care
nominalizează tehnica și riscul acceptat.

D.7.3 Următoarele activități necesită aprobarea Trusted Agent imediat
înainte de execuție, indiferent de Regulile de angajare.

a. Acțiune împotriva unui controler de domeniu, furnizor de identitate sau unei
autorități de certificare.

b. Acțiune împotriva unui hipervizor, sistem de copii de siguranță sau unei
platforme de stocare.

c. Acțiune împotriva tehnologiilor operaționale, sistemelor de siguranță sau
dispozitivelor medicale.

d. Atacuri asupra datelor de autentificare care pot provoca blocarea conturilor
pe scară largă.

e. Modificarea politicii de grup, a controlului accesului sau a configurației de
autentificare.

f. Prima utilizare a oricărei tehnici în mediu.

g. Orice acțiune în timpul blocării modificărilor, în perioada închiderii
financiare sau în timpul unui eveniment operațional major.

---

## D.8 Infrastructură

### D.8.1 Structură pe niveluri

D.8.1.1 Infrastructura este construită pe niveluri, astfel încât pierderea unei
componente să nu încheie misiunea, iar componentele cu cea mai mare
probabilitate de a fi descoperite să fie amplasate cât mai departe de cele care
nu trebuie descoperite.

```{.mermaid filename="annex-d-infrastructure"}
flowchart TB
    NET(("Internet"))
    R1["Redirector"]
    R2["Redirector"]
    R3["Redirector"]
    T1["Nivelul 1, livrare<br/>Phishing și pregătire<br/>Se preconizează că va fi descoperit"]
    T2["Nivelul 2, durată scurtă<br/>Operare interactivă<br/>Poate fi descoperit"]
    T3["Nivelul 3, durată lungă<br/>Acces rezilient<br/>Frecvență redusă; utilizat numai dacă Nivelul 2 este pierdut"]
    TS["Team server<br/>Inaccesibil din internet<br/>Acceptă numai traficul provenit de la redirectors, printr-o<br/>rețea suprapusă privată sau autentificată"]
    NET --> R1 --> T1 --> TS
    NET --> R2 --> T2 --> TS
    NET --> R3 --> T3 --> TS
```

**Figura D-1. Nivelurile infrastructurii**

### D.8.2 Standarde

D.8.2.1 Trebuie respectate următoarele cerințe.

a. Întregul trafic de Command and Control este criptat.

b. Serverul echipei nu este accesibil din internet și acceptă trafic numai de
la redirectors.

c. Întreaga activitate a infrastructurii este jurnalizată automat, independent
de acțiunea operatorului.

d. Fiecare activ este consemnat în inventar la creare, împreună cu funcția
responsabilă de dezafectarea sa.

e. În fiecare etapă sunt disponibile cel puțin două canale independente.

f. Condițiile în vigoare ale furnizorului și serviciului permit activitatea de
la și împotriva conturilor și resurselor consemnate, iar orice aprobare necesară
pentru Command and Control, evenimente simulate, phishing, testarea programelor
malware sau activități de volum mare este în vigoare. Registrul permisiunilor
prevăzut în Anexa G, punctul G.2.5, constituie evidența.

D.8.2.2 Următoarele nu trebuie să se producă.

a. Reutilizarea infrastructurii sau denumirilor între misiuni ori între
niveluri.

b. Utilizarea unei infrastructuri care nu poate fi dezafectată complet.

c. Utilizarea infrastructurii aparținând unei părți terțe fără consimțământul
acesteia.

### D.8.3 Inventar

D.8.3.1 Pentru fiecare activ, inventarul consemnează: tipul, identificatorul,
furnizorul, nivelul, scopul, data creării, persoana care l-a creat, metoda de
dezafectare, data dezafectării și persoana care a verificat-o.

D.8.3.2 Infrastructura nedocumentată constituie cauza obișnuită pentru care o
infrastructură activă rămâne orientată către o organizație evaluată după
închiderea unei misiuni.

---

## D.9 Colectarea evidențelor

D.9.1 Următoarele aspecte sunt stabilite înainte de execuție.

| Aspect | Standard |
|---|---|
| Locul dovezilor | Un singur depozit criptat, cu acces controlat pentru echipa misiunii |
| Standard de timp | Timp universal coordonat, pe fiecare sistem și în fiecare înregistrare |
| Asigurarea ceasului | Sursa de timp, ora verificării, abaterea observată și toleranța aprobată local sunt consemnate pentru fiecare sistem-sursă |
| Captare automată | Evidențele infrastructurii, evidențele sesiunilor, rezultatele instrumentelor |
| Captare manuală | Jurnalele operatorilor, capturi de ecran, motivarea deciziilor |
| Standard pentru captura de ecran | Fereastra completă, inclusiv o referință temporală vizibilă și identitatea gazdei, cu redactarea datelor la momentul captării |
| Integritate | Hashul criptografic și algoritmul sunt consemnate la colectare sau la prima consolidare; sunt păstrate sursa originală și calea din depozit |
| Proveniență | Sunt consemnate persoana care colectează, ora colectării, sistemul-sursă și orice transfer sau transformare |
| Păstrare | Conform Regulilor de angajare, urmată de distrugere și de un certificat |
| Clasificare | Cel mai înalt nivel de clasificare al oricărui material observat |

D.9.2 Captarea automată a sesiunii trebuie activată și verificată pe fiecare
sistem al operatorilor înainte de execuție. Întemeierea pe memoria operatorilor
produce lacune în punctele cu cele mai importante consecințe.

---

## D.10 Comunicații

D.10.1 Sunt instituite următoarele canale.

| Canal | Scop | Părți | Frecvență |
|---|---|---|---|
| Intern | Coordonare operațională | Red Team | Continuu |
| Linie de deconflictare | Încetare, deconflictare, incident | Red Team Lead și Trusted Agent | La nevoie, pe întreaga perioadă de execuție |
| Raport de situație | Stare | Red Team Lead către Trusted Agent | Zilnic, la sfârșitul zilei |
| Conducere | Progres, modificări, decizii | Red Team Lead, Trusted Agent, Autoritatea de aprobare | Săptămânal |
| Urgență | Suspiciune privind pierderea serviciului sau o intruziune reală | Orice parte către Trusted Agent | Imediat, prin telefon |

D.10.2 Linia de deconflictare trebuie să fie un număr de telefon la care răspunde
o persoană. O căsuță poștală partajată, un canal de mesagerie sau o coadă de
tichete nu sunt suficiente. Atunci când un operator consideră că a fost afectat
un sistem de producție, timpul de răspuns al canalului determină consecința.

D.10.3 Într-o misiune covert, comunicațiile misiunii trebuie să utilizeze
canale din afara infrastructurii monitorizate a organizației evaluate. În caz
contrar, elementul defensiv poate descoperi misiunea în cursul îndeplinirii
atribuțiilor sale obișnuite, ceea ce invalidează evaluarea și transmite o lecție
greșită.
