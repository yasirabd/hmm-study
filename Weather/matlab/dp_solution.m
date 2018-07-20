for i=1:N
  for j=1:N
    for k=1:N
      for l=1:N
        for m=1:N
          for n=1:N
            p(i,j,k,l,m,n) = PI(i)*B(i,O(1))*A(i,j)*B(j,O(2))*A(j,k)*B(k,O(3))*A(k,l)*B(l,O(4))*A(l,m)*B(m,O(5))*A(m,n)*B(n,O(6));
          endfor
        endfor
      endfor
    endfor
  endfor
endfor

sumprob=0
for i=1:N
  for j=1:N
    for k=1:N
      for l=1:N
        for m=1:N
          for n=1:N
            sumprob=sumprob+p(i,j,k,l,m,n);
          endfor
        endfor
      endfor
    endfor
  endfor
endfor

for i=1:N
  for j=1:N
    for k=1:N
      for l=1:N
        for m=1:N
          for n=1:N
            pnorm(i,j,k,l,m,n)=p(i,j,k,l,m,n)/sumprob;
          endfor
        endfor
      endfor
    endfor
  endfor
endfor

[C,I] = max(pnorm(:));
[I1, I2, I3, I4, I5, I6] = ind2sub(size(pnorm),I);
DP_index = [I1, I2, I3, I4, I5, I6]
DP_maximal_probability = pnorm(I1, I2, I3, I4, I5, I6)*sumprob
DP_normalized_maximal_probability=pnorm(I1, I2, I3, I4, I5, I6)