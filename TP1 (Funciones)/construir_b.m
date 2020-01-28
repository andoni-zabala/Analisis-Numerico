function[b] = construir_b(dimension,distribucion)
	b = zeros(dimension,1);
	
	b(dimension) = dimension * distribucion;