program ackermann;
(*
Ackermann Function 
@Audinta Sakti Firmansyah
*)
uses crt;
var
    m, n,  hasil : integer;

function ack(x,y : LongInt): LongInt;
var 
    w, res : LongInt;
begin
    if x = 0 then
        begin
            y := y+1; 
            res := y;
        end
    else if (x>0) and (y=0) then
        begin
            res := ack(x-1,1)
        end
    else if (x>0) and (y>0) then
        begin
        w := ack(x,y-1);
        res := ack(x-1,w); 
        end;
    ack := res;
end;

begin
    clrscr;
    writeln('===== | Fungsi ackermann | =====');
    WriteLn('Masukkan nilai m, n untuk menghitung ack(m, n)');
    Write('Nilai m = ');readln(m);
    Write('Nilai n = ');readln(n);
    hasil := ack(m,n);
    WriteLn('Nilai dari ack(', m,',',n,') adalah = ', hasil);
    ReadKey;
end.