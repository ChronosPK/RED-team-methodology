# ANEXA E — EXECUȚIE ȘI TRADECRAFT

În sprijinul Capitolelor 7 și 8 din Metodologia Red Team. Emisă sub
autoritatea Head of Red Team.

---

## E.1 Sferă de aplicare

E.1.1 Prezenta anexă stabilește standardele obligatorii pentru operatori în
faza 4. Instrucțiunile permanente care guvernează conduita sunt prevăzute în
Capitolul 8 al metodologiei și nu sunt reluate aici.

E.1.2 Aceste standarde produc evidența necesară atunci când activitatea este
examinată ulterior. Întrebarea la care trebuie răspuns în acel moment este ce
anume s-a făcut, la ce dată, sub autoritatea cui și cu ce efect.

---

## E.2 Tradecraft

### E.2.1 Cerințe

E.2.1.1 Următoarele completează instrucțiunile permanente din Capitolul 8,
punctele 8.8-8.14.

| | Cerință | Temei |
|---|---|---|
| 1 | Consemnarea fiecărui eveniment semnificativ în momentul producerii: captarea sesiunii, rezultatele instrumentelor, notele operatorului, capturile de ecran | Evidența reprezintă singura descriere durabilă. Memoria nu constituie dovadă. |
| 2 | Consultarea unui al doilea operator înaintea exploatării, a primei utilizări a unui instrument și a oricărei acțiuni ireversibile | Incidentele grave sunt cauzate, de regulă, de un singur operator care acționează singur sub presiunea timpului |
| 3 | Stabilirea funcțiilor unui instrument înainte de rulare: artefactele sale, semnătura de rețea, modurile de defectare | Un risc neînțeles nu poate fi evaluat, iar un efect neînțeles nu poate fi explicat |
| 4 | Evaluarea mediului după obținerea accesului, înaintea oricărei alte acțiuni | Stabilirea funcției gazdei, a elementelor care depind de aceasta și a mijloacelor care o monitorizează |
| 5 | Verificarea de fiecare dată, pe baza adresei, nu a denumirii, a faptului că ținta se află în spațiul autorizat | Denumirile se schimbă; o denumire partajată poate fi rezolvată către un sistem din afara sferei |
| 6 | Limitarea traficului de Command and Control și pivotarea prin cel mai mic număr necesar de canale de ieșire | Volumul este cel mai fiabil indicator aflat la dispoziția unui element defensiv |
| 7 | Preferarea instrumentelor native și semnate ale sistemului în locul fișierelor binare introduse | Risc mai redus, mai puține artefacte și consecvență cu nivelurile superioare de capabilitate |
| 8 | Consemnarea fiecărei modificări la momentul efectuării | Cleanup-ul depinde de aceasta; reconstituirea ulterioară nu este fiabilă |
| 9 | Realizarea capturii de ecran în momentul descoperirii | Starea care demonstrează o constatare este frecvent tranzitorie |

### E.2.2 Interdicții

| | Interdicție | Temei |
|---|---|---|
| 1 | Introducerea unor instrumente netestate într-un mediu-țintă | Instrumentele netestate produc defecțiuni, callback-uri neașteptate și incompatibilități |
| 2 | Trafic de Command and Control necriptat | Este detectat cu ușurință și expune conținutul operației |
| 3 | Exfiltrarea datelor cu caracter personal, medicale, financiare sau clasificate | Se demonstrează accesul; datele nu sunt extrase |
| 4 | Executarea fișierelor binare din directoare atipice atunci când există o alternativă nativă | Artefacte și zgomot inutile |
| 5 | Păstrarea datelor de autentificare, tokenurilor sau cheilor în note ori rapoarte peste necesarul verificării și, în orice caz, păstrarea lor necriptată | Red Team devine sursa compromiterii |
| 6 | Acțiunea împotriva unei ținte neverificate ca fiind inclusă în sferă | Cauză frecventă a incidentelor |
| 7 | Continuarea activității după îndeplinirea unui criteriu de încetare | Criteriul există deoarece împrejurarea a fost prevăzută |
| 8 | Persistence care continuă după încheierea execuției | Risc rezidual care depășește durata autorizării |
| 9 | Acțiune cu risc ridicat desfășurată de o singură persoană, în afara programului obișnuit, fără informarea Red Team Lead | Asocierea oboselii, izolării și privilegiilor |
| 10 | Discutarea detaliilor misiunii în afara listei persoanelor autorizate | Într-o misiune covert, o conversație auzită întâmplător încheie evaluarea |

### E.2.3 Niveluri de aprobare

E.2.3.1 Nivelul de aprobare este o caracteristică a acțiunii în mediul în cauză,
nu a nivelului ierarhic al operatorului. Un operator experimentat care utilizează
pentru prima dată un instrument într-un anumit mediu se află la nivelul sporit.

| Nivel | Aprobare | Exemple |
|---|---|---|
| Curent | Aprecierea proprie a operatorului | Enumerare pasivă; scanare în limitele de frecvență convenite; citirea fișierelor accesibile |
| Standard | Consultarea unui al doilea operator | Recuperarea datelor de autentificare de pe o gazdă compromisă; deplasarea către o gazdă inclusă în sferă; persistence standard |
| Sporit | Red Team Lead | Prima utilizare a unui instrument în mediu; exploatarea unui serviciu; privilege escalation; crearea conturilor |
| Ridicat | Trusted Agent, imediat înainte de execuție | Infrastructura de identitate, hipervizoare, sisteme de copii de siguranță, tehnologii operaționale; atacuri pe scară largă asupra datelor de autentificare; orice modificare a unui control de securitate |
| Excepțional | Autoritatea de aprobare, în scris | O acțiune clasificată expres drept condiționată în Anexa B și autorizată în Regulile de angajare; niciodată o interdicție absolută |

E.2.3.2 Nivelul de aprobare nu transformă un act ilegal, o interdicție absolută
sau un act din afara target space-ului autorizat într-un act permis. Dacă o acțiune
propusă cu impact ridicat nu are o metodă credibilă de revenire, planul este
modificat sau obiectivul este demonstrat printr-o alternativă mai sigură.

---

## E.3 Evidențe

### E.3.1 Cele trei niveluri

| Nivel | Sursă | Automat | Scop |
|---|---|---|---|
| Jurnalul operatorului | Redactat de operator | Nu | Intenție, raționament, interpretare |
| Evidența sesiunii | Captarea terminalului sau a sesiunii | Da, obligatoriu | Datele introduse și rezultatele returnate |
| Evidența infrastructurii | Cadrul de Command and Control, instrumentele | Da, obligatoriu | Momente, callback-uri, sarcini transmise |

E.3.1.1 Jurnalul operatorului este evidența principală deoarece este singura care
precizează motivul unei acțiuni. Evidența sesiunii stabilește că a fost executată
o comandă. Numai operatorul poate preciza ce a condus la decizie, ce rezultat
era așteptat și cum a fost interpretat rezultatul obținut.

E.3.1.2 Captarea automată la nivelurile 2 și 3 trebuie configurată și verificată
înainte de începerea execuției. Aceasta există pentru ca diligența unui operator
aflat sub presiune să nu constituie singura măsură de protecție.

### E.3.2 Câmpurile jurnalului operatorului

E.3.2.1 Pentru fiecare acțiune sunt consemnate următoarele. Formularul-tip T05.

| | Câmp | Conținut |
|---|---|---|
| 1 | Ora de început, UTC | Începerea acțiunii |
| 2 | Ora de sfârșit, UTC | Finalizarea |
| 3 | Operator | Persoana care desfășoară acțiunea |
| 4 | Adresa-sursă | Adresa de la care a provenit acțiunea |
| 5 | Adresa-destinație | Adresa-țintă |
| 6 | Portul-destinație | Portul țintei |
| 7 | Sistemul-destinație | Numele gazdei sau identificatorul |
| 8 | Adresa și portul de pivotare | Gazda intermediară, atunci când este utilizată |
| 9 | Localizator uniform de resurse | După caz |
| 10 | Instrument | Aplicația sau utilitarul folosit |
| 11 | Comandă | Instrucțiunea executată |
| 12 | Descriere | Intenția acțiunii și justificarea acesteia |
| 13 | Rezultate returnate | Rezultatul, rezumat, cu trimitere la rezultatul integral |
| 14 | Rezultat | Reușit, nereușit, parțial sau împiedicat de un control |
| 15 | Modificare | Orice schimbare adusă sistemului, care alimentează Cleanup and Rollback Register |
| 16 | Referința dovezii | Locul sau identificatorul artefactului |
| 17 | Comentariu | Interpretare, decizii, anomalii |

E.3.2.2 Câmpurile 12 și 15 sunt câmpurile omise cel mai frecvent și cele cu cele
mai importante consecințe. Câmpul 12 transformă o înregistrare într-o descriere
coerentă. Câmpul 15 face posibil cleanup-ul.

### E.3.3 Disciplină

E.3.3.1 Evidențele sunt realizate în momentul acțiunii. Reconstituirea la
sfârșitul zilei este o cauză frecventă a inexactităților din rapoarte.

E.3.3.2 Timpul universal coordonat este utilizat pe fiecare sistem, în fiecare
înregistrare și în fiecare captură de ecran. Înainte de execuție, fiecare sistem
de înregistrare este comparat cu sursa de timp aprobată și este consemnată
abaterea sa. Toleranța este stabilită în planul misiunii. Verificarea este
repetată după revenirea unui sistem din starea de repaus sau suspendare, după o
anomalie a serviciului de timp și ori de câte ori evidențele nu se mai aliniază.
O abatere dincolo de toleranță este corectată atunci când acest lucru este sigur;
intervalul afectat și corecția sunt consemnate, nu normalizate fără evidență.

E.3.3.3 Acțiunile nereușite sunt consemnate. Acestea constituie dovada că un
control a funcționat și se numără printre produsele cele mai utile ale unei
misiuni.

E.3.3.4 Atunci când s-a desfășurat o activitate, aceasta este consemnată. Un
interval neexplicat în evidență pe durata unui incident nu poate fi deosebit de
ascunderea activității.

E.3.3.5 Jurnalele operatorilor sunt corelate cu evidențele infrastructurii și
sesiunilor la sfârșitul fiecărei zile. Neconcordanțele sunt soluționate în
aceeași zi, nu în etapa raportării.

---

## E.4 Dovezi

E.4.1 Dovezile trebuie să fie suficiente pentru stabilirea constatării fără a
spori riscul.

### E.4.2 Elemente colectate

a. Jurnale ale operatorilor și evidențe ale sesiunilor și instrumentelor, cu
marcaje temporale.

b. Capturi de ecran care prezintă fereastra completă, inclusiv o referință
temporală vizibilă și identitatea gazdei.

c. Extrase din cereri și răspunsuri, cu secretele redactate la momentul captării.

d. Identificatori ai alertelor, referințe ale sarcinilor și referințe ale
interogărilor.

e. Identificatorii activelor afectate.

f. Dovada minimă a accesului: un număr de înregistrări, o schemă, un nume de
fișier, un marcaj.

g. O declarație scrisă privind impactul asupra misiunii.

### E.4.3 Elemente necolectate

a. Volume mari de date sensibile de orice tip.

b. Date cu caracter personal în plus față de cele necesare demonstrării
accesului și niciodată mai mult de o singură înregistrare ilustrativă, redactată.

c. Parole, tokenuri, chei private sau cookie-uri de sesiune, în rapoarte sau
note.

d. Înregistrări de producție care nu sunt necesare pentru demonstrare.

e. Orice element interzis prin Regulile de angajare.

### E.4.4 Redactare

E.4.4.1 Redactarea este efectuată la momentul captării, nu la momentul
raportării. Materialul neredactat din depozit constituie un risc activ atât timp
cât există, iar raportul este redactat ulterior de o persoană care poate să nu
cunoască elementele sensibile.

### E.4.5 Date de autentificare capturate

a. Sunt stocate sub formă de hash sau trunchiată atunci când elementul de
autentificare în sine nu este necesar.

b. Un credential funcțional nu este inclus într-un raport, un
apendice sau o evidență a sarcinii.

c. Este utilizat numai în condițiile autorizării, numai pentru misiune și numai
în perioada autorizată.

d. Este distrus la încheierea execuției, iar distrugerea este consemnată.

e. Atunci când un credential acordă acces dincolo de sfera
misiunii, activitatea încetează, iar situația este raportată. Elementul nu
trebuie utilizat.

### E.4.6 Integritate și proveniență

E.4.6.1 Materialele obișnuite Red Team constituie dovezi de asigurare.
Acestea nu sunt descrise drept probe criminalistice sau ca având un lanț formal
de custodie decât dacă au fost menținute controalele din prezentul punct.
Materialul care poate fi necesar unei investigații privind un incident, unei
transmiteri către autoritatea de reglementare, unui litigiu disciplinar sau unui
proces juridic este escaladat imediat către responsabilul dovezilor și gestionat
conform procedurii aplicabile a organizației privind dovezile.

E.4.6.2 La primul punct stabil de colectare sau consolidare, fiecărui artefact
relevant îi este atribuit un identificator unic al dovezii și sunt consemnate:

a. sistemul, sursa și calea sau interogarea originale;

b. persoana și metoda de colectare;

c. data și ora colectării în UTC, inclusiv orice abatere cunoscută a ceasului;

d. algoritmul și valoarea hash, utilizând un hash criptografic aprobat de
organizație;

e. locul original din depozit, clasificarea și restricțiile de acces; și

f. constatarea, acțiunea sau etapa descrierii la care se referă artefactul.

E.4.6.3 Atunci când o captură dintr-un sistem activ nu poate fi supusă calculării
unui hash fără sporirea riscului operațional, motivul este consemnat, iar
hashul artefactului este calculat la primul punct stabil de consolidare.
Originalul nemodificat este păstrat. Decuparea, adnotarea, conversia, redactarea
și alte transformări sunt efectuate asupra unei copii de lucru și consemnate în
raport cu identificatorul dovezii originale.

E.4.6.4 Atunci când este necesar lanțul de custodie, fiecare transfer, accesare,
copie și soluționare este consemnată împreună cu persoana, scopul, data și ora în
UTC, sursa, destinația și verificarea integrității. Jurnalele obișnuite de audit
ale depozitului pot furniza această evidență atunci când sunt protejate și
păstrate pentru perioada necesară.

E.4.6.5 Identificatorii dovezilor, hashurile și referințele depozitului sunt
reconciliate înainte de emiterea raportului și din nou înainte de distrugere. Un
hash nu stabilește că un conținut este adevărat; acesta stabilește dacă elementul
colectat s-a modificat de la calcularea hashului.

---

## E.5 Deconflictare

### E.5.1 Scop

E.5.1.1 Deconflictarea stabilește rapid și corect dacă activitatea observată
provine de la Red Team sau de la un adversar real. Aceasta protejează
împotriva a două deficiențe: consumarea efortului defensiv pentru activitatea
unui exercițiu și respingerea unei intruziuni reale ca activitate de exercițiu.
Cea de a doua este mai gravă.

### E.5.2 Procedură

```{.mermaid filename="annex-e-deconfliction"}
sequenceDiagram
    autonumber
    participant D as Elementul defensiv<br/>sau Trusted Agent
    participant R as Șeful misiunii<br/>Red Team
    participant A as Autoritatea<br/>de aprobare
    D->>R: Cerere de deconflictare<br/>Ora UTC, sursa și ținta<br/>Comportamentul observat
    R->>R: Suspendă activitatea afectată
    R->>R: Verifică evidențele operatorilor,<br/>infrastructurii și sesiunilor
    R-->>D: Decizie în<br/>perioada convenită
    alt Atribuibilă Red Team
        Note over D,R: Încetarea alertei și consemnarea<br/>ca activitate de exercițiu<br/>Calitatea răspunsului se consemnează drept constatare
    else Nu poate fi atribuită
        R->>A: Suspiciune de intruziune reală
        Note over R,A: Suspendarea misiunii<br/>Păstrarea dovezilor<br/>Transferarea evidenței activității<br/>Răspunsul la incidente preia controlul
    end
```

**Figura E-1. Procedura de deconflictare**

### E.5.3 Standarde

E.5.3.1 Unei cereri i se răspunde în perioada stabilită în Regulile de angajare.
Perioada implicită este de treizeci de minute.

E.5.3.2 Stabilirea este definitivă. Nu este permisă stabilirea unei atribuiri
probabile. Atunci când evidențele nu stabilesc atribuirea activității Red Team, se stabilește că activitatea nu îi este atribuibilă și aceasta este
tratată drept intruziune reală până la stabilirea contrariului.

E.5.3.3 Red Team suspendă activitatea în zona afectată pe durata stabilirii.

E.5.3.4 Fiecare cerere și fiecare stabilire este consemnată în formularul-tip
T07, inclusiv cronologia, care devine dovadă privind timpii de răspuns în raport.

E.5.3.5 Decizia de a informa sau nu elementul defensiv revine exclusiv Trusted Agent. Într-o misiune covert, elementul continuă, în mod normal, să
trateze activitatea drept reală.

### E.5.4 Autentificare

E.5.4.1 În Regulile de angajare este convenit un cuvânt codificat, cunoscut de
Red Team Lead, Trusted Agent și Autoritatea de aprobare.
Acesta autentifică o dispoziție de încetare sau o declarație de urgență, astfel
încât o asemenea dispoziție să nu poată fi falsificată, inclusiv de către un
adversar care a consultat aceeași corespondență.

### E.5.5 Descoperirea unei intruziuni reale

E.5.5.1 Se aplică următoarea succesiune.

a. Încetarea întregii activități Red Team.

b. Informarea telefonică a Trusted Agent, utilizând cuvântul codificat.

c. Păstrarea tuturor evidențelor și dovezilor în starea existentă.

d. Transferarea informațiilor cunoscute: ce s-a observat, când, pe ce gazdă și
evidența completă a activității Red Team, astfel încât personalul de răspuns
să o poată diferenția.

e. Nu se investighează, nu se remediază și nu se interacționează în continuare
cu sistemele afectate.

f. Misiunea este suspendată. Reluarea necesită aprobarea Autorității de aprobare.

---

## E.6 Raportarea situației

E.6.1 În fiecare zi de execuție este transmis Trusted Agent un raport
de situație în formularul-tip T06. O zi în care nu a avut loc nicio activitate
este raportată ca atare.

E.6.2 Raportul cuprinde: situația curentă; activitatea din perioada respectivă;
progresul față de fiecare obiectiv; controalele întâlnite, indiferent dacă au
funcționat; orice activitate defensivă observată; riscurile și problemele;
evenimentele de deconflictare; modificările Regulilor de angajare solicitate sau
aprobate; intenția pentru perioada următoare; și orice sprijin necesar din partea
Trusted Agent.

E.6.3 Cerința este absolută deoarece raportul reprezintă confirmarea zilnică a
funcționării canalului de comunicații. O zi în care nu este transmis niciun
raport este tratată drept pierdere a contactului și activează Anexa B, punctul
B.1.3, și criteriul de încetare prevăzut la punctul 8.15.k din metodologie.

---

## E.7 Diagrama atacului

E.7.1 Pe durata execuției este menținută o diagramă a atacului, actualizată cel
puțin zilnic. Aceasta consemnează postura inițială; fiecare gazdă, cont și sistem
accesat, împreună cu orele; calea dintre acestea și tehnica utilizată pentru
fiecare deplasare; privilegiul deținut în fiecare etapă; obiectivele atinse; și
punctele în care un control a împiedicat sau detectat activitatea.

E.7.2 Menținerea diagramei pe durata execuției, în locul reconstituirii sale
ulterioare, produce o diagramă exactă pentru raport și evidențiază omisiunile din
jurnalul operatorului cât timp acestea mai pot fi corectate.

---

## E.8 Securitate operațională

E.8.1 Se aplică următoarele cerințe, în special misiunilor covert.

a. Comunicațiile misiunii rămân în afara infrastructurii monitorizate a
organizației evaluate.

b. Documentele misiunii nu sunt păstrate în depozitele de fișiere, sistemele de
sarcini sau sistemele de e-mail ale organizației evaluate.

c. Aspectele misiunii nu sunt discutate în spații de cazare comune, pe holuri
sau pe platforma de mesagerie a organizației evaluate.

d. Operatorii nu accesează infrastructura misiunii din rețeaua organizației
evaluate.

e. Înregistrările din calendar au titluri neutre.

f. Lista persoanelor autorizate este minimală și consemnată. Fiecare adăugare
este consemnată împreună cu data și funcția care a autorizat-o.

E.8.2 Misiunile covert sunt compromise, de regulă, printr-un document, o
înregistrare în calendar sau o conversație, nu printr-un indicator tehnic.

---

## E.9 Program și oboseală

E.9.1 Execuția în afara programului convenit necesită informarea Agentului de
încredere.

E.9.2 Acțiunile cu risc ridicat nu trebuie desfășurate în ultima oră a unui
schimb prelungit. O eroare cauzată de oboseală pe sisteme privilegiate are cele
mai grave consecințe dintre toate erorile pe care le poate comite un operator.

E.9.3 Operatorii efectuează pauze. Un operator care a urmărit o cale pentru o
perioadă îndelungată nu este persoana potrivită să stabilească dacă o acțiune
este reversibilă.

E.9.4 Red Team Lead răspunde de aplicarea prezentului punct și
trebuie să retragă un operator din activitate atunci când capacitatea sa de
apreciere este afectată.

---
