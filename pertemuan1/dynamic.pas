program bikinangkadynamic;


var
	i, j, m, n: Integer;

begin
    // Kalau mau input via terminal bisa pakai ini 
	// Writeln('Baris  : ');readln(n);
	// Writeln('Kolom : ');readln(m);

    // Kalau mau input via ngoding bisa pakai ini 
	n := 5; // bisa diubah
	m := 5; // bisa diubah

	// ------------------------- angka 1
	for i := 1 to n do
		begin
			for j:=1 to m do
				begin
					if (j=m/2) or (j=m/2+0.5) then  
						write('*')
					else
						write(' ')
				end;
			writeln;
		end;
	writeln; // new line
    

	// ------------------------- angka 2
	for i:=1 to n do
		begin
			for j:=1 to m do
				begin
					if ((i = 1) or (i = n) or ((i = n/2) or (i=n/2+0.5))) or ((i < n/2)) and (j =m) or ((i > n/2)) and (j = 1) then  
						write('*')
					else
						write(' ')
			end;
		writeln;
		end; 
	writeln; // new line


	// ------------------------- angka 3
	for i:=1 to n do
		begin
			for j:=1 to m do
				begin
					if (i = 1) or (i = n) or (i = n/2) or (i = n/2+0.5) or (j = m) then
						write('*')
					else
						write(' ')
				end;
		writeln;	
		end;
	writeln; // new line


	// ------------------------- angka 4
	for i:=1 to n do
		begin
			for j := 1 to m do
				begin
					if (i = n/2) or (i = n/2+0.5) or (j = 1) and ((i < n/2) or (i < n/2+0.5)) or (j = m)  then
						write('*')
					else 
						write(' ')
				end;
		writeln;
		end;
	writeln; // new line


	// ------------------------- angka 5
	for i:=1 to n do
		begin
			for j:=1 to m do
				begin
					if (i = 1) or (i = n) or (i = n/2) or (i=n/2+0.5) or ((i < n/2) and (j =1)) or ((i > n/2) and (j = m)) then  
						write('*')
					else
						write(' ')
			end;
		writeln;
		end; 
	writeln; // new line


    // ------------------------- angka 6
    for i:=1 to n do
		begin
			for j:=1 to m do
				begin
					if (i = 1) or (i = n) or (i = n/2) or (i = n/2+0.5) or (j = 1) or ((j = m) and (i >n/2)) then  
						write('*')
					else
						write(' ')
			end;
		writeln;
		end; 
	writeln; // new line


    // ------------------------- angka 7
    for i:=1 to n do
		begin
			for j:=1 to m do
				begin
					if (i = 1) or (j = m) then  
						write('*')
					else
						write(' ')
			end;
		writeln;
		end; 
	writeln; // new line
    // ------------------------- angka 8

    
    for i:=1 to n do
		begin
			for j:=1 to m do
				begin
					if (i = 1) or (i = n) or (i = n/2) or (i = n/2+0.5) or (j = 1) or (j = m) then  
						write('*')
					else
						write(' ')
			end;
		writeln;
		end; 
	writeln; // new line


    // ------------------------- angka 9
    for i:=1 to n do
		begin
			for j:=1 to m do
				begin
					if (i = 1) or (i = n) or (i = n/2) or (i = n/2+0.5) or ((j = 1) and (i < n/2)) or (j = m) then  
						write('*')
					else
						write(' ')
			end;
		writeln;
		end; 
	writeln; // new line


    // ------------------------- angka 0
	for i:=1 to n do
		begin
			for j:=1 to m do
				begin
					if (i = 1) or (i = n) or (j = 1) or (j = m) then  
						write('*')
					else
						write(' ')
			end;
		writeln;
		end; 
	writeln; // new line
end.

