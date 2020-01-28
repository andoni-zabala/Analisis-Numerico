function[limite] = tender_limite(matriz,vector)
	i = 0;
	while ( i < 60)
		vector = matriz * vector;
		i++;
	endwhile;
	limite = vector;
endfunction;
	
