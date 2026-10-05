# ANEXA I — MEDII SPECIALIZATE

În sprijinul Capitolului 4, punctul 4.9, din Metodologia Red Team. Emisă
sub autoritatea Head of Red Team.

Prezenta anexă se aplică atunci când o misiune implică o rețea clasificată sau
izolată fizic, un sistem de misiune, de comandă sau de armament, o rețea
dislocată ori tactică, tehnologii operaționale ale unei instalații sau un sistem
aliat ori de coaliție. Fiecare dintre acestea poate transforma o misiune
obișnuită într-un incident grav. Niciun astfel de mediu nu trebuie accesat fără
controalele prevăzute în prezenta anexă.

---

## I.1 Aplicabilitate

I.1.1 Verificarea următoare este efectuată în faza 0. Atunci când se aplică
oricare dintre elemente, se aplică prezenta anexă, iar punctul corespunzător este
obligatoriu.

| | Sfera de aplicare include | Punctul |
|---|---|---|
| 1 | O rețea care deține materiale clasificate peste nivelul de lucru Red Team | I.2 |
| 2 | O rețea izolată fizic sau separată fizic | I.3 |
| 3 | Un sistem de misiune, de comandă sau de armament | I.4 |
| 4 | O rețea dislocată, tactică sau expediționară | I.5 |
| 5 | Tehnologii operaționale ale unei instalații: energie electrică, apă, combustibil, controlul mediului, controlul accesului | I.6 |
| 6 | Un sistem deținut de altă națiune sau de o alianță ori care deține informații aparținând acestora | I.7 |
| 7 | Un sistem care sprijină o unitate aflată în stare de pregătire, în operații sau în curs de certificare | I.8 |

---

## I.2 Medii clasificate

### I.2.1 Constrângerea de reglementare

I.2.1.1 Într-un mediu clasificat, constrângerea este rareori tehnică. Propriile
artefacte ale misiunii, respectiv Regulile de angajare, planul, evidențele,
dovezile și raportul, preiau nivelul de clasificare al mediului pe care îl
descriu, la momentul creării.

I.2.1.2 Acest aspect este planificat înainte de execuție. O echipă care generează
dovezi clasificate pe un sistem neacreditat a creat un incident de securitate
care va prevala asupra fiecărei constatări din raport.

### I.2.2 Controale

| | Control |
|---|---|
| 1 | Fiecare operator deține o autorizație de acces la nivelul sau peste nivelul de clasificare al mediului, verificată înainte de faza 3 și nededusă din funcție |
| 2 | Sistemele operatorilor utilizate în mediu sunt acreditate pentru clasificarea respectivă. Sistemele cu scop general ale echipei nu trebuie utilizate. |
| 3 | Depozitul de dovezi este acreditat la același nivel. Dovezile nu părăsesc limita acreditată. |
| 4 | Instrumentele sunt verificate și aprobate în cadrul procesului de acreditare aplicabil înainte de faza 3 |
| 5 | Raportul este întocmit, păstrat și distribuit în mediul clasificat. Un rezumat cu o clasificare inferioară poate fi întocmit numai dacă este derivat în mod formal și evaluat din perspectiva agregării. |
| 6 | Lista persoanelor autorizate să cunoască misiunea este stabilită pe baza autorizației de acces și a necesității de a cunoaște. Autorizația de acces singură nu conferă acces. |
| 7 | Fiecare produs este verificat din perspectiva clasificării de Autoritatea de securitate înainte de diseminare |
| 8 | Un incident suspectat de transfer neautorizat este raportat imediat conform procedurii organizației, înaintea oricărui considerent privind misiunea, iar misiunea încetează |

### I.2.3 Agregare

I.2.3.1 Constatările care sunt neclasificate în mod individual pot forma prin
agregare o imagine clasificată. O descriere completă a deficiențelor unei
infrastructuri este mai sensibilă decât orice deficiență individuală din cadrul
acesteia.

I.2.3.2 Fiecare raport privind un mediu clasificat trebuie evaluat din
perspectiva agregării înainte de atribuirea clasificării, de către Autoritatea
de securitate, nu de către Red Team. Se prezumă că raportul este clasificat
la un nivel superior componentelor sale individuale.

---

## I.3 Rețele izolate fizic și separate fizic

| Aspect | Cerință |
|---|---|
| Command and Control | Infrastructura pe niveluri prevăzută în Anexa D nu se aplică. Operațiile sunt desfășurate din interior, cu înregistrare locală. |
| Transferul dovezilor | Se desfășoară printr-un proces controlat între domenii de securitate, convenit și aprobat în faza 1. Acesta nu trebuie improvizat la încheierea execuției. |
| Medii de stocare amovibile | Orice mediu utilizat este inventariat, consemnat și eliminat conform reglementării aplicabile. Acesta reprezintă, de regulă, elementul cu cel mai ridicat risc al misiunii. |
| Introducerea instrumentelor | Instrumentele sunt introduse prin procesul acreditat. Introducerea unui cod neaprobat într-o rețea izolată fizic constituie un incident grav, indiferent de intenție. |
| Vector realist | Vectorul realist de pătrundere într-o astfel de rețea este un mediu de stocare amovibil, supply chain sau un insider. Emularea reflectă acești vectori, nu ceea ce este convenabil. |
| Deconflictare | Telemetria de rețea nu este disponibilă. Este convenită o procedură fizică sau în afara benzii, cu un interval de contact definit. |
| Cleanup | Ulterior, niciun element nu poate fi eliminat de la distanță. Cleanup and Rollback Register este verificat înainte ca operatorii să părăsească obiectivul. |

---

## I.4 Sisteme de misiune, de comandă și de armament

> Aceste sisteme se află implicit în afara sferei de aplicare. Ele sunt introduse
> în sferă numai în baza unei justificări de siguranță documentate, a
> consimțământului scris al Autorității responsabile de sistem și a acceptării
> riscului de către Autoritatea de aprobare, cu nominalizarea sistemului.

### I.4.1 Temeiul excluderii implicite

a. Disponibilitatea este o problemă de stare de pregătire și, posibil, de
siguranță.

b. Multe dintre acestea au configurații certificate sau acreditate, iar o
modificare neplanificată poate invalida certificarea respectivă.

c. Modurile de defectare în cazul unor date de intrare neașteptate sunt frecvent
nedocumentate.

d. Consecința degradării nu poate fi măsurată în termenii utilizați în restul
prezentei metodologii.

### I.4.2 Atunci când un sistem este introdus în sferă

| | Cerință |
|---|---|
| 1 | Consimțământul scris al autorității responsabile de sistem sau de proiectare, nu numai al unității care îl operează |
| 2 | Există un mediu de testare reprezentativ, iar fiecare tehnică este verificată mai întâi în acesta |
| 3 | O justificare de siguranță care acoperă fiecare tehnică autorizată, verificată de autoritatea responsabilă de siguranță |
| 4 | Personalul tehnic capabil să intervină fizic este prezent și informat pe întreaga durată |
| 5 | Sistemul se află într-o stare sigură cunoscută, neoperațională, confirmată la începutul fiecărei sesiuni |
| 6 | Unitatea nu se află în stare de pregătire pe durata activității |
| 7 | Orice anomalie a comportamentului sistemului determină încetarea activității, indiferent de cauză |
| 8 | Efectul asupra certificării și acreditării este evaluat și acceptat în prealabil |

### I.4.3 Limita

I.4.3.1 Pentru majoritatea obiectivelor, demonstrarea faptului că un sistem de
misiune poate fi accesat din rețeaua cu scop general constituie constatarea.
Pătrunderea adaugă un risc substanțial și puține informații.

I.4.3.2 Conduita implicită este oprirea la limită, demonstrarea posibilității de
acces și raportarea acesteia. Limita este traversată numai atunci când obiectivul
nu poate fi realizat altfel și sunt îndeplinite condițiile prevăzute la punctul
I.4.2.

---

## I.5 Rețele dislocate și tactice

| Aspect | Cerință |
|---|---|
| Operații reale | Misiunile împotriva unei rețele care sprijină o sarcină operațională reală sunt interzise |
| Fereastră | În perioada de pregătire, în cazarmă sau după revenire |
| Consimțământ | Comandantul unității dislocate consimte și este Trusted Agent sau desemnează unul |
| Lățime de bandă | Infrastructura misiunii nu trebuie să consume o lățime de bandă semnificativă din punct de vedere operațional. Traficul este modelat înainte de execuție. |
| Vector | Rețelele tactice se confruntă cu vectori diferiți: capturare fizică, radiofrecvență, supply chain, actor local din interior. Aceștia sunt emulați. |
| Comunicații | Deconflictarea se desfășoară prin comunicațiile disponibile și în ritmul permis de acestea. Perioada de răspuns este stabilită în consecință și testată. |
| Cleanup | Este verificat înainte de dislocarea unității. Un artefact rămas pe un sistem care este apoi dislocat nu poate fi recuperat. |

---

## I.6 Tehnologii operaționale ale instalației

I.6.1 Se aplică sistemelor de energie electrică, apă, combustibil, control al
mediului, control al accesului fizic, de incendiu și de siguranță a vieții.

I.6.2 Se aplică dispozițiile de siguranță prevăzute în Anexa G, punctul G.5.2,
cu următoarele completări.

| | Completare |
|---|---|
| 1 | Sistemele de siguranță a vieții și de incendiu sunt permanent în afara sferei de aplicare. Nu va fi acceptată nicio justificare de siguranță. |
| 2 | Controlul accesului fizic poate fi evaluat, dar niciodată într-un mod care poate determina blocarea securizată sau deblocarea completă a unei facilități. Modul de defectare este modelat înainte de orice acțiune. |
| 3 | Comandantul instalației este informat, iar conducerea forței de pază este informată că se desfășoară o activitate autorizată |
| 4 | Pentru combustibil, energie electrică și apă: se demonstrează posibilitatea accesului din rețeaua cu scop general și se oprește activitatea. Posibilitatea accesului constituie constatarea. |
| 5 | Misiunile sunt programate în afara perioadelor cu stare de alertă sporită |

---

## I.7 Sisteme aliate și de coaliție

| | Cerință |
|---|---|
| 1 | Autoritatea națională singură nu este suficientă. Sistemele deținute de altă națiune sau de o alianță ori care dețin informații aparținând acestora necesită autorizarea proprietarului respectiv. |
| 2 | Este stabilit proprietarul informațiilor, care frecvent nu este operatorul sistemului |
| 3 | Acordul, memorandumul sau aranjamentul tehnic aplicabil este analizat de Consilierul juridic înainte de finalizarea fazei 1 |
| 4 | Posibilitatea de diseminare a constatărilor este convenită în scris înainte de execuție: cine primește raportul, sub ce formă și dacă acestea pot fi diseminate alianței sau bilateral |
| 5 | Clasificarea și mențiunile restrictive sunt aplicate conform regulilor națiunii sau alianței care deține sistemul, nu numai conform regulilor organizației care efectuează evaluarea |
| 6 | Atunci când sistemele sunt monitorizate de elementul de răspuns al unui partener, acesta este inclus în mecanismul de deconflictare |

I.7.1 Atunci când autoritatea este neclară, misiunea nu continuă. Autoritatea
ambiguă asupra unui sistem aliat nu reprezintă un risc proporțional cu o
activitate de asigurare.

---

## I.8 Starea de pregătire și ritmul operațional

I.8.1 Activitatea Red Team nu trebuie să degradeze starea de pregătire.
Aceasta este o constrângere, nu o preferință de programare.

| | Cerință |
|---|---|
| 1 | Nicio misiune împotriva sistemelor care sprijină o unitate aflată în stare de pregătire, în operații sau în curs de certificare |
| 2 | Calendarul misiunii este deconflictat în raport cu programul operațional și de exerciții în faza 0 |
| 3 | Trusted Agent deține autoritatea permanentă de a înceta definitiv activitatea la modificarea stării de alertă sau la primirea unei sarcini operaționale, fără discuție și fără notificare prealabilă |
| 4 | Încetarea din motive operaționale nu reprezintă eșecul misiunii. Este consemnată, elementele colectate sunt păstrate, iar misiunea este reprogramată. |
| 5 | Atunci când o misiune este încetată din motive operaționale, cleanup-ul este finalizat imediat, nu amânat |

---

## I.9 Criterii suplimentare de încetare

I.9.1 În plus față de cele prevăzute în Capitolul 8, punctul 8.15.

a. O modificare a stării de alertă sau a posturii de pregătire.

b. Primirea unei sarcini operaționale de către o unitate sprijinită.

c. Un incident suspectat de transfer neautorizat al informațiilor clasificate
sau de încălcare a regulilor de gestionare.

d. Orice anomalie a unui sistem de misiune, de comandă, de armament sau de
tehnologii operaționale, indiferent dacă este sau nu atribuită Red Team.

e. Contactul cu un sistem aliat sau de coaliție care nu este cuprins în
autorizare.

f. Pierderea evidenței oricărui mediu de stocare amovibil utilizat în cadrul
misiunii.

g. Orice indiciu că activitatea misiunii a fost observată de o parte externă sau
atribuită acesteia.

---

## I.10 Cerințe suplimentare în faza 1

I.10.1 Se adaugă la punctul de decizie G1 prevăzut în Anexa C, punctul C.5.3,
atunci când se aplică prezenta anexă.

1. Verificarea aplicabilității prevăzută la punctul I.1 este finalizată și
   consemnată.
2. Autorizațiile de acces sunt verificate în raport cu clasificarea mediului.
3. Sistemele operatorilor și depozitul de dovezi sunt acreditate la nivelul
   necesar.
4. Instrumentele sunt aprobate în cadrul procesului de acreditare aplicabil.
5. Procesul între domenii pentru transferul dovezilor este convenit și aprobat.
6. Agregarea și clasificarea produselor sunt evaluate de Autoritatea de
   securitate.
7. Pentru un sistem de misiune sau de armament: sunt confirmate consimțământul
   Autorității responsabile de sistem, justificarea de siguranță și mediul de
   testare.
8. Pentru un sistem aliat sau de coaliție: autorizarea proprietarului și
   posibilitatea de diseminare a constatărilor sunt convenite în scris.
9. Calendarul misiunii este deconflictat în raport cu programul operațional și
   de exerciții.
10. Este confirmată autoritatea permanentă a Trusted Agent de a înceta
    definitiv activitatea la modificarea stării de alertă.

---
