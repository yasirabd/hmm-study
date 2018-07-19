## Copyright (C) 2018 Protech
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
## @deftypefn {} {@var{retval} =} calcDiGamma (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Protech <Protech@DESKTOP-TBJQFOI>
## Created: 2018-07-19

function di_gamma = calcDiGamma (alpha,beta,A,B,O,p,N,T)
  for t=1:T-1
    for i=1:N
      for j=1:N
        di_gamma(t,i,j)=(alpha(t,i)*A(i,j)*B(j,O(t+1))*beta(t+1,j))/p;
      endfor
    endfor
  endfor
endfunction
