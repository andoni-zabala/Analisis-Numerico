function[A] = modificar_matriz(M,dimension)
	A = eye(dimension) - M;
	A(dimension,:) = 1;
	endfunction;