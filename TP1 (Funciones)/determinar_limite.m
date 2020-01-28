function[espacio_nulo] = determinar_limite(matriz)
	dimension = length(matriz);
	resta  =  matriz - eye(dimension);

	espacio_nulo = null(resta);
	disp("El rango de I - M es: "),disp(rank(resta));
