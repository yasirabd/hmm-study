T = 6
N = 2
M = 3
V = {1, 2, 3}
A = [0.7 0.3; 0.4 0.6]
B = [0.1 0.4 0.5; 0.6 0.3 0.1]
PI = [0.6 0.4]
O = [2 2 3 1 3 2]

for i=1:N
    alpha(1,i)=PI(i)*B(i,O(1));
end

for t=1:T-1
    for j=1:N
        u=0;
        for i=1:N
            u=u+alpha(t,i)*A(i,j);
        end
        alpha(t+1,j)=u*B(j,O(t+1));
    end
end

prob=0;
for i=1:N
    prob=prob+alpha(T,i);
end