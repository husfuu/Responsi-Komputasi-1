Program Ackerman;
(*
Ackermann Function 
@Norhapiah
*)

function ackermann(m, n: integer) : integer;
begin
  if m = 0 then
     ackermann := n+1
  else if n = 0 then
     ackermann := ackermann (m-1, 1)
  else
     ackermann := ackermann (m-1, ackermann (m, n-1));
end;

var
  m, n : integer;

begin
  for n := 0 to 4 do
     for m := 0 to 3 do
        writeln('A(', m,',', n, ') = ', ackermann(m,n));
  readln;
end.