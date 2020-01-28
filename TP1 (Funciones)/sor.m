## Copyright (C) 2019 Fermin
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} sor (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Fermin <Fermin@FERMIN-PC>
## Created: 2019-10-03

function [vsor,cant_is]=sor(A,b,dimension,cant_imax,cota_err,w)
  cant_is = 0;
  err = 1;
  xo = zeros(dimension,1);
  vsor = xo;
  while (err>cota_err) && (cant_is <= cant_imax)
    cant_is = cant_is+1;
    for i = 1:dimension
      aux = 0;
      for j = 1:dimension
        if (j~=i)
          aux = aux+(A(i,j)*vsor(j));
        endif
      endfor
      vsor(i) =((1-w)*xo(i))+(w*(b(i)-aux)/(A(i,i)));
    endfor
    err = norm(vsor-xo);
    xo = vsor;
  endwhile
  if ( cant_is<cant_imax )
  disp('El numero de iteraciones realizadas fue: ');
  disp( cant_is );
  disp('El vector obtenido fue: ');
  disp( vsor );
  disp('El error absoluto del resultado es: '),disp(err);
  else
  disp('Se alcanzo el numero maximo de iteraciones sin obtener un resultado admisible.')
  endif
endfunction

