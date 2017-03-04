/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH03E02.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains 
  brand,color = symbol % pendeklarasian variable brand dan color yang bertipe data symbol
  age = byte % pendeklarasian variable age yang bertipe data byte
  price, mileage = ulong % pendeklarasian variable price dan mileage yang bertipe data ulong

predicates
  car(brand,mileage,age,color,price) - nondeterm (i,i,i,i,i)% pendeklarasian beberapa variable dengan tipe datanya. Di section ini terdapat 
  %variabel car dengan pernyataan variable brand,mileage,age,color,price. dengan aturan nondeterm untuk memberitahu ke compiler Visual Prolog bahwa
  %predikat tersebut mempunyai lebih dari satu kemungkinan jawaban dengan pola aliran yang ditampilkan sebagai i (inputan) 

clauses
  car(chrysler,130000,3,red,12000). %pendeklarasian car dengan brand = chrysler, mileage = 130000, age = 3, color = red, price = 12000
  car(ford,90000,4,gray,25000). %pendeklarasian car dengan brand = ford, mileage = 90000, age = 4, color = gray, price = 25000
  car(datsun,8000,1,black,30000). %pendeklarasian car dengan brand = datsun, mileage = 8000, age = 1, color = black, price = 30000

goal
  car(renault,13,40000,red,12000). % goal yang dicari berupa pernyataan apakah car dengan brand = reanult, mileage = 13, age = 40000, color = red,
  %price = 12000 ada di clausa atau tidak. hasil dari program ini adalah error karena goal pada bagian age = 40000 tidak sesuai dengan format byte,
  % angka yang seharusnya di isi berkisar antara 0-255.
	 