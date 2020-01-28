function[A] = construir_matriz(dimension)
	A = [ , ];
	for i = 1 : dimension
		for j = 1 : dimension

			if ( i == j) && (i == 1)  
				A(i,j) = 0.5;
			elseif (i == j) && (i == dimension)
				A(i,j) = 0.7;
			elseif ( i == j+1 )
				A(i,j) = 0.5;
			elseif (i == j - 1)
				A(i,j) = 0.3;
			elseif ( i == j )
				A(i,j) = 0.2;
			endif;
		endfor;
	endfor;
	
endfunction;