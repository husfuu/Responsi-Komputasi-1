program matrix_multiplication2;
	
var
	i, j, k, row_mat1, row_mat2, col_mat1, col_mat2: Integer;
	matrix1, matrix2, matrix3: array[1..10, 1..10] of Integer; 

begin
	writeln('Perkalian Matrix');
	write('Baris matrix 1: ');readln(row_mat1);
	write('Kolom matrix 1: ');readln(col_mat1);
	write('Baris matrix 2: ');readln(row_mat2);
	write('Kolom matrix 2: ');readln(col_mat2);

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
end.
