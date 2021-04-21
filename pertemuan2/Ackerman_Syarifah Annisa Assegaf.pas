program Ackerman;

(*
Ackermann Function 
@Syarifah Annisa Assegaf
*)

uses crt;
function ackermann(m, n: Integer) : Integer;
begin
   if m = 0 then
        ackermann := n+1
   else if n = 0 then
        ackermann := ackermann(m-1, 1)
   else if n > 0 then
        ackermann := ackermann(m-1, ackermann(m, n-1))
   else if m > 0 then
        ackermann := ackermann(m-1, 1)
   else
        ackermann := ackermann(m-1, ackermann(m, n-1));
end;

var
   m,n : Integer;

begin
   for n := 4 to 10 do
       for m := 3 to 10 do
           Writeln('A(', m, ',', n, ') = ', ackermann(m,n));
   readln();
end.
