(*program menghitung ips - Hanna Munaira*)

program menghitung_ips;
uses crt;
var
  i, j, n, sks, jumlah_sks : integer;
  uts, tugas, uas, skor, bobot, kxn_val, total_kxn_val, IPS : real;
  nilai_huruf, matkul : string;


function convert2skor(uts, tugas, uas : real): real;
begin
  skor := uts*0.3 + tugas*0.3 + uas*0.4;
end;

function skor2nilai_huruf(skor : real) : string;
begin
   if (skor >80) and (skor <=100) then
      nilai_huruf := 'A'
   else if (skor >77) and (skor <=80) then
      nilai_huruf := 'A-'
   else if (skor >75) and (skor <=77) then
      nilai_huruf := 'B+'
   else if (skor >70) and (skor <=75) then
      nilai_huruf := 'B'
   else if (skor >66) and (skor <=70) then
      nilai_huruf := 'B-'
   else if (skor >61) and (skor <=66) then
      nilai_huruf := 'C+'
   else if (skor >55) and (skor <=61) then
      nilai_huruf := 'C'
   else if (skor >50) and (skor <=55) then
      nilai_huruf := 'C-'
   else if (skor >40) and (skor <=50) then
      nilai_huruf := 'D'
   else if (skor >0) and (skor <=40) then
      nilai_huruf := 'E'
end;

function skor2bobot(skor : real) : real;
begin
   if (skor >80) and (skor <=100) then
      bobot := 4
   else if (skor >77) and (skor <=80) then
      bobot := 3.75
   else if (skor >75) and (skor <=77) then
      bobot := 3.5
   else if (skor >70) and (skor <=75) then
      bobot := 3
   else if (skor >66) and (skor <=70) then
      bobot := 2.75
   else if (skor >61) and (skor <=66) then
      bobot := 2.5
   else if (skor >55) and (skor <=61) then
      bobot := 2
   else if (skor >50) and (skor <=55) then
      bobot := 1.5
   else if (skor >40) and (skor <=50) then
      bobot := 1
   else if (skor >0) and (skor <=40) then
      bobot := 0
end;

function kxn(bobot : real; sks : integer) : real;
begin
   kxn_val := bobot*sks;
end;


begin
clrscr;
write('Jumlah Matkul :  '); readln(n);
writeln;
write('----------------------------------------------------------------------------------------------');
writeln;
write('- No - Matkul --- SKS --- Tugas --- UTS --- UAS --- Skor --- Bobot --- Nilai Huruf --- KxN ---');
writeln;
write('----------------------------------------------------------------------------------------------');

   for i := 1 to n do
   begin
      gotoxy(3,5+i); write(i);
      gotoxy(8,5+i); readln(matkul);
      gotoxy(20,5+i); readln(sks);
      gotoxy(29,5+i); readln(tugas);
      gotoxy(37,5+i); readln(uts);
      gotoxy(45,5+i); readln(uas);

      convert2skor(tugas, uts, uas);
      gotoxy(53,5+i); write(skor:2:2);
      writeln;

      skor2bobot(skor);
      gotoxy(63,5+i); write(bobot:2:2);
      writeln;

      skor2nilai_huruf(skor);
      gotoxy(77,5+i); write(nilai_huruf);
      writeln;

      kxn(bobot, sks);
      gotoxy(88,5+i); write(kxn_val:2:2);
      writeln;

      jumlah_sks := jumlah_sks + sks;

      total_kxn_val := total_kxn_val + kxn_val;

   end;

write('----------------------------------------------------------------------------------------------');
writeln;
write('  Jumlah : ');
  gotoxy(20,7+i); write(jumlah_sks);
  gotoxy(88,7+i); write(total_kxn_val:2:2);
writeln;
write('----------------------------------------------------------------------------------------------');
writeln;

IPS := total_kxn_val/jumlah_sks;

write('  IPS : ', IPS:2:2);


readln;
end.


