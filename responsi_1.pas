program bikinangka;


var
	i, j: Integer;

begin
	// angka 1
	for i := 1 to 5 do
		begin
		for j:=1 to 5 do
		begin
			if (j<>3) then  
			write(' ')
		else if (j=3) then
			write('*')
		end;
		writeln;
		end;
	writeln; // enter
	// angka 2
	for i:=1 to 5 do
		begin
			for j:=1 to 5 do
			begin
				if i=2 then
					if j=5 then
					write('*')
					else 
					write(' ')

				else if i=4 then 
					if j=1 then
					write('*')
					else 
					write(' ')
				else 
					write('*')
			end;
		writeln;
		end; 
	writeln; // enter
	// angka 3
	for i:=1 to 5 do
		begin
			for j:=1 to 5 do
				begin
					if i=2 then
						if j=5 then
						write('*')
						else 
						write(' ')
					else if i=4 then
						if j=5 then
						write('*')
						else
						write(' ')
					else
					write('*');
				end;
		writeln;	
		end;
	writeln;
	// angka 4
	for i:=1 to 5 do
		begin
			for j := 1 to 5 do
				begin
					if (i=1) or (i=2) then
						if (j=1) or (j=5) then 
							write('*')
						else 
							write(' ')
					else if (i=4) or (i=5) then
						if (j=5) then
							write('*')
						else
							write(' ') 
					else 
						write('*')
				end;
		writeln;
		end;
		
	writeln;
	// angka 5
	for i:=1 to 5 do
		begin
			for j:=1 to 5 do
				begin
					if (i=2) then
						if (j=1) then
							write('*')
						else
							write(' ')
					else if (i=4) then
						if (j=5) then
							write('*')
						else
							write(' ')
					else
						write('*')
				end;
		writeln;
		end;
end.

