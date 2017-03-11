/*****************************************************************************

		Copyright (c) 2017 TEKNIK INFORMATIKA FKTI UNMUL

 Project: KB_C1_1515015105 
 Purpose: POSTEST 2
 Written by: Muhammad RizaL
 NIM : 1515015105
 Comments: This project is done by reference from the examples CH02E01-CH03E06
******************************************************************************/
DOMAINS
nama,jk, pekerjaan, alibi,barang =symbol 
uang = integer
umur= byte


PREDICATES

nondeterm pencuri(nama)
nondeterm korban(nama)
nondeterm orang(nama, jk, umur, pekerjaan)
nondeterm motif(alibi)
nondeterm dituduh(nama)
nondeterm membeli(nama,barang)
nondeterm punya(nama,uang)

CLAUSES 

orang("Adi","laki",30,"Sopir").
orang("Budi","laki",17,"Anak").
orang("Cyndi","Perempuan",32,"IRT").
orang("Danuardi","laki",40,"Pengusaha").
orang("Emelysdi","Perempuan",24,"Pembantu").

motif(jajan).
motif(belanja).
motif(kebutuhan).

punya("Adi",4000).
punya("Budi",150000).
punya("Cyndi",6000000).
punya("Danuardi",3000000).
punya("Emelysdi",400000).

%BUKTI%
membeli("Andi","PS4").
membeli("Cyndi","Cincin Berlian").
membeli("Emelysdi","Smartphone").

%DI CURIGAI PENCURI%
dituduh(Nama):-
	orang(Nama,_,_,"Pembantu"),	
	membeli(_,"Smartphone"),
	motif(kebutuhan).
	
dituduh(Nama):-
	orang(Nama,_,_,"IRT"),
	membeli(_,"Cincin Berlian"),
	motif(belanja).
	
%PENCURI%
pencuri(Pencuri):- write("PELAKU PENCURIAN"),nl,
	motif(belanja),
	orang(Pencuri,_,_,_),
	dituduh(Pencuri),
	punya(Pencuri,U),
	U>4000000.
	
%KORBAN%
korban(Korban):- write("KORBAN PENCURIAN"),nl,
	orang(Korban,_,_,_),
	punya(Korban,U),
	U<=4000.

GOAL
pencuri(Pencuri);
korban(Korban).