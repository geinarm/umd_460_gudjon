function [ X ] = myinv( A )
[n,n] = size(A);
[L,U,p] = lutx(A);
E = eye(n);
X = zeros(n);

for i = 1:n
    e = E(:, i); 
    % Permutation and forward elimination
    y = forward(L,e(p));
    % Back substitution
    x = backsubs(U,y);   
    X(:, i) = x;
end


function x = forward(L,x)
% FORWARD. Forward elimination.
% For lower triangular L, x = forward(L,b) solves L*x = b.
[n,n] = size(L);
x(1) = x(1)/L(1,1);
for k = 2:n
   j = 1:k-1;
   x(k) = (x(k) - L(k,j)*x(j))/L(k,k);
end


% ------------------------------

function x = backsubs(U,x)
% BACKSUBS.  Back substitution.
% For upper triangular U, x = backsubs(U,b) solves U*x = b.
[n,n] = size(U);
x(n) = x(n)/U(n,n);
for k = n-1:-1:1
   j = k+1:n;
   x(k) = (x(k) - U(k,j)*x(j))/U(k,k);
end