/*****************************************************************************

		Copyright (c) 2017 TEKNIK INFORMATIKA FKTI UNMUL

 Project: KB_C1_1515015105 
 Purpose: POSTEST 1
 Written by: Muhammad RizaL
 NIM : 1515015105
 Comments: This project is done by reference from the examples 1-5
******************************************************************************/

PREDICATES

polisi(symbol) - nondeterm(o)
orang(symbol,symbol,integer,integer,integer)- nondeterm (o,o,o,o,o)nondeterm (i,o,o,i,o)
punya(symbol,symbol) - nondeterm (i,i)
jadi_polisi(symbol) - nondeterm (i)
alasan(symbol) - nondeterm (i)
cita_cita(symbol) - nondeterm (i) 


CLAUSES
%orang(nama,jeniskelamin, umur, tinggi, berat)
orang(joe,laki,25,190,70).
orang(cindy,perempuan,19,160,64).
orang(joko,laki,28,180,71).
orang(santi,perempuan,23,170,65).

%punya(nama,barang)
punya(joe,senjata).
punya(cindy,baju).
punya(joko,rompi).
punya(santi,sepatu).

alasan(tinggi).
alasan(kuat).
alasan(cerdas).

cita_cita(polisi).
cita_cita(tentara).
cita_cita(pilot).
cita_cita(programer).

jadi_polisi(A):-	
	alasan(tinggi),
	cita_cita(polisi),
	punya(A,senjata),
	orang(A,_,_,190,_).
	
polisi(A):-
	orang(A,_,_,_,_),
 	jadi_polisi(A).
   
GOAL
polisi(Polisi).