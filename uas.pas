Program uas;
uses crt;

const 
	JumMhs = 100;

Type Rec_Ujian = 
	record
		NIM : String[18];
		Nama : String[20];
		Akhir : Integer;
		Huruf : String;
	End;

Type 
	TipeArray = Array[1..JumMhs] of Rec_Ujian;

var 
	mahasiswas 	: TipeArray;		

function nilaiHuruf(var nilai : Integer):String;
	begin
	  	if (nilai >= 80) and (nilai <= 100) then
			nilaiHuruf := 'A'
		else if (nilai >= 70) and (nilai < 80) then
			nilaiHuruf := 'B' 
		else if (nilai >= 60) and (nilai < 70) then
			nilaiHuruf := 'C'
		else if (nilai >= 50) and (nilai < 60) then
			nilaiHuruf := 'D'
		else if (nilai >= 0) and (nilai < 50) then
			nilaiHuruf := 'E'
	end;

Procedure inputData(var data : TipeArray);

var 
	totalMhs,i : Integer;

begin
	write('Jumlah Mahasiswa : ');readln(totalMhs);
	clrscr;

	for i:= 1 to totalMhs do
	begin
			writeln('Mahasiswa ke-',i);

			write('NIM 		: ');readln(data[i].NIM);

	        write('NAMA		: ');readln(data[i].Nama);

	        write('Nilai	: ');readln(data[i].Akhir);
	        data[i].Huruf := nilaiHuruf(data[i].Akhir);

	        write('Huruf 	: ', data[i].Huruf);
	        readln;
			clrscr;
	end;

end;

Procedure showData(var data : TipeArray);

var 
	totalMhs,i : Integer;

begin
	write('Jumlah Mahasiswa : ');readln(totalMhs);
	clrscr;
	Writeln('-------------------------------------------------------------------------');
	Writeln(' NO         NIM                  NAMA           Nilai GRADE ');	
	Writeln('-------------------------------------------------------------------------');
	for i:= 1 to totalMhs do
	begin
		with data[i] do
		begin
			writeln(i:3, NIM:20,Nama:22,Akhir:5,Huruf:5)
	    end;
	end;
	readln;

end;

Procedure mainMenu;
const m = 100;
var 
	pilihan : char;
	selesai : boolean;
begin
	repeat
		clrscr;
		writeln(' Main Menu');
		writeln('1. Masukan Data');
		writeln('2. Tampilan Data');
		writeln('3. Selesai');
		writeln;
		write('pilihan [1..3] : ');readln(pilihan);
		clrscr;
		selesai:=false;
		clrscr;
		case pilihan of
			'1' : inputData(mahasiswas);
			'2' : showData(mahasiswas);
			'3' : selesai:=true;
		end;
	until selesai;
	write('Done');
end;

begin
	mainMenu;
	readln;
end.