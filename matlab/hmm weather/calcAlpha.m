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
## @deftypefn {} {@var{retval} =} calcAlpha (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Protech <Protech@DESKTOP-TBJQFOI>
## Created: 2018-07-19

function alpha = calcAlpha (A,B,O,PI,T,N)
  for i=1:N
    alpha(1,i)=PI(i)*B(i,O(1));
  endfor

  for t=1:T-1
    for j=1:N
        u=0;
        for i=1:N
            u=u+alpha(t,i)*A(i,j);
        endfor
        alpha(t+1,j)=u*B(j,O(t+1));
    endfor
  endfor
endfunction
