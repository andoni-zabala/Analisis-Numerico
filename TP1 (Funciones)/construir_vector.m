function[vector_inicial] = construir_vector(distribucion,dimension)
	for i = 1 : dimension
		vector_inicial(i) = distribucion;
	endfor;
	vector_inicial = vector_inicial'
endfunction;
