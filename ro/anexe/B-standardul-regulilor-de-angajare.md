# ANEXA B — STANDARDUL REGULILOR DE ANGAJARE

În sprijinul Capitolului 5 din Metodologia Red Team. Emisă sub autoritatea
Head of Red Team.

---

## B.1 Statutul Regulilor de angajare

B.1.1 Regulile de angajare stabilesc relațiile și obligațiile dintre Red Team, responsabilul sistemului și organizația evaluată. Acestea reglementează
întreaga misiune și trebuie respectate pe toată durata execuției.

B.1.2 Trei cerințe sunt absolute.

a. Activitatea nu trebuie să înceapă înainte de semnarea Regulilor de angajare.
Autoritatea verbală nu este suficientă.

b. Extinderea sau orice altă abatere de la o limită autorizată necesită
aprobarea scrisă prealabilă a fiecărei autorități semnatare afectate. Aprobarea
acordată ulterior nu autorizează retroactiv activitatea. O dispoziție de
restricționare, suspendare sau oprire produce efecte imediat și este consemnată
cât mai curând posibil.

c. Regulile de angajare trebuie modificate ori de câte ori se schimbă spațiul-
țintă, acțiunile autorizate, obiectivele sau sfera de aplicare. Un document care
nu reflectă activitatea curentă nu constituie o dovadă fiabilă a limitei în care
se acționează.

B.1.3 Regulile de angajare și Scrisoarea de autorizare îndeplinesc funcții
diferite. Regulile de angajare reprezintă instrumentul operațional: sunt
detaliate, tehnice și deținute de echipă. Scrisoarea de autorizare reprezintă
evidența succintă a consimțământului specific țintei: este semnată de
Autoritatea responsabilă de sistem, contrasemnată de autoritatea competentă
pentru riscul operațional atunci când aceasta este diferită și purtată de
fiecare operator. Niciunul dintre documente nu înlocuiește alte cerințe legale,
contractuale sau ale furnizorului aplicabile. A se vedea Anexa G, punctul G.3.

B.1.4 Pentru întocmirea acestora se utilizează formularul-tip T02.

---

## B.2 Conținut obligatoriu

B.2.1 Fiecare set de Reguli de angajare trebuie să cuprindă secțiunile
următoare. Regulile de angajare din care lipsește orice secțiune nu sunt valabile.

| | Secțiune | Conținut |
|---|---|---|
| 1 | Identitatea misiunii | Denumire, nume de cod, referință, clasificare, versiune |
| 2 | Părți | Organizația evaluată, Red Team, autoritatea care acordă mandatul, după caz |
| 3 | Scop și obiective | Cerința; unu-trei obiective; obiectivul evaluării căruia îi corespunde fiecare |
| 4 | Categorie | Categoria de servicii SL-1-SL-4; covert sau open; postura inițială |
| 5 | Metodologie | Trimitere la prezenta publicație și la modelul fazelor |
| 6 | Tipuri de activități | Categoriile de activități permise |
| 7 | Echipamente și software | Instrumentele, cadrul de Command and Control, infrastructura |
| 8 | Rezumatul Threat Profile-ului | Adversarul emulat și nivelul de capabilitate |
| 9 | Funcții | Fiecare funcție și autoritatea sa |
| 10 | Deconflictare | Procedura completă, inclusiv cuvântul codificat de autentificare |
| 11 | Criterii de încetare | Lista; persoanele care le pot invoca; consecința |
| 12 | Comunicații | Canale, periodicitate, calendarul rapoartelor de situație, măsurile din afara programului |
| 13 | Gestionarea datelor | Datele care pot fi accesate și păstrate și durata păstrării |
| 14 | Dovezi și raportare | Produse, destinatari, clasificare |
| 15 | Autoritate juridică și a părților terțe | Legislația aplicabilă, obligațiile sectoriale, consimțământul responsabilului sistemului, politica furnizorului și orice permisiune a unei părți terțe |
| 16 | Limitări | Asigurarea pe care misiunea o oferă și cea pe care nu o oferă |
| 17 | Controlul modificărilor | Procedura de modificare pe durata execuției |
| 18 | Aprobare | Semnăturile tuturor părților, inclusiv ale Autorității responsabile de sistem atunci când funcția este deținută separat |

B.2.2 Trebuie atașate următoarele apendice. Acestea sunt denumite apendice, nu
anexe, pentru a fi diferențiate de anexele prezentei publicații.

| Apendice | Conținut |
|---|---|
| 1 | Identificarea organizației evaluate |
| 2 | Lista de contacte, conform punctului A.7 |
| 3 | Target space-ul autorizat |
| 4 | Target space-ul exclus |
| 5 | Acțiuni autorizate |
| 6 | Acțiuni interzise |
| 7 | Obiective și criterii de succes |
| 8 | Threat Profile sau trimiterea la acesta |
| 9 | Evidența modificărilor efectuate pe durata execuției |

---

## B.3 Sferă delimitată și excluderi

B.3.1 Fiecare misiune trebuie să definească mai întâi o limită exterioară
autorizată în mod pozitiv: entitățile juridice, sistemele, rețelele, domeniile,
entitățile găzduite sau proiectele cloud, identitățile, grupurile de personal și
locurile fizice pentru care a fost verificat un consimțământ valabil. Orice
element din afara acestei limite se află în afara sferei de aplicare. În
interiorul acestei limite, misiunea poate utiliza delimitarea prin excludere
pentru a păstra libertatea de alegere a adversarului: țintele sunt disponibile
numai dacă se află în interiorul limitei exterioare și nu sunt incluse în lista
de excluderi.

B.3.2 Delimitarea prin excludere nu creează niciodată autoritate. Aceasta nu
trebuie utilizată pentru a deduce consimțământul unei filiale, al unui furnizor,
al unei platforme partajate, al unui furnizor de servicii cloud, al unui client,
pentru un activ deținut de un angajat sau pentru orice altă parte terță. Dreptul
de proprietate și permisiunea sunt stabilite în mod pozitiv înainte de
includerea țintei în Apendicele 3.

B.3.3 În consecință, Apendicele 4, target space-ul exclus, este partea documentului
cu cea mai mare importanță pentru siguranță. Acesta trebuie întocmit de
organizația evaluată, nu de Red Team, și trebuie confirmat de responsabilul
fiecărui sistem exclus.

B.3.4 Excluderile trebuie să cuprindă, după caz:

a. sistemele a căror indisponibilitate generează un risc pentru viață;

b. sistemele aflate într-o perioadă de blocare a modificărilor, în curs de
migrare sau despre care se cunoaște că sunt instabile;

c. sistemele găzduite de o parte terță care nu și-a exprimat consimțământul;

d. depozitele de date juridice, privind personalul, medicale și protejate de
secret profesional;

e. persoanele excluse de la activitățile de social engineering;

f. ferestrele de mentenanță și perioadele de restricționare;

g. orice sistem al cărui responsabil nu poate fi contactat în perioada de
execuție.

B.3.5 Atunci când proprietatea, permisiunea sau statutul unei ținte este
ambiguu, ținta se află în afara sferei de aplicare. Operatorii trebuie să trateze
ambiguitatea drept interdicție și să solicite clarificări scrise. Numai o
modificare aprobată a limitei exterioare autorizate poate introduce ținta în
sfera de aplicare.

---

## B.4 Conduita operatorilor

B.4.1 Instrucțiunile permanente care guvernează conduita operatorilor sunt
prevăzute în Capitolul 8 al metodologiei și nu sunt reluate aici. Nivelurile de
aprobare a tehnicilor sunt prevăzute în Anexa E, punctul E.2.3.

B.4.2 Criteriile de încetare sunt prevăzute în Capitolul 8, punctul 8.15.
Regulile de angajare pot adăuga criterii specifice unei misiuni; nu trebuie să
elimine niciun criteriu.

---

## B.5 Acțiuni interzise

B.5.1 Acțiunile următoare sunt interzise. Un element marcat **condiționat** poate
fi autorizat numai atunci când Autoritatea responsabilă de sistem își exprimă
consimțământul, Autoritatea de aprobare consemnează acceptarea riscului,
Consilierul juridic confirmă că activitatea este permisă, sunt îndeplinite
condițiile aplicabile ale furnizorilor sau ale părților terțe, iar Regulile de
angajare precizează limitele exacte. Un element marcat **absolut** nu trebuie
autorizat în temeiul prezentei publicații.

| | Acțiune interzisă | Statut | Temei |
|---|---|---|---|
| 1 | Refuzul serviciului, epuizarea resurselor sau testarea disponibilității | Condiționat | Impactul poate fi incontrolabil; politica furnizorului interzice frecvent activitatea |
| 2 | Acțiune distructivă asupra unui sistem activ: ștergere, criptare, corupere sau emularea ransomware prin criptare reală | Absolut | Impact ireversibil sau disproporționat; în schimb, efectul este simulat |
| 3 | Modificarea datelor din mediul de producție, cu excepția unui artefact marcat și reversibil | Condiționat | Risc pentru integritate care se poate menține după încheierea misiunii |
| 4 | Exfiltrarea unor date sensibile reale | Absolut | Nu este necesară pentru demonstrare; generează expunere juridică, privind viața privată și de securitate |
| 5 | Acțiune asupra unui sistem cu funcție relevantă pentru siguranța vieții | Absolut | Vătămare fizică |
| 6 | Exploatarea sistemului unei părți terțe sau al unui furnizor fără consimțământul scris direct al Autorității responsabile de sistem a părții respective | Absolut | Organizația evaluată nu poate conferi autoritatea altei entități |
| 7 | Pătrunderea fizică, eludarea controalelor fizice sau intrarea prin urmarea unei persoane autorizate | Condiționat | Necesită autorizare separată și măsuri prealabile pentru verificarea imediată |
| 8 | Social engineering asupra conturilor personale, dispozitivelor personale sau membrilor de familie | Absolut | În afara competenței organizației de a consimți |
| 9 | Interceptarea comunicațiilor care nu aparțin organizației evaluate | Absolut | În afara autorității verificate și, probabil, supusă unei legislații suplimentare |
| 10 | Obținerea de date de autentificare, acces sau exploatări din surse infracționale | Absolut | Expunere juridică și etică |
| 11 | Mecanisme de persistence care rămân active după închiderea misiunii | Absolut | Risc rezidual necontrolat |
| 12 | Utilizarea unei infrastructuri care nu poate fi dezafectată | Absolut | Cleanup-ul nu poate fi finalizat |
| 13 | Divulgarea informațiilor misiunii în afara distribuției autorizate | Absolut | Confidențialitate și securitate operațională |

---

## B.6 Social engineering

B.6.1 Atunci când activitatea de social engineering este autorizată în temeiul punctului 4.8 din
metodologie, Regulile de angajare trebuie să precizeze suplimentar:

a. **Vectorii permiși.** E-mail, voce, mesagerie, pretext fizic, interacțiune
directă.

b. **Temele de pretext permise și temele interzise.** Următoarele sunt interzise
în mod implicit: disponibilizarea sau încetarea raportului de muncă; salarizarea
și indemnizațiile; aspectele medicale; decesul unei persoane apropiate;
acțiunile disciplinare; autorizarea de securitate; statutul de imigrare; și orice
temă susceptibilă să provoace suferință personală semnificativă.

c. **Populația-țintă**, definită în funcție de grup și dimensiune, nu prin nume.

d. **Persoanele excluse**, inclusiv personalul care se confruntă cu dificultăți
medicale sau personale, personalul aflat în serviciu cu rol critic pentru
siguranță în perioada respectivă și orice persoană nominalizată de Agentul de
încredere.

e. **Limitele de volum și frecvență.**

f. **Gestionarea datelor de autentificare capturate.** Datele de autentificare
trebuie stocate sub formă de hash sau trunchiată, nu trebuie utilizate dincolo de
demonstrarea capturării decât dacă acest lucru este autorizat expres și trebuie
distruse la închidere.

g. **Tratamentul raportării.** O persoană care raportează tentativa a răspuns
corect. Rezultatele sunt raportate sub formă de rate. Rezultatele individuale nu
trebuie raportate.

h. **Oprirea.** Atunci când o campanie produce suferință vizibilă sau perturbări
operaționale disproporționate, activitatea încetează, iar Trusted Agent
este informat.

---

## B.7 Niveluri de capabilitate

B.7.1 Regulile de angajare trebuie să precizeze nivelul capabilității
adversarului emulat. Acesta stabilește importanța care trebuie acordată unei
constatări și împiedică deducerea faptului că orice adversar ar putea obține
același rezultat.

| Nivel | Capabilitate emulată | Caracteristici |
|---|---|---|
| 1 | Infractor oportunist | Instrumente publice, exploatări cunoscute, abordare nediscriminatorie, fără cercetare specifică țintei |
| 2 | Infractor care vizează o anumită țintă | Cercetare specifică țintei, acces cumpărat, capacitate limitată de eludare, motivație financiară |
| 3 | Actor afiliat unui stat sau cu resurse comparabile | Instrumente proprii, răbdare, securitate operațională disciplinată, utilizarea instrumentelor native, prezență prelungită |
| 4 | Sprijinit din interior | Oricare dintre nivelurile de mai sus, cu acces sau cunoștințe din interior la începutul activității |

B.7.2 O constatare accesibilă la nivelul 1 justifică o urgență mai mare decât
aceeași constatare accesibilă numai la nivelul 3, deoarece un număr mai mare de
adversari o pot accesa. Nivelul trebuie precizat atât în Regulile de angajare,
cât și în raport.

---

## B.8 Controlul modificărilor pe durata execuției

B.8.1 Mediile diferă de ipotezele planului. Modificările sunt de așteptat;
modificările neconsemnate nu sunt acceptabile.

B.8.2 Procedura este următoarea.

a. Operatorul sau Red Team Lead identifică cerința și oprește
activitatea la limita autorizată.

b. Red Team Lead transmite Trusted Agent o solicitare
care precizează modificarea cerută, motivul, riscul și alternativa analizată.

c. Trusted Agent aprobă, refuză sau înaintează solicitarea Autorității de
aprobare.

d. Modificările care extind target space-ul, autorizează o acțiune clasificată
drept condiționată sau sporesc capabilitatea ori riscul trebuie aprobate de
Autoritatea de aprobare și de fiecare Autoritate responsabilă de sistem
afectată. Condițiile legale și cele ale furnizorilor și părților terțe aplicabile
trebuie revalidate. O interdicție absolută nu poate fi modificată în cadrul unei
misiuni.

e. Fiecare aprobare, consimțământ și referință a permisiunii externe este
consemnată în Apendicele 9 împreună cu data și ora intrării în vigoare și
autoritatea persoanei care aprobă.

f. Red Team Lead informează toți operatorii înainte ca
modificarea să producă efecte.

B.8.3 O restricție, suspendare sau încetare definitivă comunicată verbal produce
efecte imediat și este consemnată cât mai curând posibil. O modificare care
extinde sfera de aplicare, permisiunea, capabilitatea sau riscul nu produce
efecte până când aprobarea scrisă necesară și orice Scrisoare de autorizare
modificată nu sunt în vigoare. Aprobarea ulterioară activității nu constituie
aprobare.

---

## B.9 Verificarea înainte de semnare

B.9.1 Red Team Lead trebuie să confirme fiecare dintre
elementele următoare înainte de semnare și să atașeze evidența completată la
Regulile de angajare.

| | Verificare |
|---|---|
| 1 | Fiecare secțiune și fiecare apendice obligatoriu sunt prezente și complete |
| 2 | Obiectivele sunt specifice, verificabile și în număr de cel mult trei |
| 3 | Target space-ul autorizat este identificat în mod pozitiv, iar fiecare Autoritate responsabilă de sistem a confirmat proprietatea și consimțământul |
| 4 | Excluderile clarifică limita exterioară autorizată și nu o înlocuiesc |
| 5 | Fiecare contact a fost verificat telefonic în cele douăzeci și patru de ore anterioare |
| 6 | Calea de escaladare din afara programului este definită și a fost testată |
| 7 | Procedura de deconflictare și cuvântul codificat sunt convenite și înțelese de ambele părți |
| 8 | Criteriile de încetare sunt precizate și este stabilit intervalul maxim fără contact |
| 9 | Gestionarea datelor cuprinde accesul, stocarea, păstrarea și distrugerea |
| 10 | Analiza juridică este finalizată și consemnată |
| 11 | Consimțământul direct al părților terțe și permisiunea actuală a furnizorului sunt susținute de dovezi atunci când o sursă, țintă sau dependență le implică |
| 12 | Scrisoarea de autorizare este semnată de Autoritatea responsabilă de sistem, iar riscul operațional este contrasemnat atunci când autoritatea este deținută separat |
| 13 | Fiecare operator a citit Regulile de angajare și a confirmat acest fapt în scris |
| 14 | Clasificarea și distribuția sunt stabilite |
| 15 | Procedura de control al modificărilor și Apendicele 9 sunt instituite |
| 16 | Interdicțiile condiționate și cele absolute sunt diferențiate; nu este autorizată nicio interdicție absolută |

B.9.2 Verificarea 13 nu este o formalitate. Un operator care nu a citit Regulile
de angajare nu le poate respecta, iar neconformitatea rezultată revine
organizației.
