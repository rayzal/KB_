/*****************************************************************************

		Copyright (c) 2017 TEKNIK INFORMATIKA FKTI UNMUL

 Project: KB_C1_1515015105 
 Purpose: POSTEST 3
 Written by: Muhammad RizaL
 NIM : 1515015105
 Comments: This project is done by task on modul 3
******************************************************************************/
domains
matakuliah, nama, nilai = symbol


predicates
  nondeterm mengambil(nama ,matakuliah, nilai)
  nondeterm matkul(matakuliah)
  
clauses
  mengambil(irfan,kecerdasan_buatan,"A").
  mengambil(komeng,kecerdasan_buatan,"D").
  mengambil(dati,kecerdasan_buatan,"C").
  mengambil(fatima,kecerdasan_buatan,"B").
  mengambil(maspion,kecerdasan_buatan,"C").
  
  mengambil(ricky,pde,"E").
  mengambil(embang,pde,"A").
  mengambil(salmin,pde,"D").
  mengambil(vina,pde,"B").
  mengambil(sondang,pde,"C").
        
  mengambil(pamuji,so,"D").
  mengambil(luki,so,"E").
  mengambil(sadek,so,"B").
  mengambil(yusida,so,"A").
  mengambil(eka,so,"A").
  
  matkul("Kecerdasan_buatan").
  matkul("PDE").
  matkul("SO").
  
goal
  write("Mahasiswa yang mengambil matakuliah Intelegensi Buatan"),nl,
  mengambil(Nama,kecerdasan_buatan,_);
  
  write("\nMahasiswa yang tidak lulus"),nl,
  mengambil(Nama,MK,TidakLulus), TidakLulus>"C";
  
  write("\nMahasiswa yang lulus"),nl,
  mengambil(Nama,MK,Lulus), Lulus<="C";
  
  write("\nMata Kuliah yang diajarkan"),nl,
  matkul(MK);
  
  write("\nNama mahasiswa yang ada"),nl,
  mengambil(Nama,_,_).
 