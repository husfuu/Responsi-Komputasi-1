program ipk3;
uses crt;
var
	uts, tugas, uas, score, weight_val, knx_val, ips, knx_total: Real;
	letter_grad, mk: String;
	sks, i, n, sks_total: Integer;

function convert2score(uts, tugas, uas: Real): Real;
begin
	score := uts*0.3 + tugas*0.3 + uas*0.4;
end;

function score2letter_grades(score: Real): String;
begin
	if (score > 80) and (score <= 100) then
		letter_grad := 'A'
	else if (score > 77) and (score <= 80) then
		letter_grad := 'A-' 
	else if (score > 75) and (score <= 77) then
		letter_grad := 'B+'
	else if (score > 70) and (score <= 75) then
		letter_grad := 'B'
	else if (score > 66) and (score <= 70) then
		letter_grad := 'B-'
	else if (score > 61) and (score <= 66) then
		letter_grad := 'C+' 
	else if (score > 55) and (score <= 61) then
		letter_grad := 'C'
	else if (score > 50) and (score <= 55) then
		letter_grad := 'D+'
	else if (score > 40) and (score <= 50) then
		letter_grad := 'D'
	else if (score > 0) and (score <= 40) then
		letter_grad := 'E'
end;


function score2weight(score:Real): Real;
begin
	if (score > 80) and (score <= 100) then 
		weight_val := 4
	else if (score > 77) and (score <= 80) then 
		weight_val := 3.75
	else if (score > 75) and (score <= 77) then
		weight_val := 3.5
	else if (score > 70) and (score <= 75) then
		weight_val := 3
	else if (score > 66) and (score <= 70) then
		weight_val := 2.75
	else if (score > 61) and (score <= 66) then
		weight_val := 2.5 
	else if (score > 55) and (score <= 61) then
		weight_val := 2
	else if (score > 50) and (score <= 55) then
		weight_val := 1.5
	else if (score > 40) and (score <= 50) then
		weight_val := 1
	else if (score > 0) and (score <= 40) then
		weight_val := 0		
end;

// -------------------------------------------------
function knx(weight_val: Real; sks: Integer): Real;
begin
	knx_val := weight_val*sks;
end;


function calc_sks_total(sks:Integer): Integer;
begin
	sks_total:=sks_total+sks;
end;


function calc_knx_total(knx_val:Real): Real;
begin
	knx_total:=knx_total+knx_val;
end;


function calc_ips(sks_total:Integer; knx_total:Real): Real;
begin
	ips:= knx_total/sks_total;
end;



begin
	clrscr;
	write('Jumlah Matakuliah: ');readln(n);
	writeln;
	write('-----------------------------------------------------------------------------------------------------------');
	writeln;
	write('No - Subject -- SKS --- Middle --- Assignment --- Final --- Score --- Letter Grades ---  Weight --- KNX ---');
	writeln;
	writeln('---------------------------------------------------------------------------------------------------------');
	for i:= 1 to n do 
	begin
		gotoxy(2,5+i);write(i);
		gotoxy(8, 5+i);readln(mk);
		gotoxy(17, 5+i);readln(sks);
		gotoxy(27, 5+i);readln(uts);
		gotoxy(42, 5+i);readln(tugas);
		gotoxy(54, 5+i);readln(uas);

		// score
		convert2score(uts, tugas, uas);
		gotoxy(63, 5+i);write(score:2:2);
		
		// letter grades
		score2letter_grades(score);
		gotoxy(78, 5+i);write(letter_grad);

		// weight
		score2weight(score);
		gotoxy(92, 5+i);write(weight_val:2:2);

		// knx
		knx(weight_val, sks);
		gotoxy(101, 5+i);write(knx_val:2:2);

		// total // update sks_total and knx_total
		calc_sks_total(sks);
		calc_knx_total(knx_val);

	end;
	writeln;
	write('-----------------------------------------------------------------------------------------------------------');
	writeln;
	write('Jumlah: ');
	gotoxy(17, whereY); write(sks_total);
	gotoxy(101, whereY);write(knx_total:2:2);
	writeln;
	write('-----------------------------------------------------------------------------------------------------------');
	writeln;
	// call calc_ips function
	calc_ips(sks_total, knx_total);
	write('IPS: ', ips:2:2);
	readkey;
end.
