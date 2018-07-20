beta = 0
for i=1:N
  beta(T,i)=1
endfor

for t=T-1:-1:1
  for i=1:N
    for j=1:N
      beta(t,i)=beta(t,i)+A(i,j)*B(j,O(t+1))*beta(t+1,j);
    endfor
  endfor
endfor

for t=1:T
  for i=1:N
    gamma(t,i)=alpha(t,i)*beta(t,i)/prob;
  endfor
endfor

for t=1:T-1
  for i=1:N
    for j=1:N
      di_gamma(t,i,j)=(alpha(t,i)*A(i,j)*B(j,O(t+1))*beta(t+1,j))/prob
    endfor
  endfor
endfor
