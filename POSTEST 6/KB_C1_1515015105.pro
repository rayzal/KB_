/*****************************************************************************

		Copyright (c) 2017 TEKNIK INFORMATIKA FKTI UNMUL

 Project: KB_C1_1515015105 
 Purpose: POSTEST 6
 Written by: Muhammad RizaL
 NIM : 1515015105
 Comments: This project is done by reference from the CH6EX8
******************************************************************************/

predicates
  factorial(unsigned,real) - procedure (i,o) %pendeklarasian predikat factorial diikuti dua argumen yang memiliki tipe data masing-masing unsigned dan real
  factorial(unsigned,real,unsigned,real) - procedure (i,o,i,i) %predikat factorial dideklarasikan kembali dengan argumen yang memiliki tipe data unsigned dan real, bedanya
  								%dengan yang sebelumnya hanya diikuti dua argumen, predikat factorial ini diikuti 4 argumen
  								
  /*type data unsigned artinya nilainya tidak boleh kurang dari 0 atau negatif dan harus bernilai positif, 
    type data Real adalah bilangan yang berisi titik desimal atau jenis bilangan pecahan*/

/* Numbers likely to become large are declared as reals. */

clauses
  factorial(N,FactN):- /* klausa factorial ini merupakan klausa yang pertama kali dicocokkan dengan GOAL. pada klausa factorial ini terdapat dua argumen dimana argumen N yang diikat 
  		          dengan nilai 3, semetara FactN masih belum diketahui nilainya. */			
	factorial(N,FactN,1,1.0). /* merupakan subgoal dari factorial factorial(N,FactN). factorial ini memilik 4 argumen yaitu (N,FactN,1,1.0). Karena N bernilai 3 maka
				     factorial(3,?,1,1.0)	*/

  factorial(N,FactN,N,FactN):-!.  /* factorial ini memiliki 4 argumen yaitu (N,FactN,N,FactN) kemudian diikuti jika maka dan tanda cut(!). Artinya jika nilai argumen pertama (N) sama
  				     dengan nilai argumen ketiga(N) dan  jika nilai argumen kedua (FactN) sama dengan nilai argumen keempat(FactN) maka Visual prolog akan menghentikan
				     lacak balik. */
  
  factorial(N,FactN,I,P):-     % factorial ini memiliki 4 argumen yaitu (N,FactN,I,P). Karena N = 3, FactN belum diketahui nilainya, I = 1, dan P = 1.0 sehingga factorial(3,?,1,1.0).
	NewI = I+1,   	       % Nilai dari NewI berasal dari nilai dari I + 1
	NewP = P*NewI,		 % Nilai dari NewP berasal dari nilai dari P * NewI
	factorial(N, FactN, NewI, NewP). % factorial ini memiliki 4 argumen yang nilainya dari operasi subgoal diatasnya.

goal
  factorial(3,X). %goal yang akan dicari, dimana pada goal factorial telah ditentukan nilai 3 pada argumen pertamanya dan pada argumen keduanya berisi variabel X. nilai dari X inilah 
  		% yang akan dicari solusinya.
  		% Pertama kali Visual Prolog akan mencari fakta atau head dari rule yang cocok dengan goal, maka ditemukan factorial(N,FactN). 
  		% Kemudian mencari pada klausa tersebut untuk mengunifikasi argumennya.
  		% Karena X variabel bebas, maka X dapat diunifikasikan ke variabel manapun. FactN juga merupakan variabel bebas dari head rule factorial, 
  		% maka terjadi unifikasi antara X dan factorial, sehingga X=FactN. Sementara variabel N diikat dengan nilai 3.  
  		
  		
  /*  *** Proses Pencarian nilai X ***
      * Proses Perulangan 1 *
      
      	factorial(3,?):- 
      			factorial(3,?,1,1.0)
      			
      	factorial(3,1,1,1):-!. Syarat tidak memenuhi untuk menghentikan lacak balik karena nilai argumen pertama (3)tidak sama
  				     dengan nilai argumen ketiga(1),SEHARUSNYA NILAINYA SAMA, MAKA PROGRAM DILANJUTKAN.
      	 
        factorial(3,1,1,1):-
	NewI = 1+1, hasilnya 2
	NewP = 1*2, hasilnya 2
	factorial(3, 1, 2, 2).
	
 	* Proses Perulangan 2 *  
 	
 	factorial(3,1):- 
      		factorial(3,1,2,2.0)
      			
      	factorial(3,2,2,2):-!. Syarat tidak memenuhi untuk menghentikan lacak balik karena nilai argumen pertama (2)tidak sama
  				     dengan nilai argumen ketiga(2),SEHARUSNYA NILAINYA SAMA, MAKA PROGRAM DILANJUTKAN.
      	 
        factorial(3,1,2,2):-
	NewI = 2+1, hasilnya 3
	NewP = 2*3, hasilnya 6
	factorial(3, 6, 3, 6).
	
	* Proses Perulangan 3 *  
 	
 	factorial(3,6):- 
      		factorial(3,6,3,6.0)
      			
      	factorial(3,6,3,6):-!. Syarat telah terpenuhi untuk menghentikan lacak balik karena nilai argumen pertama (3) sama
  				     dengan nilai argumen ketiga(3) dan nilai argumen kedua (6) sama dengan nilai argumen keempat(6) ,
  				     KARENA SYARATNYA SUDAH TERPENUHI, MAKA PROGRAM DIHENTIKAN.
  				     
  				     
	SEHINGGA GOAL
	factorial(3,6).
	SOLUSINYA X=6
      	 
        */
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  