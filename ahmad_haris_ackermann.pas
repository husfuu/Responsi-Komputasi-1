Program Ackerman;
(*
Ackermann Function 
@Ahmad Haris Prabowo Subiyanto
*)
var
   m, n	: Integer;

function ackermann(m, n: Integer) : Integer;
begin
   if m = 0 then
      ackermann := n+1
   else if n = 0 then
      ackermann := ackermann(m-1, 1)
   else
      ackermann := ackermann(m-1, ackermann(m, n-1));
end;

begin
   for n := 0 to 4 do
      for m := 0 to 3 do
	 WriteLn('A(', m, ',', n, ') = ', ackermann(m,n));
         readln;
end.
