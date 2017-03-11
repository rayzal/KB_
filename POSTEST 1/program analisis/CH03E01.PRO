/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH03E01.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains %section domain 
  product,sum = integer %Perintah di atas merupakan section domains yang mendeklarasikan variable product, dan sum dengan tipe data integer.

predicates
  add_em_up(sum,sum,sum) - procedure (i,i,o) %Section Predicates merupakan sebuah pendeklarasian beberapa variable dengan tipe datanya. Di section ini terdapat 
  %variabel add_em_up dengan pernyataan variable sum, variable add_em_up dengan pernyataan variable sum, yang telah di deklarasi pada Section Domains di atas. 
  %variabel tersebut mempunyai 3 atribut yaitu variabel sum yang bertipe integer  
  multiply_em(product,product,product) - procedure (i,i,o)%variable multiply_em yang mempunyai 3 atribut product yang bertipe integer.

clauses
  add_em_up(X,Y,Sum):-
	Sum=X+Y.
  multiply_em(X,Y,Product):-
	Product=X*Y.
	%Sintaks diatas dapat juga dibaca add_em_up x dan y dan tampung hasilnya dalam variabel sum jika sum = X+Y. Dan multiply_em(X,Y,Product) :-Product = X*Y
	%berarti bahwa sintak tersebut dapat juga dibaca multiply_em x dan y dan tampung hasilnya dalam variabel Product jika Product = X*Y.	


goal
  add_em_up(32,54,Sum). %artinya goal yang dicari adalah add_em_up atau penambahan. angka 32 dan 54 adalah inputan yang nantinya akan ditambahkan (32+54) untuk menemukan hasil Sum. 
