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
## @deftypefn {} {@var{retval} =} reEstimate (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Protech <Protech@DESKTOP-TBJQFOI>
## Created: 2018-07-19

function [a,b,PI1] = reEstimate (gamma,di_gamma,T,N,M,O)
  PI1=[0 0];
  for i=1:N
    PI1(i)=gamma(1,i);
  endfor
  
  for i=1:N
    for j=1:N
      num=0;
      den=0;
      for t=1:T-1
        num=num+di_gamma(t,i,j);
        den=den+gamma(t,i);
      endfor
      a(i,j)=num/den
    endfor
  endfor
  
  for j=1:N
    for k=1:M
      num=0
      den=0
      for t=1:T
        if O(t)==k
          num=num+gamma(t,j);
        endif
        den=den+gamma(t,j);
      endfor
      b(j,k)=num/den;
    endfor
  endfor
endfunction
