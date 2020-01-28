function [vgseidel,cant_i]=g_seidel(A,b,dimension,cant_imax,cota_err)
  cant_i = 0;
  err = 1;
  xo = zeros(dimension,1);
  vgseidel = xo;
  while (err>cota_err) && (cant_i <= cant_imax)
    cant_i = cant_i+1;
    for i = 1:dimension
      aux = 0;
      for j = 1:dimension
        if (j~=i)
          aux = aux+(A(i,j)*vgseidel(j));
        endif
      endfor
      vgseidel(i) = (b(i)-aux)/(A(i,i));
    endfor
    err = norm(vgseidel-xo);
    xo = vgseidel;
  endwhile
  if ( cant_i<cant_imax )
  disp('El numero de iteraciones realizadas fue: ');
  disp( cant_i );
  disp('El vector obtenido fue: ');
  disp( vgseidel );
  disp('El error absoluto del resultado es: '),disp(err);
  else
  disp('Se alcanzo el numero maximo de iteraciones sin obtener un resultado admisible.')
  endif
endfunction