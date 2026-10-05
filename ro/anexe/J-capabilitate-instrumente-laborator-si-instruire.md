# ANEXA J — CAPABILITATE: INSTRUMENTE, LABORATOR ȘI INSTRUIRE

În sprijinul Capitolelor 6 și 10 din Metodologia Red Team. Emisă sub
autoritatea Head of Red Team.

Aceasta este anexa cel mai frecvent supusă schimbării. Este analizată anual și
ori de câte ori se modifică infrastructura sau setul de instrumente.

Partea J1 tratează instrumentele și laboratorul. Partea J2 tratează competențele
și instruirea.

---

# PARTEA J1 — INSTRUMENTE ȘI LABORATOR

## J1.1 Principii

| | Principiu |
|---|---|
| 1 | Un instrument nu este utilizat împotriva unei ținte până când artefactele, semnătura sa de rețea și modurile de defectare nu sunt înțelese |
| 2 | Un instrument nu este utilizat împotriva unei ținte înainte de a fi exercitat într-un mediu de laborator reprezentativ pentru ținta respectivă |
| 3 | Instrumentele native și semnate ale sistemului sunt preferate atunci când obiectivul și nivelul de capabilitate permit acest lucru |
| 4 | Instrumentele sunt obținute din surse cu autoritate, iar integritatea lor este verificată. Instrumentele ofensive constituie ele însele ținte pentru compromiterea lanțului de aprovizionare. |
| 5 | Fiecare instrument din configurația de referință este consemnat, versionat și are un responsabil |
| 6 | Instrumentele ofensive nu sunt păstrate pe dispozitive personale |
| 7 | Capabilitatea este dezvoltată numai atunci când nu poate fi obținută. Dezvoltarea proprie este tratată la punctul J1.8. |

---

## J1.2 Laboratorul

J1.2.1 Laboratorul este condiția prealabilă pentru instrucțiunea permanentă de
la punctul 8.6 din metodologie și este instituit înainte de prima misiune.

| Componentă | Scop | Minim |
|---|---|---|
| Mediu de directoare | Evaluarea tehnicilor de identitate în raport cu modelul directorului de producție | Un controler, doi membri, politică și structură organizațională reprezentative |
| Endpoint build | Evaluarea tehnicilor în raport cu imaginea de producție și configurația de protecție a endpoint-urilor | Imaginea de producție |
| Server build | Evaluarea tehnicilor aplicate serverelor | Reprezentativ pentru rolurile de producție |
| Replică a telemetriei | Stabilirea telemetriei produse de o tehnică | Aceiași agenți și aceeași configurație de transmitere ca în producție |
| Cloud tenant | Evaluarea tehnicilor asupra control plane-ului | Un tenant separat, niciodată mediul de producție |
| Segment de rețea | Izolare | Nicio rută către producție |
| Capabilitate de snapshot | Resetarea între teste | Orice hipervizor |

J1.2.2 Replica telemetriei este componenta omisă cel mai frecvent și componenta
cu cea mai mare valoare. Fără aceasta nu se poate răspunde la întrebarea privind
telemetria produsă de o tehnică în propria infrastructură a organizației, iar
fiecare exercițiu Purple Team și fiecare recomandare de detectare
depind de răspunsul respectiv.

---

## J1.3 Categorii de instrumente

| Categorie | Criterii de selectare |
|---|---|
| Command and Control | Mentenanță activă; transport criptat; suport pentru redirectors; înregistrare automată completă; profil de trafic controlabil |
| Reconnaissance | Pasivă în mod implicit; cu frecvență limitabilă |
| Enumerare | Frecvență limitabilă; comportament previzibil față de ținte fragile |
| Identitate și directoare | Numai citire în mod implicit; înțelege modelul de directoare utilizat |
| Credential recovery | Artefacte înțelese; comportament determinist |
| Lateral Movement | Mai multe opțiuni de protocol |
| Servicii cloud și găzduite | Specifice furnizorului; numai citire în mod implicit |
| Aplicații | Instrumente proxy standard |
| Social engineering | Urmărire pe destinatar; limitarea frecvenței; excluderea fiabilă a persoanelor enumerate |
| Payload development | Rezultate înțelese; posibilitatea testării în raport cu configurația de protecție a endpoint-urilor din producție |
| Acces fizic | Numai atunci când este autorizat și niciodată fără autorizare separată |
| Raportare | Criptate; supuse controlului accesului; auditate |

---

## J1.4 Selectarea unui cadru de Command and Control

J1.4.1 Aceasta este decizia privind instrumentele cu cele mai importante
consecințe. Candidații sunt evaluați în raport cu următoarele criterii.

| | Criteriu | Temei |
|---|---|---|
| 1 | Înregistrare automată completă | Atunci când o operație nu poate fi reconstituită din evidențele proprii ale cadrului, cadrul este neadecvat pentru activitatea autorizată |
| 2 | Transport criptat | Impus de punctul 8.13 din metodologie |
| 3 | Suport pentru redirectors | Impus de structura pe niveluri din Anexa D |
| 4 | Profil de trafic controlabil | Pentru a corespunde adversarului emulat |
| 5 | Operatori multipli, cu acțiuni atribuibile | Necesar pentru jurnalul operatorului |
| 6 | Mentenanță activă | Cadrele abandonate devin atât detectabile, cât și lipsite de suport |
| 7 | Proveniență și licențiere legale | |
| 8 | Familiarizarea echipei | Un cadru înțeles numai parțial reprezintă o vulnerabilitate sub presiune |

J1.4.2 Criteriile 1 și 8 prevalează asupra capabilității. Un cadru bine înțeles
și înregistrat în mod complet este preferabil unuia mai capabil, dar înțeles
numai parțial.

---

## J1.5 Aprobarea unui instrument

J1.5.1 Înainte de introducerea unui instrument în configurația de referință se
aplică succesiunea următoare.

a. Operatorul propune instrumentul, scopul și sursa acestuia.

b. Proveniența este verificată: sursă cu autoritate, integritate verificată,
licențiere confirmată.

c. Instrumentul este examinat pentru comportamente nedocumentate, inclusiv dacă
acesta contactează vreo parte terță.

d. Instrumentul este exercitat în laborator, iar artefactele, semnătura de
rețea și modurile de defectare sunt consemnate.

e. Instrumentul este exercitat în raport cu configurația de protecție a
endpoint-urilor din producție pentru stabilirea detectării preconizate.

f. Red Team Lead aprobă instrumentul și îl consemnează în
inventar, împreună cu versiunea.

J1.5.2 Litera c nu este facultativă. S-a constatat că instrumentele ofensive
obținute din surse neverificate transmit datele operatorilor către părți terțe.
Executarea unui astfel de instrument într-un mediu evaluat constituie o
compromitere cauzată de Red Team.

---

## J1.6 Inventar

J1.6.1 Pentru fiecare instrument, inventarul consemnează: denumirea, versiunea,
categoria, sursa, verificarea integrității, testarea în laborator, documentarea
artefactelor, funcția care aprobă, data și responsabilul.

---

## J1.7 Evidența artefactelor

J1.7.1 Pentru fiecare instrument este menținută o evidență, completată pe baza
testării în laborator. Aceasta permite operatorului să evalueze riscul și
inginerului de detectare să construiască o regulă.

| Câmp | Conținut |
|---|---|
| Instrument și versiune | |
| Funcție | |
| Fișiere scrise | Căi, denumiri și dacă sunt eliminate la ieșire |
| Modificări ale configurației | |
| Procese create | Denumiri, procese-părinte, linii de comandă |
| Semnătură de rețea | Protocoale, porturi, modele, caracteristicile certificatelor |
| Evidențe generate | Ce jurnale, ce identificatori |
| Detectarea de către configurația de producție | Împiedicat, alertat, numai telemetrie sau neobservat |
| Moduri de defectare | Ce se defectează și ce afectează |
| Cleanup necesar | Ce trebuie eliminat |

---

## J1.8 Capabilitate proprie

| | Cerință |
|---|---|
| 1 | Dezvoltarea proprie nu este întreprinsă atunci când un instrument consacrat îndeplinește funcția în mod adecvat |
| 2 | Este justificată numai atunci când Threat Profile necesită o capabilitate pe care niciun element disponibil nu o oferă |
| 3 | Instrumentele proprii sunt supuse controlului versiunilor, verificate de o a doua persoană și documentate la standardul prevăzut la punctul J1.7 |
| 4 | Instrumentele proprii înregistrează la același standard ca și cadrele consacrate |
| 5 | Instrumentele proprii nu sunt distribuite în afara echipei |
| 6 | Dezvoltarea unui sistem propriu de Command and Control sau a unui implant nu este întreprinsă înainte ca domeniul procesului să fi atins nivelul 2 de maturitate. A se vedea Anexa F, punctul F2.5.7. |

J1.8.1 Cerința 6 există deoarece dezvoltarea implanturilor este activitatea cea
mai atractivă aflată la dispoziția unei echipe roșii și, la un nivel redus de
maturitate, cea mai puțin productivă.

---

## J1.9 Sistemele operatorilor

a. Dedicate și controlate. Niciodată dispozitive personale.

b. Criptare completă a discului.

c. Captarea automată a sesiunilor, activată și verificată înainte de fiecare
misiune.

d. Sincronizate la Timpul universal coordonat.

e. Fără acces permanent la sistemele de producție.

f. Datele misiunii sunt păstrate în depozitul controlat, nu în spațiul de
stocare local.

g. Reinstalate între misiuni atunci când clasificarea impune acest lucru.

h. Inventariate, cu un responsabil nominalizat.

---

## J1.10 Analiză anuală

J1.10.1 Head of Red Team analizează anual următoarele.

1. Dacă fiecare instrument din configurația de referință continuă să fie
   menținut.
2. Dacă vreunul a fost înlocuit de un instrument superior.
3. Dacă evidențele artefactelor rămân exacte în raport cu configurația curentă
   de protecție a endpoint-urilor din producție.
4. Dacă vreun instrument declanșează acum detectări care modifică modul în care
   ar trebui utilizat.
5. Dacă licențierea continuă să fie valabilă și legală.
6. Dacă laboratorul continuă să fie reprezentativ pentru producție.
7. Dacă peisajul amenințărilor a creat o lacună de capabilitate.

J1.10.2 Elementul 3 este relevant. O evidență a artefactelor întocmită în raport
cu o configurație de protecție a endpoint-urilor care a fost înlocuită
descrie un sistem care nu mai există.

---

# PARTEA J2 — COMPETENȚE ȘI INSTRUIRE

## J2.1 Prioritatea competențelor

J2.1.1 Următoarele competențe sunt ordonate după frecvența cu care absența lor
limitează o structură Red Team. Ordinea diferă de cea sugerată de majoritatea
parcursurilor de instruire.

| | Competență | Temeiul poziției |
|---|---|---|
| 1 | Exprimare scrisă | Raportul este produsul. O echipă care descoperă totul și scrie slab nu livrează nimic. Aceasta este în mod constant cea mai mare lacună a echipelor puternice din punct de vedere tehnic. |
| 2 | Servicii de identitate și directoare | Calea urmată de majoritatea atacurilor moderne |
| 3 | Mecanismele interne ale sistemelor de operare | Permit evaluarea riscului și construirea recomandărilor de detectare |
| 4 | Rețelistică | Fundamentează deplasarea și infrastructura |
| 5 | Detectare și telemetrie | Nu poate fi recomandată o detectare pe care persoana care o recomandă nu ar putea să o construiască |
| 6 | Servicii cloud și găzduite | Reprezintă tot mai frecvent locul pe unde trece attack path-ul și se află adesea în afara vizibilității elementului defensiv |
| 7 | Scriptare | Adaptarea instrumentelor; automatizarea colectării dovezilor |
| 8 | Analiza informațiilor privind amenințările | Transformarea raportărilor într-un plan de emulare |
| 9 | Aplicații | Zona în care se află frecvent vectorul de initial access sau obiectivul |
| 10 | Social engineering | Valoare ridicată, sensibilitate juridică ridicată |
| 11 | Activități fizice | Numai atunci când sunt incluse în sferă. Cel mai ridicat risc personal. |

J2.1.2 Exprimarea scrisă ocupă primul loc deoarece absența acesteia distruge cel
mai sigur valoarea tuturor celorlalte competențe și deoarece este competența
pentru care se alocă cel mai rar timp.

---

## J2.2 Matricea de competențe

J2.2.1 Este menținută de Head of Red Team și analizată de două ori pe an.
Niveluri: 0 inexistent; 1 cunoaștere generală; 2 capabil cu sprijin; 3
independent; 4 capabil să instruiască.

| Competență | Nivel minim necesar |
|---|---|
| Exprimare scrisă | 3 pentru Red Team Lead; 2 pentru toți |
| Identitate și directoare | 3 pentru o persoană; 2 pentru toți |
| Mecanismele interne Windows | 3 pentru o persoană; 2 pentru toți |
| Mecanismele interne Linux | 2 pentru o persoană |
| Rețelistică | 2 pentru toți |
| Detectare și telemetrie | 3 pentru o persoană |
| Servicii cloud și găzduite | 2 pentru o persoană |
| Scriptare | 2 pentru toți |
| Threat intelligence | 2 pentru o persoană |
| Operarea comenzii și controlului | 3 pentru toți |
| Construirea infrastructurii | 3 pentru o persoană |
| Aplicații | 2 pentru o persoană |
| Social engineering | 2 pentru o persoană |
| Disciplina dovezilor și consemnării | **3 pentru toți** |
| Regulile de angajare și cunoașterea aspectelor juridice | **3 pentru toți** |

J2.2.2 Ultimele două rânduri impun nivelul 3 fiecărui membru. Niciuna dintre
competențe nu este tehnică. Ambele mențin legalitatea și siguranța capabilității
și niciuna nu poate fi delegată singurului membru competent în domeniu.

J2.2.3 Nicio capabilitate nu trebuie să depindă de o singură persoană. A se vedea
Anexa A, punctul A.5.4.

---

## J2.3 Dezvoltare

### J2.3.1 Primele nouăzeci de zile

| Perioadă | Activitate | Rezultat |
|---|---|---|
| Săptămâna 1 | Citirea metodologiei și anexelor. Semnarea confirmării privind conduita. | Regulile sunt cunoscute |
| Săptămânile 1-2 | Construirea și reconstruirea laboratorului | Mediul este stăpânit |
| Săptămânile 2-4 | Participarea la un exercițiu Purple Team ca persoană care consemnează | Este observat ciclul complet |
| Săptămânile 3-6 | Exercitarea a cinci tehnici în laborator și documentarea artefactelor acestora la standardul prevăzut la punctul J1.7 | Prima contribuție |
| Săptămânile 5-8 | Operarea într-un exercițiu Purple Team, sub supraveghere | Execuție supravegheată |
| Săptămânile 8-10 | Redactarea unei secțiuni de raport și verificarea acesteia | Cea mai instructivă activitate a perioadei |
| Săptămânile 10-12 | Operarea într-o misiune, sub supraveghere | Misiune supravegheată |

J2.3.1.1 Niciun operator nu lucrează nesupravegheat într-un mediu evaluat în
primele nouăzeci de zile de la intrarea în echipă. Experiența anterioară din altă
parte nu modifică această cerință. Constrângerea este cunoașterea prezentei
metodologii și a acestei infrastructuri, nu competența tehnică.

### J2.3.2 Dezvoltare continuă

| Frecvență | Activitate |
|---|---|
| Săptămânal | Patru ore protejate pentru activitate de laborator și cercetare, pentru fiecare operator |
| Lunar | Un exercițiu Purple Team |
| Lunar | Studierea aprofundată a unei tehnici și documentarea acesteia la standardul privind artefactele |
| Trimestrial | O competiție sau un exercițiu extern |
| De două ori pe an | Analizarea matricei de competențe și a planurilor individuale de dezvoltare |
| Anual | Un curs formal pentru fiecare operator |
| Anual | Un exercițiu extern |

J2.3.2.1 Douăzeci la sută din timpul aferent încadrării este rezervat
dezvoltării, conform Anexei A, punctul A.5.4.

---

## J2.4 Surse de instruire

### J2.4.1 Disponibile gratuit

| Resursă | Valoare |
|---|---|
| MITRE ATT&CK | Limbajul comun. Fundamentul. |
| Biblioteca de emulare și planurile de microemulare ale Centre for Threat-Informed Defense | Planuri gata de utilizare și modelul pentru planurile proprii ale organizației |
| Purple Team Exercise Framework | Modelul de operare prevăzut în Anexa H, partea H4 |
| Atomic Red Team | Teste pe tehnici, adecvate pentru construirea unei biblioteci de microplanuri |
| Raportările de threat intelligence ale furnizorilor | Materia primă pentru Threat Profile-uri |
| Relatările și avertizările publicate privind incidentele | Comportamentul documentat al adversarului |
| Laboratorul | Mediul disponibil cu cea mai mare valoare |

### J2.4.2 Instruire formală și certificare

J2.4.2.1 Certificarea este un obiectiv în cadrul matricei de competențe și un
semnal de credibilitate pentru misiunile externe. Nu este o condiție prealabilă
pentru contribuție.

J2.4.2.2 Atunci când resursele sunt limitate, cheltuielile sunt prioritizate în
ordinea următoare.

a. Laboratorul: infrastructură și licențe.

b. Instruirea în domeniul serviciilor de identitate și directoare pentru
operatorul cu cea mai mare capabilitate.

c. Participarea la un exercițiu extern.

d. Certificarea.

---

## J2.5 Păstrarea cunoștințelor

J2.5.1 Capabilitatea deținută numai de persoane dispare odată cu plecarea
acestora. Sunt menținute următoarele elemente.

| Artefact | Responsabil | Conținut |
|---|---|---|
| Evidențele artefactelor instrumentelor | Operatorul care a testat instrumentul | Conform punctului J1.7 |
| Biblioteca de tehnici | Echipa | Pentru fiecare tehnică: procedură, artefacte, telemetrie produsă, îndrumări de detectare |
| Planuri de microemulare | Echipa | Lanțuri repetabile de trei-cinci tehnici |
| Biblioteca de scenarii | Head of Red Team | Scenarii reutilizabile, corelate cu Threat Profile-urile |
| Biblioteca Threat Profile-urilor | Threat Intelligence Analyst | Threat Profile-uri reutilizabile, actualizate anual |
| Lecții | Head of Red Team | Pentru fiecare misiune, în formularul-tip T11 |
| Cunoașterea mediului | Echipa | Cunoștințele despre infrastructură, actualizate la fiecare misiune |

J2.5.2 O bibliotecă de zece planuri de microemulare repetabile are o valoare mai
mare pentru o echipă cu această încadrare decât un implant propriu și reprezintă
activul care face suportabilă plecarea unui operator.

---

## J2.6 Rotație și oboseală

| Risc | Măsură de reducere |
|---|---|
| Îngustarea competențelor | Operatorii rotesc domeniile principale între misiuni |
| Oboseală în cadrul misiunilor prelungite | Pauze obligatorii; nicio acțiune cu risc ridicat în stare de oboseală, conform Anexei E, punctul E.9 |
| Izolarea față de elementul defensiv | Exerciții Purple Team; rotația operatorilor prin elementul defensiv |
| Pierderea scopului | Îmbunătățirile defensive atribuibile capabilității sunt consemnate și raportate, conform Anexei F, punctul F2.4 |
| Puncte unice de cunoaștere | Fiecare capabilitate este documentată; nu există nicio dependență nedocumentată de o singură persoană |

---
