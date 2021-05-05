program combined;

uses crt;
label
	start;
var
	choice : Integer;
	choice2 : String;

// ======================================== Procedure forming_numbers =========================================
procedure forming_numbers;
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
	end;
// ======================================== Akhir procedur forming_numbers =====================================


// ======================================== Procedure matrix_calculator ========================================
procedure matrix_calculator;
	var choice : Integer;
	// ====================================== Procedure matrix addition ==========================================
	procedure matrix_addition;
	var 
		i, j, n, m: Integer;
		matrix1, matrix2, matrix3: array[1..10, 1..10] of Integer;
	
	begin
		writeln('Addition two matrix');
		write('Row (maks 10): ');readln(n);
		write('Columns (maks 10): ');readln(m);

		{input data to the array}
		writeln('Input element to Matrix 1');
		for i:=1 to n do
			for j:=1 to m do
			begin
				write('element ke ', i, ',', j, ': ');
				readln(matrix1[i][j]);
			end;


		writeln('Input element to Matrix 2');
		for i:=1 to n do
			for j:=1 to m do
			begin
				write('element ke ', i, ',', j, ': ');
				readln(matrix2[i][j]);
			end;

		writeln;

		{ Show both matrix}
		writeln('Matrix 1');
		for i:=1 to n do
		begin
			for j:=1 to m do
			begin 
				write(matrix1[i][j]);
				write(' ');
			end;
			writeln;
		end;
		writeln;
		writeln('Matrix 2');
		for i:=1 to n do
		begin
			for j:=1 to m do
			begin
				write(matrix2[i][j]:4);
			end;
			writeln;
		end;

		{Add operations}
		for i:=1 to n do
		begin
			for j:=1 to m do
			begin
				matrix3[i][j] := matrix1[i][j]+matrix2[i][j];
			end;
		end;

		{show the results}
		writeln('Hasil');
		for i:=1 to n do
		begin
			for j:=1 to m do
			begin
				write(matrix3[i][j]:4);
			end;
			writeln;
		end;
	end;
  // ====================================== Akhir Procedure matrix addition ==========================================
  
	// =================================== Procedure matrix multiplication =============================================
	procedure matrix_multiplication;
	var
		i, j, k, row_mat1, row_mat2, col_mat1, col_mat2: Integer;
		matrix1, matrix2, matrix3: array[1..10, 1..10] of Integer; 
		begin
			writeln('Perkalian Matrix');
			write('Baris matrix 1: ');readln(row_mat1);
			write('Kolom matrix 1: ');readln(col_mat1);
			write('Baris matrix 2: ');readln(row_mat2);
			write('Kolom matrix 2: ');readln(col_mat2);

			if (col_mat1 = row_mat2) then 
				begin
				 	{ input element matrix 1 and matrix 2}
				// matrix 1
				writeln('Input element matrix 1');
				for i:= 1 to row_mat1 do 
					for j:=1 to col_mat1 do 
					begin
						write('Input element ke: ', i, ', ', j, ': ' );
						readln(matrix1[i][j]);
					end;

				// matrix 2
				writeln('Input element matrix 1');
				for i := 1 to row_mat2 do
					for j:= 1 to col_mat2 do
					begin
					 	write('Input element ke: ', i, ', ', j, ': ');
					 	readln(matrix2[i][j])
					 end;

				{Show the matrix}
				// matrix 1
				writeln('Matrix 1');
				for i:=1 to row_mat1 do
				begin
					for j:=1 to col_mat1 do
					begin
					 	write(matrix1[i][j]:4);
					end; 
					writeln;
				end;
				writeln;
				// matrix 2
				writeln('Matrix 2');
				for i:=1 to row_mat2 do
				begin
					for j:=1 to col_mat2 do
					begin
					 	write(matrix2[i][j]:4);
					end; 
					writeln;
				end;
				

				{proses operasi perkalian}
				for i:=1 to row_mat1 do
					for j:=1 to col_mat2 do 
						for k:=1 to col_mat2 do 
						begin
							matrix3[i,j]:= matrix1[i,k]*matrix2[k,j]+matrix3[i,j]
						end;

				{tampilin matrix hasil}
				writeln('Hasil: ');
				for i:=1 to row_mat1 do 
				begin
					for j:=1 to col_mat2 do
					begin
						write(matrix3[i][j]:4);
					end;
					writeln;
				end;
			end 

			else
				writeln('Tidak dapat mengakalikan kedua matrix tersebut karena ');
				write('kolom matrix pertama(',col_mat1, ') tidak sama dengan baris matrix kedua (', row_mat2,')');
		end;
  // ============================== Procedure matrix multiplication ==========================
	// ============================== Main Program Matrix Calc ===============================
	begin 
		writeln('1 | Matrix Addition');
		writeln('2 | Matrix Mulplication');
		write('Select (1-2):');readln(choice);  

		if (choice = 1) then 
		begin
			clrscr;
			matrix_addition;
		end
		
		else if (choice = 2) then
		begin
			clrscr;
			matrix_multiplication;
		end;
   // ============================== Akhir Main Program Matrix Calc ===============================
// ======================================== Akhir Procedure matrix_calculator ========================================


	end;
// ===================================== MAIN PROGRAM ============================================
begin
	start:
	clrscr;
	writeln('-----------------------------------------------------------------');
	writeln('---------------------------|MAIN MENU|---------------------------');
	writeln('-----------------------------------------------------------------');
	writeln('1 | Forming Numbers');
	writeln('2 | Matrix Calculator');
	write('Select (1-2):');readln(choice);  
	writeln('-----------------------------------------------------------------');	

	if (choice < 1) or (choice > 2) then
	begin
		write('please choose the one on the menu :v');
		goto start;
	end

	else if (choice = 1) then 
	begin
		clrscr;
		writeln('---------------------------|FORMING NUMBERS|---------------------------');
		writeln('-----------------------------------------------------------------------');
		forming_numbers;
		writeln('-----------------------------------------------------------------------');
		writeln('-----------------------------------------------------------------------');
		write('Mau kembali atau tidak (y/n)? ');readln(choice2);
		if (choice2 = 'y') then
		begin
			goto start;
		end;
	end

	else if (choice = 2) then 
	begin
		clrscr;
		writeln('---------------------------|MATRIX CALCULATOR|---------------------------');
		writeln('-----------------------------------------------------------------------');
		matrix_calculator;
		writeln('');
		writeln('-----------------------------------------------------------------------');
		writeln('-----------------------------------------------------------------------');
		write('Mau kembali atau tidak (y/n)? ');readln(choice2);
		if (choice2 = 'y') then
		begin
			goto start;
		end;
	end;
end.
