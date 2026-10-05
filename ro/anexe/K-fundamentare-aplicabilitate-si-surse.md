# ANEXA K — FUNDAMENTARE, APLICABILITATE ȘI SURSE

Emisă sub autoritatea Head of Red Team.

Prezenta anexă consemnează fundamentarea metodologiei, limitele preluării cerințelor
din cadre externe și sursele de autoritate utilizate. Aceasta permite justificarea fiecărei
măsuri de control prin scopul și proveniența sa, nu prin preferință sau uzanță.

Baza de surse a fost revizuită la 3 august 2026. Simpla includere a unei surse în listă nu
îi conferă caracter juridic obligatoriu pentru o misiune.

---

## K.1 Aplicabilitate și ierarhie

K.1.1 Aplicabilitatea se stabilește pentru organizația, jurisdicția, sectorul și misiunea
în cauză, potrivit anexei G. În afara domeniului lor juridic de aplicare, cadrele destinate
sectorului financiar sunt utilizate ca modele de referință mature; acestea nu trebuie
prezentate drept obligatorii atunci când nu sunt aplicabile.

| Familie de surse | Statut în prezenta metodologie | Utilizare |
|---|---|---|
| Legislația, reglementările, contractele, mandatele și condițiile furnizorilor aplicabile | Obligatorii atunci când sunt aplicabile | Autoritate juridică, viață privată, obligații sectoriale, permisiunea autorității responsabile de sistem și a furnizorului |
| TIBER-EU 2025 | Cadru voluntar, independent de tipul entității și de sector, cu excepția cazului în care este adoptat de o autoritate; totodată, orientări operaționale pentru TLPT în temeiul DORA | Control Team, threat-led lifecycle, guvernanța riscului aferent mediului de producție, activitatea Purple Team și remedierea |
| DORA și normele sale delegate privind TLPT | Obligatorii pentru entitățile financiare și testele care intră în domeniul lor juridic de aplicare; model de referință în celelalte situații | Aplicabilitate normativă, garanții pentru testerii interni, livrabile formale și recunoaștere reciprocă |
| CBEST 2024 | Cadru de supraveghere pentru instituțiile financiare participante din Regatul Unit; model de referință în celelalte situații | Golden thread, evaluarea riscului operațional, includerea terților în domeniul de aplicare, detectare și răspuns, read-across |
| G7 Fundamental Elements for TLPT | Bază de politici fără caracter obligatoriu pentru sectorul financiar | Proporționalitate, responsabilitățile părților interesate, asigurarea furnizorilor, încheiere și învățare tematică anonimizată |
| Publicații speciale NIST | Orientări de autoritate, fără putere de lege dacă nu sunt adoptate de o autoritate sau prin contract | Ciclul de viață al testării, planificarea evaluării, calitatea măsurării, răspunsul la incidente și gestionarea probelor |
| Standardele CREST CTI, TISA și TLPT | Reper de acreditare și competență | Capabilitatea furnizorilor și a personalului, asigurarea și cerințele de management |
| MITRE ATT&CK și Attack Flow | Bază de cunoștințe și model de date deschise | Vocabular comportamental versionat, trasabilitate și reprezentarea attack path-ului |
| Orientările NCSC, CISA și OWASP | Orientări de autoritate pentru implementare | Proiectarea exercițiilor, măsurarea rezultatelor, măsuri de protecție pentru Red Team și acoperirea testării tehnice |
| ISO/IEC 27037 | Orientări internaționale privind gestionarea probelor | Identificare, colectare, achiziție și conservare, atunci când este necesară gestionarea probatorie |
| Publicații ale practicienilor și publicații privind exercițiile | Materiale suport fără caracter normativ | Utilitate practică, tradecraft și proiectarea exercițiilor, sub rezerva verificării în raport cu sursele de autoritate |

K.1.2 În cazul unui conflict între surse, ordinea de prioritate este următoarea:

1. legislația aplicabilă și dispozițiile legale;
2. cerințele autorității de reglementare sau ale autorității competente;
3. contractul, mandatul, politica de clasificare și condițiile furnizorului;
4. Regulile de angajare și Scrisoarea de autorizare semnate;
5. prezenta metodologie și anexele sale;
6. orientările externe și materialele practicienilor.

K.1.3 Un element inferior în ierarhie nu poate extinde autoritatea acordată de un element
superior. Se aplică cea mai restrictivă condiție relevantă, cu excepția cazului în care
organismul îndreptățit să o modifice procedează legal și în scris.

K.1.4 Ediția, jurisdicția și data revizuirii sunt relevante. Referințele la ATT&CK, la
politicile furnizorilor de servicii cloud, la standardele tehnice de reglementare și la
orientările operaționale sunt versionate în planul misiunii. O pagină web fără data
accesării consemnată nu constituie o dovadă adecvată a permisiunii unui furnizor.

---

## K.2 Măsuri de control derivate din cadre de autoritate

### K.2.1 TIBER-EU 2025

K.2.1.1 TIBER-EU este cadrul european pentru testarea Red Team controlată și
bazată pe threat intelligence a funcțiilor critice sau importante și a
sistemelor de producție active, persoanelor, proceselor și tehnologiilor care le susțin.
Deși a fost elaborat în contextul sectorului financiar, cadrul din 2025 permite în mod
expres utilizarea de către entități de orice tip sau dimensiune, atât din sectorul financiar,
cât și din alte sectoare. Acesta utilizează termenii **Control Team** și **Control Team
Lead**. Termenul anterior **White Team** este păstrat numai la citarea unei ediții mai vechi
sau a unui cadru extern care îl utilizează încă.

```{.mermaid filename="annex-k-tiber-lifecycle"}
flowchart LR
    A["Pregătire<br/>inițiere, definirea domeniului, achiziție"] -->
    B["Testare<br/>threat intelligence, plan,<br/>testare activă controlată"] -->
    C["Încheiere<br/>raportul Blue Team, activitate Purple Team,<br/>remediere, sinteză și atestare"]
```

**Figura K-1. Ciclul de viață TIBER-EU 2025**

K.2.1.2 Cadrul separă Control Team și Control Team Lead ale entității, Blue Team, furnizorii de threat intelligence și de servicii Red Team, precum și echipa cibernetică TIBER și coordonatorul testării din partea autorității.
Entitatea păstrează responsabilitatea integrală asupra procesului și răspunderea pentru risc.

K.2.1.3 Următoarele măsuri de control sunt adaptate în prezenta metodologie:

a. domeniul de aplicare pornește de la funcțiile critice sau importante și urmărește
sistemele, persoanele, procesele și terții care le susțin;

b. scenariile decurg din produse specifice de threat intelligence și păstrează un
traseu verificabil de la dovezile privind amenințarea la obiectiv, scenariu, acțiune și măsură;

c. testarea în mediul de producție activ este guvernată ca risc operațional, prin măsuri
explicite de siguranță, deconflictare, încetare, restabilire și escaladare;

d. componenta defensivă raportează ceea ce a observat înainte de dezvăluirea completă;

e. activitatea Purple Team este planificată ca activitate de încheiere, nu
lăsată la voia întâmplării;

f. remedierea, retestarea și asumarea responsabilității la nivel superior încheie ciclul
de viață; și

g. livrabilele formale și atestarea sunt întocmite numai atunci când schema aplicabilă le
impune.

K.2.1.4 Durata testării active și modelul de furnizare prevăzute de TIBER sunt specifice
regimului și nu reprezintă praguri minime universale pentru această capabilitate internă.
Garanțiile sale pentru testerii interni constituie însă un reper solid pentru activitățile
cu nivel ridicat de asigurare: un șef calificat, cel puțin doi testeri suplimentari,
cunoașterea recentă a organizației, instruire continuă, personal de rezervă, măsuri de
control al conflictelor și evaluare externă independentă. Anexa A adaptează aceste măsuri
de control la dimensiunea unei echipe mici.

### K.2.2 Threat-Led Penetration Testing în temeiul DORA

K.2.2.1 Regulamentul (UE) 2022/2554 și Regulamentul delegat (UE) 2025/1190 reglementează
Threat-Led Penetration Testing pentru entitățile financiare care intră în
domeniul lor de aplicare. Aplicabilitatea, frecvența, dispozițiile autorității competente și
livrabilele formale sunt determinări juridice, nu presupuneri formulate de Red Team.

K.2.2.2 Pentru testerii interni, regulamentul delegat stabilește garanții privind politica,
capabilitățile și resursele, poziționarea organizațională și conflictele și impune un
coordonator al testării sprijinit de cel puțin doi testeri suplimentari. Acesta abordează,
de asemenea, cunoașterea entității și instruirea. DORA impune utilizarea testerilor externi
la fiecare al treilea test atunci când sunt utilizați testeri interni și obligă anumite
instituții să utilizeze exclusiv testeri externi. Aceste cerințe exacte se aplică atunci când
DORA este aplicabil și sunt tratate, în celelalte situații, ca reper de maturitate, fără a
fi prezentate drept obligații legale.

K.2.2.3 Prezenta metodologie nu pretinde certificare DORA, recunoaștere reciprocă sau
atestare de reglementare. O misiune formală TIBER sau DORA utilizează formularele și procesul
actuale ale autorității competente, în completarea prezentei metodologii.

### K.2.3 G7 Fundamental Elements for TLPT

K.2.3.1 Grupul de experți în domeniul cibernetic al G7 oferă o bază fără caracter
obligatoriu pentru autorități, entități financiare și furnizori. Acesta tratează TLPT drept
o componentă a unui ansamblu mai larg de instrumente de evaluare și impune proporționalitate
în raport cu importanța, dimensiunea, complexitatea, gradul de sofisticare și riscul entității.

K.2.3.2 Cele șase elemente ale sale sunt: definirea domeniului și gestionarea riscului;
alocarea resurselor; threat intelligence; testarea de penetrare; încheierea
și remedierea; și date tematice anonimizate. Prezenta metodologie adaptează direct primele
cinci elemente. Raportarea tematică este utilizată numai atunci când măsurile de control
privind autoritatea, clasificarea, confidențialitatea și protecția datelor împiedică
identificarea unei misiuni, entități sau persoane.

### K.2.4 CBEST 2024

K.2.4.1 CBEST structurează o evaluare în etapele de inițiere, threat intelligence,
testare de penetrare și încheiere. Contribuția sa principală este **golden thread**:
serviciile operaționale critice conduc la scenarii de amenințare,
sisteme țintă, acțiuni Red Team, observații defensive, constatări și remediere.

K.2.4.2 Sunt adoptate următoarele elemente:

a. testul este el însuși gestionat ca risc operațional;

b. produsele de threat intelligence sunt evaluate independent;

c. terții semnificativi și dependențele de concentrare sunt avute în vedere la definirea
domeniului de aplicare;

d. componenta defensivă efectuează o evaluare a detectării și răspunsului;

e. remedierea include read-across la servicii și sisteme comparabile; și

f. încheierea demonstrează nu doar că o sarcină a fost finalizată, ci și că reducerea
riscului a fost verificată.

### K.2.5 Orientări NIST

K.2.5.1 NIST SP 800-115 definește testarea ca proces gestionat de planificare, descoperire,
atac și raportare. Planificarea nu implică nicio interacțiune cu ținta. Descoperirea și
atacul se pot repeta iterativ, însă numai în limitele aprobate.

```{.mermaid filename="annex-k-nist-lifecycle"}
flowchart LR
    P["Planificare"] --> D["Descoperire"] --> A["Atac"] --> R["Raportare"]
    A -. "informații noi autorizate" .-> D
```

**Figura K-2. Procesul de evaluare NIST SP 800-115**

K.2.5.2 Volumele 1 și 2 ale NIST SP 800-55 fundamentează anexa F: fiecare măsură are un
scop decizional, o definiție, o sursă, un responsabil, o metodă de colectare și analiză,
validare, limitări și un ciclu de revizuire. Se raportează calitatea datelor, incertitudinea,
dimensiunea eșantionului și comparabilitatea.

K.2.5.3 NIST SP 800-61 Revizia 3 și SP 800-53 Revizia 5 susțin integrarea cu răspunsul la
incidente, măsurile de control pentru evaluare și guvernanța. Activitatea Red Team nu
înlocuiește niciodată autoritatea de răspuns la incidente atunci când este suspectat un
eveniment real.

K.2.5.4 NIST SP 800-86 fundamentează măsurile proporționale de conservare din anexa E. Un
document obișnuit de asigurare nu este denumit probă criminalistică dacă nu au fost
menținute gestionarea și proveniența necesare.

### K.2.6 MITRE ATT&CK și Attack Flow

K.2.6.1 ATT&CK este vocabularul comportamental comun; acesta nu este un plan de testare,
un model de severitate, o dovadă a relevanței amenințării sau un numitor care trebuie
epuizat.

K.2.6.2 Fiecare profil, plan și raport consemnează versiunea ATT&CK utilizată. La data
prezentei publicații, versiunea majoră curentă este ATT&CK v19, publicată la 28 aprilie 2026.
Această versiune a modificat modelul tactic Enterprise, inclusiv prin separarea
comportamentelor grupate anterior în Defense Evasion în Stealth și Defense Impairment.
Rezultatele istorice își păstrează corespondența inițială și nu sunt remapate fără mențiune.

K.2.6.3 Planurile MITRE de adversary emulation și resursele Center for Threat-Informed
Defense pot fundamenta procedurile, însă selecția este determinată de datele actuale privind
amenințarea și de mediul local. O microemulare este un lanț scurt, cu riscuri controlate,
ales pentru o singură decizie, nu o pretinsă emulare integrală a actorului la scară redusă.

K.2.6.4 Attack Flow 4.0 poate fi utilizat atunci când ramificațiile, dependențele și
rezultatele măsurilor de control nu pot fi reprezentate clar într-o listă ATT&CK liniară.
Identificatorii fluxului conectează Threat Profile, planul, evidența operatorului,
dovezile și raportul.

### K.2.7 CREST

K.2.7.1 Materialele CREST privind competența și acreditarea sunt utilizate ca reper pentru
threat intelligence, asigurare, execuție tehnică și managementul Red Team. Acestea nu conferă autoritate juridică și nu înlocuiesc evaluarea experienței
relevante a unei persoane.

K.2.7.2 În 2026, CREST a introdus terminologia de acreditare Cyber Threat Intelligence
(CTI), Threat Intelligence for Simulated Attack (TISA) și Threat-Led Penetration Testing
(TLPT). Referințele la terminologia STAR anterioară sunt istorice, cu excepția cazului în
care schema în baza căreia este dispusă misiunea o păstrează în mod expres. Criteriile de
achiziție și de personal utilizează schema curentă impusă de client sau de autoritatea de
reglementare la data misiunii.

K.2.7.3 Măsurile de control adaptate aici sunt conducerea calificată, metodologia
documentată, evaluarea calității independentă de execuție, remedierea practică, sprijinul
pentru retestare, gestionarea informațiilor protejate, căile de soluționare a reclamațiilor
și de escaladare, precum și corelarea competenței cu tehnologia și activitatea efectiv incluse
în domeniul de aplicare.

### K.2.8 NCSC, CISA și OWASP

K.2.8.1 Orientările National Cyber Security Centre (NCSC) din Regatul Unit susțin
proiectarea exercițiilor în funcție de rezultate și testarea de penetrare proporțională.
Orientările sale din 2026 privind indicatorii operațiunilor de securitate se regăsesc în
anexa F: numărul tichetelor, alertelor, regulilor și volumul jurnalelor reprezintă date
privind mijloacele și pot crea stimulente dăunătoare. Întrebarea orientată spre rezultat
este dacă activitatea semnificativă a fost detectată, examinată, limitată și dacă
restabilirea s-a realizat la timp.

K.2.8.2 Evaluările Red Team ale Cybersecurity and Infrastructure Security
Agency (CISA) din Statele Unite consolidează măsurile stricte bazate pe necesitatea de a
cunoaște, separarea de operațiunile defensive, deconflictarea, protejarea datelor colectate
și transformarea observațiilor în măsuri de atenuare.

K.2.8.3 Open Worldwide Application Security Project (OWASP) Web Security Testing Guide
constituie baza tehnică atunci când este autorizată testarea web sau a aplicațiilor. Acesta
fundamentează cazurile de testare; nu extinde domeniul de aplicare și nu transformă o misiune
Red Team într-o evaluare exhaustivă a aplicațiilor.

### K.2.9 Viața privată, probele și condițiile furnizorilor de servicii

K.2.9.1 Principiile GDPR și ale European Data Protection Board (EDPB) fundamentează
reducerea la minimum a datelor, limitarea legată de scop, limitarea stocării, securitatea și
responsabilitatea atunci când sunt prelucrate date cu caracter personal. Rolurile de
operator și de persoană împuternicită de operator, temeiul juridic, informările sau
restricțiile legale, transferurile internaționale, gestionarea incidentelor și orice evaluare
a impactului asupra protecției datelor sunt stabilite împreună cu funcțiile responsabile de
protecția datelor și de asistența juridică.

K.2.9.2 ISO/IEC 27037 fundamentează identificarea, colectarea, achiziția și conservarea.
Măsurile de control probatorii mai stricte sunt activate atunci când utilizarea preconizată
le impune.

K.2.9.3 AWS, Microsoft Azure și Google Cloud publică politici de testare cu diferențe
semnificative. Permisiunea poate depinde de serviciu, infrastructura-sursă, tehnică și
termenul de notificare. În consecință, condițiile curente ale furnizorului sunt verificate și
dovedite pentru fiecare serviciu înainte de poarta G1 și din nou înainte de poarta G3;
nicio prevedere a metodologiei nu este tratată ca permisiune permanentă din partea
furnizorului.

### K.2.10 Surse privind exercițiile și surse ale practicienilor

K.2.10.1 Purple Team Exercise Framework v4 fundamentează colaborarea planificată și
operaționalizată prevăzută în anexa H. Publicațiile NATO Cooperative Cyber Defence Centre
of Excellence (CCDCOE) fundamentează proiectarea exercițiilor cibernetice complexe atunci
când modelul respectiv este adecvat organizației. Niciuna dintre acestea nu este aplicabilă
automat misiunilor interne obișnuite.

K.2.10.2 Lucrările practicienilor susțin tradecraft-ul și utilitatea practică numai
după verificarea practicii propuse în raport cu autoritatea aplicabilă, orientările oficiale
actuale și măsurile de siguranță ale prezentei metodologii.

---

## K.3 Decizii privind adoptarea

| Practică | Sursă | Poziție în prezenta metodologie | Condiții de aplicare |
|---|---|---|---|
| Definirea domeniului pornind de la funcțiile critice | TIBER, CBEST | Regulă implicită | Se urmăresc dependențele către sisteme, persoane, procese și terți |
| Selectarea scenariilor pe baza threat intelligence | TIBER, DORA, CBEST | Obligatorie pentru misiunile Red Team | Se consemnează dovezile privind amenințarea, nivelul de încredere, actualitatea și limitările |
| Evaluarea independentă a Threat Profile-ului | TIBER, CBEST | Obligatorie | Pentru o echipă internă mică, poate fi efectuată de un coleg calificat |
| Control Team separată de execuție și apărare | TIBER, CBEST | Obligatorie pentru activitățile desfășurate fără informarea apărării | Într-o misiune cu domeniu strict delimitat, un Trusted Agent poate constitui întreaga Control Team |
| Testarea în mediul de producție activ | TIBER, DORA | Condiționată | Numai cu justificarea explicită a siguranței, autoritate, permisiunea furnizorului și măsuri de restabilire |
| Trasabilitate prin golden thread | CBEST | Obligatorie | De la amenințare la obiectiv, acțiune, dovadă, observație, constatare și remediere |
| Activitate Purple Team la încheiere | TIBER 2025 | Regulă implicită | Obligatorie atunci când schema aplicabilă o impune; în celelalte situații, omiterea necesită justificare |
| Garanții pentru testarea internă | DORA, TIBER | Reper adaptat proporțional | Condițiile normative exacte se aplică numai atunci când sunt aplicabile din punct de vedere juridic |
| Corespondență ATT&CK versionată | MITRE | Obligatorie atunci când este utilizat ATT&CK | Acoperirea nu se deduce exclusiv din numărul tehnicilor |
| Reprezentare Attack Flow | Center for Threat-Informed Defense | Opțională | Se utilizează atunci când un traseu ramificat sporește valoarea decizională |
| Specificații ale măsurilor și limite privind calitatea | NIST SP 800-55, NCSC | Obligatorii | Niciun obiectiv sau nicio tendință fără o definiție justificabilă și o bază de comparație |
| Registrul politicilor și permisiunilor furnizorilor | Politicile furnizorilor | Obligatoriu pentru serviciile găzduite sau gestionate | Se verifică cu puțin timp înainte de execuție, deoarece condițiile se modifică |
| Identificatorii, proveniența și integritatea dovezilor | NIST, ISO/IEC 27037 | Cerință proporțională | Lanțul formal de custodie este declarat numai atunci când a fost menținut în fapt |
| Raport formal sau atestare pentru autoritatea de reglementare | TIBER, DORA, CBEST | Specifică schemei | Atestarea internă a cleanup-ului, prevăzută de prezenta metodologie, nu reprezintă atestare de reglementare |
| Durata minimă a testării active | TIBER | Specifică schemei | Nu este preluată în activitățile interne obișnuite |
| Validarea externă a capabilității interne | DORA, CREST | Obligatorie la frecvența DORA, acolo unde este aplicabil; planificată la nivelul de maturitate „gestionat” în celelalte situații | Se utilizează și ori de câte ori conflictele nu pot fi controlate intern |
| Retestare și corectare verificată | CBEST, CREST, NIST | Obligatorii | Încheierea necesită dovezi, nu statutul unei sarcini |
| Emularea unei campanii complete | Resurse MITRE | Opțiune avansată | Se utilizează numai atunci când decizia și maturitatea apărării justifică resursele și expunerea |

---

## K.4 Întrebări pentru dispunerea misiunii

K.4.1 O misiune nu este aprobată până când părțile cărora le revine răspunderea nu pot
răspunde în scris la întrebările de mai jos.

| Nr. | Întrebare | Aspect supus controlului |
|---|---|---|
| 1 | Ce decizie va fundamenta rezultatul? | Valoare și obiectiv |
| 2 | Ce funcție critică sau risc semnificativ este evaluat? | Relevanță operațională |
| 3 | Ce poate merge rău și cine răspunde pentru fiecare consecință? | Risc operațional |
| 4 | Activitatea poate întrerupe un serviciu critic sau poate afecta restabilirea? | Siguranță și reziliență |
| 5 | A cui permisiune este necesară pentru sistem, terți și furnizori? | Autoritate |
| 6 | Ce date cu caracter personal, confidențiale sau clasificate pot fi întâlnite? | Risc privind datele |
| 7 | Ce se întâmplă dacă este descoperită o intruziune reală sau un eveniment care trebuie raportat? | Obligații privind incidentele și notificarea |
| 8 | Cine poate cunoaște, opri, modifica, verifica și primi raportul? | Drepturi de decizie și secretizare |
| 9 | Cum va fi corelată o afirmație cu dovezi de încredere? | Asigurare |
| 10 | Ce constituie detectare, limitare, restabilire și îmbunătățire reușită? | Validitatea măsurării |
| 11 | Cum vor fi eliminate fiecare modificare, credențial, canal și activ de infrastructură? | Restabilire |
| 12 | Cum vor fi finanțate corectarea, read-across și retestarea? | Reducerea durabilă a riscului |

K.4.2 O capabilitate aptă să răspundă acestor întrebări poate fi avută în vedere pentru
aprobare. O echipă care nu poate răspunde trebuie să restrângă linia de servicii, să mute
activitatea într-un laborator sau într-un exercițiu open Purple Team, să
obțină sprijin extern ori să amâne activitatea.

K.4.3 Întrebările adresate clientului încep în formularul T01. Răspunsurile specifice
misiunii sunt apoi preluate în T02, T03 și T04.

---

## K.5 Concentrarea efortului

### K.5.1 Domenii cu randament maxim

K.5.1.1 În etapa inițială, capacitatea este concentrată acolo unde poate produce schimbări
defensive verificate. Ordinea se adaptează profilului de risc al organizației.

| Domeniu prioritar | Importanță | Prima acțiune practică |
|---|---|---|
| Identitate, privilegii și autentificare | Majoritatea traseelor semnificative traversează măsuri de control al identității | Se stabilește la ce poate ajunge un cont obișnuit compromis și cum sunt guvernate privilegiile |
| Detectare, examinare și limitare | Prevenirea, singură, nu arată dacă o acțiune care trece de măsurile preventive este gestionată | Se reia un lanț scurt, relevant pentru amenințare, și se reconciliază fiecare etapă de control |
| Remediere și retestare | O recomandare neverificată nu reprezintă reducerea riscului | Se retestează constatările critice și cu nivel ridicat și se consemnează transparent excepțiile |
| Calitatea telemetriei pentru endpoint-uri și identități | Regulile nu pot compensa datele-sursă absente sau inutilizabile | Se demonstrează dacă evenimentele necesare există, sunt disponibile la timp și conțin identificatori stabili |
| Administrarea restabilirii și a copiilor de siguranță | Accesul adversarului la sistemele de restabilire schimbă consecințele asupra misiunii | Se evaluează un traseu autorizat de la administrare la infrastructura de restabilire |
| Control planes pentru servicii cloud și găzduite | Acțiunile semnificative pot ocoli măsurile de control ale rețelei | Se validează o acțiune asupra identității sau a control plane-ului în raport cu evidențele furnizorului și ale apărării |
| E-mail și colaborare | Initial access și raportarea umană rapidă rămân semnificative | Se măsoară livrarea, raportarea și timpul până la prima raportare, fără identificarea persoanelor |
| Segmentarea implementată efectiv | Limitele documentate diferă frecvent de măsurile de control efective | Se demonstrează sau se infirmă o limită semnificativă și monitorizarea acesteia |
| Accesul terților și al identităților tehnice | Traseele persistente de încredere sunt adesea inventariate deficitar | Se inventariază identitățile furnizorilor și sarcinilor de lucru; testarea se efectuează numai cu permisiune directă |
| Practica deciziei și escaladării | O alertă corectă tehnic poate eșua în plan operațional | Se exersează escaladarea unei situații cu consecințe majore, de la limitare până la restabilire |

### K.5.2 Activități amânate la constituirea capabilității

| Activitate amânată | Motiv | Înlocuitor |
|---|---|---|
| Dezvoltarea unei capabilități proprii de Command and Control | Cost ridicat de mentenanță și asigurare | Capabilitate consacrată, aprobată, izolată și testată |
| Campanii ample desfășurate fără informarea apărării | Expunerea depășește capacitatea de învățare a programului aflat la început | Micro-emulation open sau cu postură assumed breach |
| Cercetarea vulnerabilităților necunoscute | Rareori reprezintă prima întrebare privind măsurile de control | Emularea comportamentelor demonstrate și a attack path-urilor cunoscute |
| Cel mai avansat actor, în mod implicit | Poate produce un eșec previzibil fără o diferențiere utilă | Testarea unei capabilități cu o treaptă peste nivelul demonstrat al apărării |
| Pătrunderea fizică înainte de validarea guvernanței | Consecințe juridice și pentru siguranța persoanelor de nivel ridicat | Exercițiu de simulare, exercițiu open sau sprijin extern de specialitate |
| Eludarea exclusiv ca scop | Împiedică stabilirea funcționării telemetriei și proceselor de bază | Eludarea se adaugă numai atunci când Threat Profile și obiectivul o impun |
| Enumerarea exhaustivă | Măsoară amploarea testării, nu consecința asupra misiunii | Urmărirea unui traseu delimitat până la un obiectiv operațional |

---

## K.6 Registrul controlat al surselor

### K.6.1 Reguli privind controlul surselor

K.6.1.1 Registrul de mai jos identifică baza publică de autoritate. Head of Red Team
răspunde de revizuirea surselor operaționale; consilierul juridic răspunde de stabilirea
legislației și reglementărilor aplicabile. Copiile păstrate local consemnează adresa URL a
sursei, titlul, ediția, data publicării, data preluării și suma criptografică de control.

K.6.1.2 Revizuirea are loc cel puțin o dată la șase luni, înaintea unei misiuni reglementate
și atunci când o autoritate, un furnizor sau un organism de standardizare anunță o modificare
relevantă. Condițiile furnizorului privind testarea sunt reverificate suplimentar în termenul
stabilit la anexa G, punctul G.2.5.

K.6.1.3 Modificarea unei surse nu schimbă în mod tacit o misiune autorizată. Efectul este
evaluat, registrul surselor și măsurile de control afectate sunt modificate, iar Regulile de
angajare active se schimbă prin procedura scrisă de modificare prevăzută în cuprinsul lor.

### K.6.2 Surse oficiale și de autoritate

| Sursa și baza curentă la data emiterii | Utilizare | Element declanșator al revizuirii |
|---|---|---|
| [ECB TIBER-EU Framework 2025](https://www.ecb.europa.eu/pub/pdf/other/ecb.tiber_eu_framework_2025~b32eff9a10.en.pdf) și [TIBER-EU portal](https://www.ecb.europa.eu/paym/cyber-resilience/tiber-eu/html/index.en.html) | Ciclul de viață bazat pe amenințări, Control Team, activitatea Purple Team, remediere | Actualizarea cadrului sau a orientărilor BCE |
| [TIBER Control Team Guidance 2025](https://www.ecb.europa.eu/pub/pdf/annex/ecb.tiber_control_team_2025.en.pdf), [Red Team Test Plan Guidance 2025](https://www.ecb.europa.eu/pub/pdf/annex/ecb.tiber_red_team_test_plan_guidance_2025.en.pdf), [Blue Team Test Report Guidance 2025](https://www.ecb.europa.eu/pub/pdf/annex/ecb.tiber_blue_team_test_report_2025.en.pdf) și [Attestation Guidance 2025](https://www.ecb.europa.eu/pub/pdf/annex/ecb.tiber_attestation_guidance_2025.en.pdf) | Roluri, plan, încheiere și livrabilele schemei | Actualizarea orientărilor suport ale BCE |
| [Regulation (EU) 2022/2554, DORA](https://eur-lex.europa.eu/eli/reg/2022/2554/oj/eng) și [Delegated Regulation (EU) 2025/1190](https://eur-lex.europa.eu/eli/reg_del/2025/1190/oj/eng) | Aplicabilitate pentru sectorul financiar și garanții pentru testerii interni | Modificare, rectificare sau standard tehnic nou în EUR-Lex |
| [Bank of England CBEST Implementation Guide 2024](https://www.bankofengland.co.uk/financial-stability/operational-resilience-of-the-financial-sector/cbest-threat-intelligence-led-assessments-implementation-guide) | Golden thread, risc operațional, detectare și răspuns, read-across | Actualizarea ghidului Bank of England |
| [G7 Fundamental Elements for Threat-Led Penetration Testing](https://www.gov.uk/government/publications/g7-fundamental-elements-for-threat-led-penetration-testing) | Proiectare TLPT proporțională, asigurarea furnizorilor, încheiere și învățare tematică | Actualizarea de către G7 Cyber Expert Group |
| [NIST SP 800-115](https://csrc.nist.gov/pubs/sp/800/115/final) | Ciclul de viață și planificarea evaluării | Revizuire sau retragere |
| [NIST SP 800-55 Volume 1](https://csrc.nist.gov/pubs/sp/800/55/v1/final) și [Volume 2](https://csrc.nist.gov/pubs/sp/800/55/v2/final) | Programe de măsurare, specificații, calitatea datelor și analiză | Revizuire sau erată |
| [NIST SP 800-61 Revision 3](https://csrc.nist.gov/pubs/sp/800/61/r3/final), [SP 800-53 Revision 5](https://csrc.nist.gov/pubs/sp/800/53/r5/upd1/final) și [SP 800-86](https://csrc.nist.gov/pubs/sp/800/86/final) | Integrarea cu gestionarea incidentelor, măsuri de control pentru evaluare și gestionarea probelor | Revizuire sau retragere |
| [MITRE ATT&CK updates](https://attack.mitre.org/resources/updates/) și [adversary emulation plans](https://attack.mitre.org/resources/adversary-emulation-plans/) | Corespondență comportamentală versionată și date de intrare pentru emulare | Versiune ATT&CK |
| [Attack Flow 4.0](https://center-for-threat-informed-defense.github.io/attack-flow/) | Model ramificat al attack path-ului și identificatori stabili ai fluxului | Versiune nouă a specificației |
| [NCSC SOC metrics guidance](https://www.ncsc.gov.uk/blogs/could-your-choice-of-metrics-be-harming-your-soc), [penetration-testing guidance](https://www.ncsc.gov.uk/guidance/penetration-testing) și [exercise guidance](https://www.ncsc.gov.uk/guidance/effective-steps-to-cyber-exercise-creation) | Măsurarea rezultatelor, testare proporțională și proiectarea exercițiilor | Actualizare NCSC |
| [CREST 2026 CTI, TISA and TLPT scheme notice](https://www.crest-approved.org/applications-now-open-for-crest-cti-tisa-and-tlpt-accreditations/), [financial-services TLPT guidance](https://www.crest-approved.org/threat-led-penetration-testing-guidance-for-financial-services/) și [CREST Certified Red Team Manager syllabus v2.1](https://www.crest-approved.org/wp-content/uploads/2025/05/CREST-Certified-Red-Team-Manager-Technical-Syllabus-v2.1.pdf) | Asigurarea furnizorilor, competență și managementul Red Team | Modificarea schemei sau a programei |
| [CISA Red Team Assessment advisory](https://www.cisa.gov/news-events/cybersecurity-advisories/aa23-059a) | Măsuri bazate pe necesitatea de a cunoaște, deconflictare și orientare spre atenuare | Orientări CISA înlocuitoare |
| [OWASP Web Security Testing Guide](https://owasp.org/www-project-web-security-testing-guide/) | Proiectarea testării web și a aplicațiilor autorizate | Versiune stabilă a ghidului |
| [ISO/IEC 27037:2012](https://www.iso.org/standard/44381.html) | Identificarea, colectarea, achiziția și conservarea probelor digitale | Revizuire ISO sau rezultatul revizuirii sistematice |
| [GDPR consolidated text](https://eur-lex.europa.eu/eli/reg/2016/679/oj/eng) și [European Data Protection Board basic principles](https://www.edpb.europa.eu/topics/key-gdpr-concepts/basic-principles_en) | Guvernanța datelor cu caracter personal și responsabilitate | Modificare legislativă sau modificare semnificativă rezultată din jurisprudența Curții de Justiție a Uniunii Europene ori din documentele EDPB |
| [AWS penetration-testing policy](https://aws.amazon.com/security/penetration-testing/), [Microsoft Cloud penetration-testing rules](https://learn.microsoft.com/en-us/azure/security/fundamentals/pen-testing) și [Google Cloud testing guidance](https://support.google.com/cloud/answer/6262505?hl=en) | Permisiuni și interdicții specifice furnizorului | Înaintea fiecărei misiuni afectate |

### K.6.3 Surse suport fără caracter normativ

| Sursă | Utilizare permisă |
|---|---|
| Vest și Tubberville, *Red Team Development and Operations* | Utilitatea evidenței operatorului, structura misiunii și repere de tradecraft |
| Zenko, *Red Team: How to Succeed by Thinking Like the Enemy* | Independența organizațională și modurile de eșec instituțional |
| [Purple Team Exercise Framework v4](https://github.com/scythe-io/purple-team-exercise-framework) | Proiectarea exercițiilor colaborative |
| [Penetration Testing Execution Standard](https://www.pentest-standard.org/) | Repere pentru etapele tehnice, atunci când sunt în concordanță cu Regulile de angajare |
| NATO Cooperative Cyber Defence Centre of Excellence, *Crossed Swords: A Cyber Red Team Oriented Technical Exercise* | Proiectarea exercițiilor complexe |

K.6.3.1 Sursele practicienilor pot îmbunătăți o procedură, dar nu pot conferi autoritate,
demonstra conformitatea cu reglementările sau acorda permisiunea unui furnizor. Afirmațiile
tehnice sunt verificate în raport cu documentația oficială actuală înainte de utilizare.

K.6.3.2 Colecțiile de cărți sau fișiere PDF aparținând terților, inclusiv depozitele publice
de „cărți despre hacking”, reprezintă numai mijloace de identificare a surselor. Acestea nu
sunt preluate, redistribuite sau citate drept surse controlate decât dacă au fost stabilite
drepturile de autor sau licența, proveniența, integralitatea, ediția și integritatea. Un titlu
identificat într-o asemenea colecție este obținut de la editor, autor, bibliotecă sau dintr-o
altă sursă autorizată înainte de a fundamenta prezenta metodologie.

\newpage

### K.6.4 Harta fundamentării

| Obiectul măsurii de control | Surse principale de fundamentare | Implementare |
|---|---|---|
| Autoritate, domeniu de aplicare și permisiunea furnizorului | Legislația aplicabilă; TIBER; DORA; politicile furnizorilor | Capitolele 5 și 8; anexele B și G; T02 și T10 |
| Separarea rolurilor și garanții pentru echipe mici | TIBER; DORA; CBEST | Capitolul 6; anexa A |
| Selectarea serviciului, proporționalitate și dispunerea misiunii | TIBER; G7; NCSC; CISA | Capitolele 2 și 4; anexa H; T01 |
| Ciclul de viață și porțile de aprobare | TIBER; CBEST; NIST SP 800-115 | Capitolul 7; anexa C |
| Planificare threat-led și golden thread | TIBER; CBEST; MITRE | Anexa D; T03 și T04 |
| Reprezentarea comportamentelor și a attack path-urilor | MITRE ATT&CK; Attack Flow; TIBER | Anexele D și E; T03, T04 și T08 |
| Evidențele execuției și integritatea dovezilor | NIST SP 800-115; SP 800-86; ISO/IEC 27037 | Anexa E; T05 și T08 |
| Deconflictarea și gestionarea unei intruziuni reale | TIBER; CISA; NIST SP 800-61 | Capitolele 7 și 8; anexele E și G; T02 și T07 |
| Detectare, răspuns și calitatea măsurării | NIST SP 800-55; NCSC; TIBER | Capitolul 9; anexa F; T08 |
| Măsuri de protecție privind incidentele, viața privată și datele | NIST SP 800-61; GDPR/EDPB | Anexele E și G |
| Instrumente, laborator, competență și instruire | TIBER; DORA; CREST; NIST | Capitolul 10; anexele A și J; T04 și T05 |
| Practica exercițiilor și a activității Purple Team | TIBER; NCSC; Purple Team Exercise Framework; NATO CCDCOE | Anexa H; T04, T08 și T11 |
| Medii specializate și măsuri de siguranță | Legislația, mandatul și politica de clasificare aplicabile; TIBER | Capitolele 4 și 8; anexele G și I; T02 |
| Cleanup, restabilire și retestare | TIBER; CBEST; CREST | Anexa C; anexa F; T11 și T12 |

K.6.4.1 Aceasta este o hartă a provenienței familiilor de măsuri de control, nu o declarație
de conformitate punct cu punct. Atunci când se aplică o lege, un contract, o condiție a
furnizorului sau o schemă formală de testare, evaluarea actuală a aplicabilității, cerințele
privind autoritatea și livrabilele schemei sunt consemnate separat, împreună cu documentele
misiunii.

---
