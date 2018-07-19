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
## @deftypefn {} {@var{retval} =} prob3 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Protech <Protech@DESKTOP-TBJQFOI>
## Created: 2018-07-19

function [A,B,PI,p_temp] = prob3 (A,B,PI,O,T,N,M)
  p=0;
  p_temp=1;
  while p<p_temp
    alpha = calcAlpha(A,B,O,PI,T,N);
    p = calcP(alpha,T,N);
    beta = calcBeta(A,B,O,N,T);
    gamma = calcGamma(alpha,beta,p,T,N);
    di_gamma = calcDiGamma(alpha,beta,A,B,O,p,N,T);
    [a,b,PI1] = reEstimate(gamma,di_gamma,T,N,M,O);
    p_temp = calcP(calcAlpha(a,b,O,PI1,T,N), T, N);
    A = a;
    B = b;
    PI = PI1;
  endwhile
endfunction
