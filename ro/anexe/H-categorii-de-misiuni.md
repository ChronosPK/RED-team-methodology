# ANEXA H — CATEGORII DE MISIUNI

În sprijinul Capitolului 4 din Metodologia Red Team. Emisă sub autoritatea
Head of Red Team.

Metodologia se aplică integral fiecărei categorii. Prezenta anexă consemnează
numai diferențele.

| Partea | Categorie | Se aplică pentru |
|---|---|---|
| H1 | SL-1 Evaluare internă | Evaluarea sistemelor proprii ale organizației |
| H2 | SL-2 Misiune în baza unui mandat | Evaluarea altei organizații în temeiul unui mandat |
| H3 | SL-3 Exercițiu | Element Red Team în cadrul unui exercițiu structurat |
| H4 | SL-4 Purple Team | Activitate open desfășurată împreună cu elementul defensiv |

---

# PARTEA H1 — EVALUARE INTERNĂ

## H1.1 Caracteristici

| | |
|---|---|
| Client | Comanda proprie a organizației |
| Autoritatea de aprobare | Un ofițer al organizației, din afara lanțului de comandă evaluat |
| În mod obișnuit, covert | Da |
| Temei | Autorizarea internă din partea Autorității responsabile de sistem |
| Valoare principală | Evaluarea propriilor capabilități de detectare și răspuns ale organizației |

## H1.2 Riscul modelului simplificat de autoritate

H1.2.1 Evaluarea internă are cel mai simplu temei juridic: organizația
autorizează evaluarea propriilor sisteme. Nu există nicio parte externă, niciun
acord și nicio problemă privind autoritatea între entități.

H1.2.2 Simplitatea respectivă încurajează scurtarea procesului. Regulile de
angajare sunt omise, Scrisoarea de autorizare este tratată drept inutilă sau
șeful elementului evaluat semnează autorizarea propriei evaluări. Fiecare dintre
aceste situații transformă o misiune simplă într-o sursă de răspundere personală
și într-un rezultat inutilizabil.

H1.2.3 Controalele prevăzute în Anexele B și G se aplică integral evaluării
interne. Nu există o variantă redusă.

## H1.3 Particularități

### H1.3.1 Autoritatea de aprobare

H1.3.1.1 Deficiența internă frecventă constă în situarea Autorității de aprobare
în cadrul lanțului de comandă evaluat.

| Obiectul evaluării | Autoritatea de aprobare competentă |
|---|---|
| Capabilitatea de detectare | Un ofițer superior elementului defensiv sau din afara acestuia. Nu șeful elementului. |
| Infrastructura de tehnologia informației | Ofițerul cu răspundere decizională pentru riscul asupra infrastructurii. Nu administratorul acesteia. |
| Organizația în ansamblu | Comandantul sau ofițerul care deține riscul |

### H1.3.2 Trusted Agent

H1.3.2.1 Trusted Agent trebuie să fie intern, superior și să nu fie membru
al elementului evaluat. Funcțiile adecvate includ, de regulă, șeful structurii de
risc, șeful structurii de conformitate, un adjunct al responsabilului de
securitate care nu răspunde de elementul defensiv sau un director din alt
domeniu.

H1.3.2.2 Atunci când singurul candidat competent din punct de vedere tehnic face
parte din elementul evaluat, misiunea trebuie fie să își reducă sfera astfel
încât candidatul să nu mai fie evaluat, fie să adopte o structură formată din
două persoane: un decident superior care deține autoritatea de suspendare și un
consilier tehnic care nu primește detaliile misiunii.

### H1.3.3 Compartimentare

H1.3.3.1 Lista persoanelor autorizate să cunoască misiunea este consemnată.
Fiecare adăugare este consemnată împreună cu data și funcția care a autorizat-o.

| Funcție | Autorizată să cunoască | Temei |
|---|---|---|
| Autoritatea de aprobare | Da | Acceptă riscul |
| Trusted Agent | Da | Controlează misiunea |
| Consilierul juridic | Da | Oferă consultanță privind autorizarea |
| Șeful structurii de securitate | Numai atunci când nu face parte din capabilitatea evaluată | |
| Șeful elementului defensiv | Nu, într-o misiune covert | Elementul constituie obiectul evaluării |
| Responsabilii sistemelor excluse | Parțial: sunt informați numai că se desfășoară o evaluare și că sistemul lor este exclus | |
| Biroul de servicii | Nu | Răspunsul său face parte din evaluare |

### H1.3.4 Cunoștințe interne

H1.3.4.1 O structură Red Team internă deține cunoștințe indisponibile unui adversar
extern: arhitectura, locul datelor de autentificare, sistemele nedocumentate și
identitatea țintelor adecvate pentru social engineering.

H1.3.4.2 Planul misiunii trebuie să consemneze cunoștințele provenite din
privilegii interne, nu din recunoaștere. Cunoștințele privilegiate pe care
adversarul emulat nu le-ar putea obține în mod plauzibil nu trebuie utilizate,
cu excepția cazului în care scenariul emulează expres un insider la
nivelul de capabilitate 4.

H1.3.4.3 Atunci când sunt utilizate cunoștințe privilegiate pentru reducerea
timpului, raportul trebuie să precizeze acest fapt, deoarece modifică
semnificația rezultatului. Raportul consemnează activitatea suplimentară de
recunoaștere de care ar fi avut nevoie un adversar extern, iar intervalul de
detectare este interpretat în raport cu această valoare.

### H1.3.5 Acces existent

H1.3.5.1 Membrii Red Team dețin frecvent sau au deținut acces legitim la
sisteme interne.

a. Membrii Red Team nu trebuie să dețină acces privilegiat permanent la
sistemele de producție.

b. Conturile legitime proprii ale operatorului nu trebuie utilizate pe durata
unei misiuni.

c. Accesul pentru misiune este separat, creat în acest scop, consemnat în
Regulile de angajare și eliminat în faza de cleanup.

d. Atunci când un operator a administrat anterior un sistem inclus în sferă,
operatorul respectiv este exclus din partea de misiune care privește sistemul.

## H1.4 Progresie

H1.4.1 Pentru o capabilitate care începe evaluarea internă este recomandată
următoarea succesiune.

| Misiune | Sferă de aplicare | Postură inițială | Covert | Execuție |
|---|---|---|---|---|
| Prima | Un serviciu, un obiectiv | Assumed breach, stație de lucru a utilizatorului | Parțial: Trusted Agent și un membru superior al elementului defensiv sunt informați | 5 zile |
| A doua | Același serviciu, cu un obiectiv suplimentar | Assumed breach, stație de lucru a utilizatorului | Da | 10 zile |
| A treia | Două servicii, axată pe identitate | Assumed breach, stație de lucru a utilizatorului | Da | 10 zile |
| A patra | Sferă completă, cu excluderi | Posturi externă și de premisă a compromiterii, în paralel | Da | 15 zile |

H1.4.2 Prima misiune este numai parțial covert, prin concepție. Desfășurarea
primei misiuni în regim complet covert înseamnă că procedura de deconflictare
este exercitată pentru prima dată chiar în situația în care este importantă.
Procedura este verificată în timp ce este observată.

## H1.5 Criterii suplimentare de încetare

H1.5.1 În plus față de cele prevăzute în Capitolul 8, punctul 8.15.

a. Activitatea riscă să afecteze un angajament operațional real sau o sarcină a
misiunii.

b. Un element intern escaladează către o parte externă.

c. Activitatea misiunii este discutată într-un cadru care ar compromite
confidențialitatea acesteia.

d. Un membru al personalului suferă o stare de disconfort semnificativă ca
urmare a activității misiunii.

e. Independența Trusted Agent este compromisă, inclusiv prin
redistribuirea acestuia în elementul evaluat.

## H1.6 Gestionarea relației interne

H1.6.1 Dificultatea recurentă a evaluării interne este de natură instituțională,
nu juridică. Red Team continuă să lucreze alături de elementul pe care îl
evaluează.

| Practică | Temei |
|---|---|
| Analiza ulterioară cu elementul defensiv înaintea informării comenzii | Elementul nu trebuie să afle despre o constatare dintr-o informare adresată comenzii |
| Desfășurarea analizei tehnice ulterioare fără prezența comenzii | Conform Anexei F, punctul F1.6.1 |
| Atribuirea deschisă a reușitelor; transmiterea confidențială a constatărilor | Controalele care au funcționat pot fi raportate pe scară largă; deficiențele sunt transmise responsabilului |
| Admiterea elementului defensiv la activitatea Purple Team | Consacră Red Team ca resursă, nu ca structură de inspecție |
| O misiune nu este caracterizată drept succes Red Team | În niciun cadru, nici măcar informal |
| Furnizarea evidenței activității la încheierea execuției | Înaintea raportului. Elementul își identifică propriile lacune, ceea ce reprezintă o formă mai eficace de instruire. |

---

# PARTEA H2 — MISIUNE ÎN BAZA UNUI MANDAT

> Această categorie comportă cel mai ridicat risc juridic și instituțional și
> tolerează cel mai puțin erorile de procedură. Aceasta nu trebuie întreprinsă
> până când procedurile nu sunt aplicate în practică, iar cadrul juridic prevăzut
> în Anexa G nu este confirmat.

## H2.1 Distincția de reglementare

H2.1.1 În evaluarea internă, organizația care autorizează evaluarea deține
sistemele evaluate. Într-o misiune desfășurată în baza unui mandat, este posibil
ca aceasta să nu le dețină, iar autoritatea de a consimți aparține deținătorului
sistemelor, nu organismului care emite ordinul de misiune.

```{.mermaid filename="annex-h-mandate"}
flowchart TB
    M["Mandatul de a desfășura evaluarea<br/>«Evaluați organizația X»<br/>Din partea: autorității care emite ordinul"]
    S["Autoritatea asupra sistemelor<br/>«Accesul la aceste sisteme este permis»<br/>Din partea: organismului care le deține sau operează"]
    R{"Ambele sunt necesare"}
    W["Niciuna nu stabilește singură autoritatea<br/>juridică deplină pentru acces"]
    M --> R
    S --> R
    R --> W
```

**Figura H-1. Mandatul și autoritatea responsabilă de sistem**

H2.1.2 Un ordin de misiune emis într-un lanț de comandă nu autorizează, prin el
însuși, accesarea sistemelor altei organizații, cu excepția cazului în care
instrumentul care instituie mandatul conferă expres această competență. Situația
aplicabilă este stabilită în scris înainte de finalizarea fazei 1. A se vedea
Anexa G, punctul G.2.4.

H2.1.3 Atunci când organizația evaluată este un organism civil, exercitarea
autorității asupra sa este sensibilă din punct de vedere juridic și
instituțional, chiar dacă există un mandat. Instrumentul trebuie identificat
prin referință și confirmat de Consilierul juridic. Consimțământul organismului
civil ar trebui obținut ori de câte ori mandatul permite, chiar și atunci când
nu este necesar. Consimțământul obținut produce cooperare; consimțământul impus o
elimină pentru fiecare misiune ulterioară.

## H2.2 Modele de autoritate

H2.2.1 Modelul aplicabil este stabilit și consemnat în Regulile de angajare.

| Model | Temei | Cerințe |
|---|---|---|
| A. Competență legală | Legea conferă autoritatea de a evalua | Referința legală, confirmarea juridică a aplicabilității și orice notificare impusă de lege |
| B. Consimțământ | Organizația acceptă să fie evaluată | Un acord semnat și o Scrisoare de autorizare din partea propriei autorități competente |
| C. Dispunere cu consimțământ | O autoritate superioară dispune evaluarea, iar organizația consimte | Atât instrumentul de dispunere, cât și Scrisoarea de autorizare a organizației |
| D. Dispunere fără consimțământ | O autoritate superioară dispune evaluarea în pofida obiecției organizației | Autoritate juridică expresă, identificată prin referință, confirmată în scris de consilierul juridic, cu riscul acceptat în scris de autoritatea care dispune |

H2.2.2 Modelul D nu trebuie acceptat numai pe baza unei asigurări declarative.

## H2.3 Cerințe suplimentare în faza 1

H2.3.1 În plus față de punctul de decizie G1 prevăzut în Anexa C, punctul C.5.3.

1. Modelul de autoritate este stabilit și consemnat.
2. Instrumentul juridic sau acordul este identificat prin referință și analizat
   de consilierul juridic.
3. Autoritatea semnatarului asupra sistemelor specifice este verificată, nu
   prezumată.
4. Un acord scris atribuie răspunderea și consemnează orice garanție de
   despăgubire solicitată de consilierul juridic.
5. Obligațiile de nedivulgare sunt asumate în ambele sensuri.
6. Trusted Agent al organizației evaluate este desemnat, nominalizat și
   informat.
7. Responsabilii sistemelor organizației evaluate au confirmat lista de
   excluderi.
8. Organizația evaluată obține consimțământul părților terțe și al furnizorilor
   de găzduire.
9. Relația dintre operator și persoana împuternicită de operator pentru datele
   cu caracter personal este stabilită și consemnată.
10. Implicațiile transfrontaliere sunt evaluate.
11. Orice obligație de notificare sectorială este îndeplinită.
12. Deconflictarea cu orice organism național sau sectorial de răspuns este
    convenită.
13. Clasificarea și gestionarea sunt convenite cu organizația evaluată.
14. Proprietatea asupra raportului, distribuția acestuia și drepturile de
    divulgare ulterioară sunt convenite în scris.
15. Este convenit un mecanism pentru soluționarea divergențelor.

H2.3.2 Cerința 14 este omisă în mod frecvent și devine în mod frecvent
litigioasă. Aceasta este stabilită înainte de execuție: cine deține raportul,
cine îl poate consulta, dacă autoritatea care acordă mandatul îl primește, dacă
organizația evaluată îl poate redacta și dacă poate fi transmis unei autorități
de reglementare.

## H2.4 Funcții în cele două organizații

| Funcție | Se află în | Funcție îndeplinită |
|---|---|---|
| Reprezentantul autorității care acordă mandatul | Organizația care emite ordinul | Se asigură că evaluarea este desfășurată în conformitate cu mandatul. Se află în contact direct cu Trusted Agent al organizației evaluate. |
| Autoritatea de aprobare a organizației evaluate | Organizația evaluată | Acceptă riscul operațional asupra sistemelor sale. Semnează Scrisoarea de autorizare. |
| Trusted Agent | Organizația evaluată | Controlează misiunea. Deține autoritatea de suspendare. |
| Red Team Lead | Organizația care evaluează | Conform Anexei A |
| Autoritatea de aprobare a organizației care evaluează | Organizația care evaluează | Autorizează propriul personal să desfășoare activitatea |

H2.4.1 Există două Autorități de aprobare, care autorizează aspecte diferite. Una
autorizează accesul la sisteme; cealaltă autorizează personalul să desfășoare
activitatea.

H2.4.2 Autoritatea de suspendare revine Trusted Agent al organizației
evaluate. Aceasta nu revine nici organizației care evaluează, nici autorității
care acordă mandatul. Organizația care suportă consecința operațională deține
autoritatea de a opri activitatea.

## H2.5 Deconflictarea între organizații

H2.5.1 Următoarele cerințe se aplică în plus față de Anexa E, punctul E.5.

a. Red Team Lead răspunde la linia de deconflictare pe întreaga
perioadă de execuție.

b. Trusted Agent al organizației evaluate deține numărul și cuvântul
codificat.

c. Perioada de răspuns este mai scurtă decât pentru evaluarea internă. Valoarea
implicită este de cincisprezece minute.

d. Calea de escaladare a organizației evaluate către orice organism extern este
consemnată în Regulile de angajare, iar Agentul său de încredere se angajează să
efectueze deconflictarea înainte de utilizarea căii respective.

e. Adresele-sursă sunt furnizate Trusted Agent înainte de execuție.

f. Există o procedură pentru situația în care organizația evaluată escaladează
extern înainte de deconflictare.

H2.5.2 Trusted Agent trebuie să i se precizeze expres că escaladarea
către un organism extern fără deconflictare determină încetarea misiunii și poate
iniția o procedură privind un incident real în altă organizație.

## H2.6 Particularități ale execuției

| Aspect | Particularitate |
|---|---|
| Verificarea sferei | Fiecare țintă este verificată în raport cu spațiul autorizat înainte de contact. Nu sunt disponibile cunoștințe instituționale pentru o verificare suplimentară. |
| Ambiguitate | Ambiguitatea oprește activitatea și este transmisă Trusted Agent. Aceasta nu este soluționată de operator. |
| Date | Datele aparțin organizației evaluate. Reducerea la minimum constituie o obligație contractuală. |
| Stocarea dovezilor | Conform acordului, care poate impune stocarea într-o anumită jurisdicție |
| Personal | Acționează numai personalul nominalizat în Scrisoarea de autorizare. Adăugarea unei persoane necesită modificarea scrisorii. |
| Comunicare | Întreaga comunicare formală se desfășoară prin Trusted Agent, niciodată direct cu personalul tehnic al organizației evaluate. |

## H2.7 Particularități ale raportării

| Aspect | Particularitate |
|---|---|
| Proprietate | Conform acordului. În mod implicit, organizația evaluată deține raportul, iar autoritatea care acordă mandatul primește un rezumat. |
| Două rapoarte | Sunt necesare frecvent: un raport complet pentru organizația evaluată și un rezumat pentru autoritatea care acordă mandatul. Conținutul rezumatului este convenit înainte de execuție. |
| Comparație | Atunci când mai multe organizații sunt evaluate în baza unui singur mandat, organizațiile nu trebuie să poată fi identificate în raportarea comparativă, cu excepția cazului în care mandatul impune expres acest lucru. Compararea organizațiilor elimină definitiv cooperarea. |
| Remediere | Este urmărită, dar nu asumată. Frecvența raportării către autoritatea care acordă mandatul este convenită. |
| Retestare | Este inclusă în acord, cu finanțare și calendar proprii. |

## H2.8 Aspecte invocate de organizația evaluată

H2.8.1 Următoarele întrebări sunt anticipate și primesc răspuns.

| Întrebare | Răspuns pregătit |
|---|---|
| Ce califică echipa care efectuează evaluarea? | Acreditările, metodologia și evidența misiunilor anterioare |
| Ce urmează dacă este deteriorat un element? | Criteriile de încetare, situația privind răspunderea și metoda de revenire |
| Cine va vedea raportul? | Distribuția convenită, în scris |
| Va fi utilizat împotriva organizației? | Scopul mandatului și caracterul nepunitiv, în scris din partea autorității care acordă mandatul |
| Ce date vor fi accesate? | Regulile privind reducerea la minimum, dovezile interzise, păstrarea și distrugerea |
| Poate fi oprită evaluarea? | Da: unilateral, în orice moment, fără justificare |
| Ce primește organizația? | Constatările, detectările, retestarea și propria evidență a activității |

H2.8.2 Ultimul rând are consecințe mai mari decât pare. O organizație care
consideră misiunea o activitate de extragere i se opune. O organizație care o
consideră un serviciu cooperează. Evidența activității și reluarea în regim de
tipul Purple Team sunt elementele care constituie serviciul.

---

# PARTEA H3 — EXERCIȚIU

## H3.1 Distincția față de o misiune

H3.1.1 Activitatea Red Team într-un exercițiu seamănă cu o misiune, dar nu
este o misiune.

| | Misiune | Exercițiu |
|---|---|---|
| Scop | Măsurarea apărării și identificarea riscului | Instruirea audienței în raport cu obiectivele de instruire declarate |
| Mediu | Sisteme active | Un poligon cibernetic |
| Succes | Obiective realizate sau apărarea a rezistat | Audiența a învățat |
| Adversar | Emulat pentru realism | Conform scenariului, pentru instruire |
| Ritm | Săptămâni | Comprimat în ore sau zile |
| Risc principal | Impact asupra producției | Colapsul exercițiului |

H3.1.2 Într-o misiune, Red Team optimizează realismul. Într-un exercițiu,
aceasta optimizează obiectivele de instruire. Atunci când înfrângerea audienței
în prima oră o împiedică să exerseze competența pentru care a participat, Red Team a eșuat, indiferent de rezultatul tehnic.

## H3.2 Structura echipelor

H3.2.1 Exercițiile utilizează o structură mai amplă decât misiunile. Green Team
și Yellow Team sunt omise cel mai frecvent, iar absența lor reprezintă motivul
obișnuit pentru care un exercițiu improvizat degenerează în activități de
mentenanță a poligonului.

```{.mermaid filename="annex-h-exercise-teams"}
flowchart TB
    WHITE["WHITE TEAM — Controlul exercițiului<br/>Scenariu, injects, punctaj, autoritate de adaptare"]
    RED["RED TEAM<br/>Execută scenariul"]
    BLUE["BLUE TEAM<br/>Audiența instruită"]
    GREEN["GREEN TEAM<br/>Infrastructura poligonului"]
    YELLOW["YELLOW TEAM<br/>Situational awareness<br/>și colectarea datelor"]
    WHITE --> RED
    WHITE --> BLUE
    WHITE --> GREEN
    WHITE --> YELLOW
    RED -->|acționează împotriva| BLUE
    GREEN -.->|susține poligonul pentru| RED
    GREEN -.->|susține poligonul pentru| BLUE
    YELLOW -.->|consemnează| RED
    YELLOW -.->|consemnează| BLUE
```

**Figura H-2. Structura echipelor exercițiului**

H3.2.2 Pentru orice exercițiu mai amplu decât un eveniment intern de o singură
zi, Green Team și Yellow Team trebuie încadrate separat de Red Team și
White Team. Atribuirea lor ca sarcină secundară garantează că vor fi abandonate în
momentul în care devin necesare.

H3.2.3 Pentru mai mult de șase operatori, Red Team este împărțită în funcție
de attack surface-ul: dispozitive ale utilizatorilor finali, aplicații și rețea,
cu grupări suplimentare pentru sistemele de control sau identitate atunci când
scenariul o impune. Fiecare grupare are un șef. Sub șase operatori, echipa nu
este împărțită.

## H3.3 Elementul de comandă

H3.3.1 Exercițiile mature instruiesc elementul de comandă, nu numai operatorii,
pe principiul că, într-o operație reală, constrângerea este de regulă viteza și
autoritatea deciziei, nu capabilitatea tehnică.

| Nivel | Instruiește | Decizii |
|---|---|---|
| Politic | Autoritatea de a acționa, pragurile de escaladare, comunicarea externă | Dacă se acționează; ce poate fi divulgat |
| Strategic | Selectarea obiectivelor, alocarea resurselor, acceptarea riscului | Ce ținte; ce nivel de efect; când se oprește activitatea |
| Tactic | Conducerea operatorilor, selectarea tehnicii, deconflictarea | Modul în care este obținut efectul |

H3.3.2 Operatorii raportează în sus și primesc dispoziții în jos într-un interval
realist, inclusiv cu o întârziere realistă. Întârzierea face parte din instruire.
Un exercițiu în care operatorii acționează imediat nu exersează elementul de
comandă.

H3.3.3 Consilierii juridici participă în calitate de jucători. Într-o operație
reală, constrângerea juridică intervine pe durata operației, nu înaintea acesteia.

## H3.4 Proiectare

H3.4.1 Proiectarea pornește de la obiectivele de instruire.

a. Formularea obiectivelor de instruire drept comportamente observabile.

b. Stabilirea acțiunilor pe care audiența trebuie să le întreprindă pentru a
demonstra fiecare obiectiv.

c. Stabilirea elementelor pe care Red Team trebuie să le prezinte pentru a
crea posibilitatea respectivă.

d. Proiectarea attack path-ului pentru a prezenta elementele respective la momentul
potrivit.

e. Construirea inject-urilor care garantează prezentarea, indiferent de
progresul Red Team.

H3.4.2 Etapa e diferențiază un exercițiu proiectat de unul improvizat. Atunci
când un obiectiv de instruire depinde de observarea unui anumit comportament de
către audiență, comportamentul respectiv este garantat printr-un inject și nu
este lăsat să depindă de atingerea sa de către Red Team.

## H3.5 Ritm

| Principiu | Aplicare |
|---|---|
| Reușită timpurie | Audiența trebuie să reușească o acțiune în primele ore |
| Escaladare deliberată | Dificultatea crește conform calendarului Control Team al exercițiului, nu în funcție de posibilitatea Red Team |
| Capabilitate în rezervă | Capabilitatea completă nu este utilizată de la început |
| Fără rezultat decisiv | Compromiterea totală timpurie încheie exercițiul și instruirea odată cu acesta |
| Vizibilitate deliberată | Red Team este mai ușor de detectat decât un adversar real; audiența participă pentru a exersa detectarea |
| Măsură pentru blocaj | Atunci când audiența rămâne în urmă, Red Team încetinește, repetă mai vizibil o tehnică sau Control Team al exercițiului introduce un inject |

## H3.6 Inject-uri

| Tip | Scop |
|---|---|
| Tehnică | Garantarea prezentării unui comportament |
| Informațională | Simularea unei contribuții externe, precum o raportare de informații sau un raport de la un partener |
| Presiune | Exersarea procesului decizional, precum o solicitare din partea mass-mediei sau cererea comenzii pentru o actualizare |
| Escaladare | Creșterea mizei, precum producerea unui efect asupra unui al doilea serviciu |
| Restabilire | Permiterea exersării obiectivului de restabilire |

## H3.7 Punctaj și analiză post-acțiune

H3.7.1 Punctajul se acordă în raport cu obiectivele de instruire, nu cu
realizările Red Team. Modelul de punctaj este publicat audienței înainte de
exercițiu. Sunt măsurate comportamentele: detectarea, raportarea, calitatea
deciziei, comunicarea, limitarea. Punctajul nu trebuie să permită atribuirea
eșecului unui element unei persoane.

H3.7.2 Analiza post-acțiune este produsul exercițiului.

| Etapă | Moment | Conținut |
|---|---|---|
| Analiză imediată | În aceeași zi | Primele impresii, cât timp amintirile sunt actuale |
| Prezentarea Red Team | În aceeași zi sau în ziua următoare | Red Team prezintă attack path-ul complet, cu orele aferente |
| Reconciliere | Ziua următoare | Acțiunile Red Team comparate cu observațiile Blue Team, etapă cu etapă |
| Analiză formală | În termen de două săptămâni | În raport cu obiectivele de instruire, cu acțiuni |

H3.7.3 Prezentarea Red Team este sesiunea cu cea mai mare valoare. Audiența
observă ce se întâmpla în timp ce ea formula ipoteze. Sesiunea este pregătită cu
o cronologie, o diagramă și răspunsul privind ceea ce ar fi detectat fiecare
etapă.

## H3.8 Exerciții desfășurate intern

H3.8.1 Exercițiul intern minim viabil cuprinde: o zi; doi operatori; un membru
al White Team care deține scenariul, inject-urile și autoritatea de a
opri; un membru Green Team care nu este membru Red Team; un membru
Yellow Team sau colectare automatizată cu un verificator nominalizat;
elementul defensiv care lucrează pe o replică a poligonului; cel mult trei
obiective de instruire; cinci-opt inject-uri redactate în prealabil; și
o analiză de două ore în aceeași zi.

H3.8.2 Un exercițiu nu trebuie desfășurat asupra sistemelor de producție. Un
exercițiu comprimă timpul, escaladează conform scenariului și provoacă deliberat
răspunsul. Această combinație aplicată sistemelor active produce un incident.

## H3.9 Participarea la exerciții externe

| Aspect | Cerință |
|---|---|
| Reguli | Regulile directorului exercițiului prevalează asupra prezentelor reguli. Acestea sunt citite; sunt diferite. |
| Evidențe | Standardele prezentei metodologii privind consemnarea și conduita continuă să se aplice activității proprii a echipei |
| Clasificare | Materialul exercițiului este, de regulă, restricționat. Se confirmă ceea ce poate fi păstrat. |
| Captarea învățămintelor | Este desemnată o funcție pentru consemnarea tehnicilor, instrumentelor și lecțiilor. Acesta este principalul beneficiu al investiției. |
| Acțiuni ulterioare | Lecțiile sunt prelucrate în formularul-tip T11, iar anexele și biblioteca de scenarii sunt modificate |

H3.9.1 Participarea este tratată ca investiție în instruire, cu un produs
obligatoriu reprezentat de un pachet scris de lecții, nu ca simplă prezență la
un eveniment.

---

# PARTEA H4 — Purple Team

## H4.1 Temeiul priorității

H4.1.1 Activitatea Purple Team este categoria cu care începe o
capabilitate nouă.

| Temei | |
|---|---|
| Produs | Un exercițiu de două zile produce detectări implementate. O misiune covert produce un raport după opt săptămâni. |
| Risc | Elementul defensiv este informat. Deconflictarea este simplă. Nicio activitate nu este confundată cu un atac real. |
| Relație | Elementul defensiv percepe Red Team drept resursă. Fiecare misiune covert ulterioară depinde de acest fapt. |
| Autoevaluare | Deficiențele propriilor instrumente, evidențe și tradecraft Red Team sunt evidențiate fără o audiență. |
| Efect | Acoperirea crește în mod măsurabil. |

## H4.2 Modele de operare

| Model | Descriere | Adoptat |
|---|---|---|
| Exercițiu | Sesiuni colaborative programate | La început |
| Operaționalizat | Validare continuă, parțial automatizată, sub forma unei echipe virtuale | După crearea unei biblioteci de tehnici și stabilizarea detectărilor |
| Dedicat | Funcție încadrată permanent | Numai în organizațiile mari |

## H4.3 Funcții

| Funcție | Atribuție |
|---|---|
| Șeful exercițiului | Conduce ziua, menține ritmul, consemnează rezultatele |
| Operatorul | Execută tehnica și explică efectul acesteia |
| Analistul | Caută telemetria în timp real |
| Inginerul de detectare | Construiește și implementează regula în timpul exercițiului |
| Structura de threat intelligence | Selectează tehnicile și furnizează contextul adversarului |
| Persoana care consemnează | Consemnează rezultatele pe măsura producerii |

H4.3.1 Toți sunt prezenți simultan în același loc sau în același apel.

## H4.4 Desfășurare

H4.4.1 Pentru fiecare tehnică este urmată succesiunea următoare.

```{.mermaid filename="annex-h-purple-cycle"}
flowchart LR
    subgraph PLAN["Pregătire"]
        direction TB
        P1["Selectarea adversarului"] --> P2["Selectarea a 5-10 tehnici"] --> P3["Confirmarea telemetriei"] --> P4["Pregătirea laboratorului"]
    end
    subgraph EXEC["Pentru fiecare tehnică"]
        direction TB
        E1["1 Explicarea tehnicii"] --> E2["2 Analistul anticipează ce va fi observat"]
        E2 --> E3["3 Executarea"] --> E4["4 Căutarea, limitată în timp"]
        E4 --> E5["5 Compararea și clasificarea lacunei"] --> E6["6 Construirea regulii"]
        E6 --> E7["7 Reexecutarea"] --> E8["8 Validarea și consemnarea"]
        E8 -.->|tehnica următoare| E1
    end
    subgraph CLOSE["Închidere"]
        direction TB
        C1["Consolidarea rezultatelor"] --> C2["Implementarea detectărilor"] --> C3["Consemnarea acoperirii"] --> C4["Programarea revalidării"]
    end
    PLAN --> EXEC --> CLOSE
```

**Figura H-3. Succesiunea activității Purple Team**

H4.4.2 Etapa 2 nu trebuie omisă. Diferența dintre ceea ce elementul defensiv se
așteaptă să observe și ceea ce observă reprezintă partea instructivă a
exercițiului.

H4.4.3 Etapele 6-8 sunt cele care constituie un exercițiu Purple Team, nu o demonstrație. Un exercițiu care se încheie la etapa 5 a produs o
listă de lacune.

## H4.5 Evidența rezultatelor

H4.5.1 Persoana desemnată menține următoarea evidență pe durata exercițiului.
Aceasta este produsul.

| | Tehnică | Procedură | Anticipare | A existat telemetrie | Identificată prin căutare | A existat alertă | Categoria lacunei | Regulă construită | Validată |
|---|---|---|---|---|---|---|---|---|---|

H4.5.2 Categoriile lacunelor sunt cele prevăzute în Anexa F, punctul F1.3.2.

## H4.6 Planificare

| Aspect | Standard |
|---|---|
| Frecvență | Lunar. Consecvența are o valoare mai mare decât amploarea. |
| Durată | Una-două zile |
| Tehnici | Cinci-zece. Un număr mai mic nu justifică efortul de coordonare; un număr mai mare reduce calitatea. |
| Selectare | Dintr-un Threat Profile. O tactică pentru fiecare exercițiu este eficace. |
| Pregătire | Fiecare tehnică este testată în prealabil în laborator |
| Mediu | Producție sau un mediu reprezentativ pentru aceasta. Un laborator care nu corespunde producției măsoară laboratorul. |
| Autorizare | Reguli de angajare permanente pentru activitatea Purple Team, cu o notă privind sfera pentru fiecare exercițiu. Scrisoarea de autorizare rămâne obligatorie. |
| Produs | Tabel de rezultate, detectări implementate, acoperire actualizată, lista tehnicilor pentru exercițiul următor |

## H4.7 Succesiunea anuală

H4.7.1 Pentru primul an este recomandată următoarea succesiune.

| Luna | Tactică | Temei |
|---|---|---|
| 1 | Execution | Fundamentală; stabilește dacă există telemetrie pentru endpoint-uri |
| 2 | Persistence | Valoare ridicată pentru detectare, risc redus, ușor de anulat |
| 3 | Credential Access | Tactica cu cea mai mare valoare în majoritatea infrastructurilor |
| 4 | Discovery | Puțin costisitoare de detectat și frecvent omisă complet |
| 5 | Lateral Movement | Tactica pentru care majoritatea infrastructurilor au cea mai redusă vizibilitate |
| 6 | Stealth și Defense Impairment | Stabilește dacă detectările existente rezistă contactului și dacă intervenția asupra lor este observată |
| 7 | Command and Control | Validează telemetria de rețea |
| 8 | Collection și Exfiltration | Se corelează cu preocupările privind protecția datelor |
| 9 | Privilege Escalation | |
| 10 | Initial Access | Inclusiv social engineering |
| 11 | Impact | Comportamente distructive, emulate în siguranță |
| 12 | Revalidare | Reluarea lunilor 1-4 și confirmarea faptului că detectările continuă să funcționeze |

H4.7.2 Luna 12 are consecințe mai mari decât pare. Detectările se degradează prin
modificarea platformelor, ajustare și migrare. O detectare care nu a fost
niciodată revalidată este o ipoteză.

## H4.8 Reluare în regim Purple Team

H4.8.1 Exercițiul Purple Team cu cea mai mare valoare este cel care
urmează unei misiuni covert, desfășurat în faza 7.

a. Se preiau tehnicile care nu au fost detectate în cadrul misiunii.

b. Acestea sunt reluate în regim open împreună cu structura de inginerie a
detectării.

c. Detectările sunt construite în raport cu procedura utilizată, nu cu o
descriere generală a tehnicii.

d. Se validează.

e. Se consemnează în lecțiile misiunii.

H4.8.2 Reluarea în regim Purple Team închide intervalul dintre
identificarea unei lacune și corectarea acesteia. Este bugetată ca parte a
fiecărei misiuni. O misiune fără această activitate este realizată numai pe
jumătate.

## H4.9 Limitări

H4.9.1 Următoarele sunt precizate în fiecare raport privind activitatea Purple Team, deoarece rezultatele acesteia sunt frecvent supraevaluate.

a. Activitatea Purple Team nu stabilește dacă elementul defensiv
detectează un atac neanunțat. Elementul a cunoscut ce urma să se producă și când.

b. Aceasta nu evaluează răspunsul. Nicio activitate nu a fost limitată,
escaladată sau tratată în afara programului.

c. Aceasta nu evaluează succesiunea completă a atacului. Tehnicile au fost
executate izolat sau în lanțuri scurte, cu cooperarea mediului.

d. Aceasta nu evaluează procesul decizional. Nicio persoană nu a trebuit să
decidă dacă deconectează un serviciu de producție.

H4.9.2 Activitatea Purple Team produce detectări. Misiunile Red Team stabilesc dacă sistemul în ansamblu funcționează. Ambele sunt necesare,
iar activitatea Purple Team se desfășoară prima. Un program care
desfășoară numai activitate Purple Team va deține reguli de
detectare bine construite, fără să cunoască dacă acestea determină acțiuni.

---
