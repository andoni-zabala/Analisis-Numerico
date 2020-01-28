function[] = principal()
	format long;
	% 1) %
	dimension = input('Ingrese la cantidad de filas y columnas de la matriz M: ');
	M = construir_matriz(dimension)
	distribucion = input('Ingrese la distribucion inicial de mensajes: ');
	vector = construir_vector(distribucion,dimension);
	% 2) %
	limite = tender_limite(M,vector);
	disp("El limite con 60 iteraciones es:"),disp(limite);
	% 3) %
	nulo = determinar_limite(M);
	disp("El espacio nulo de I - M es: "),disp(nulo);
 	% 4) %
	A = modificar_matriz(M,dimension)
  	b = construir_b(dimension,distribucion)
  	disp("Solucion del sistema Ax = b por Gauss : "),disp(A\b),disp('');
 	% 5) %
	disp('---SEL para n = 20---'),disp('');
	dimension = 20;
	M = construir_matriz(dimension);
	A = modificar_matriz(M,dimension);
	b = construir_b(dimension,distribucion);

  	cant_imax = input('Ingrese la cantidad maxima de iteraciones admisibles: '),disp('');
  	cota_err = input('Ingrese la cota de error admisible: '),disp('');
  	disp('Jacobi'),disp('');
  	jacobi(A,b,dimension,cant_imax,cota_err);
  	disp('Gauss-Seidel'),disp('');
  	g_seidel(A,b,dimension,cant_imax,cota_err);
    disp(' ');
    %Construccion de T de Gauss Seidel y calculo de w%
    T=construir_tgs(A);
    w=w_sor(T);
    resp_sor(A,w);
    sor(A,b,dimension,cant_imax,cota_err,w);
    disp('El metodo SOR con ese w no sirve, prueben con 1,3 que anda bien: ');
    w=input('Ingrese un nuevo valor de w: ');
    resp_sor(A,w);
    sor(A,b,dimension,cant_imax,cota_err,w);