% Illustration 1
a=rand(4,1)
% inner product of two vectors results in a scalar
a'*a
% outer product of two vectors results in a rank-1 matrix
a*a'
%
% Illustration 2
% Reflection of a vector x through a plane characterized by normal v
x=[ 1 2]'
% normal to play
v=[1,1]'
% Householder reflection via v
x-2*((v'*x)/(v'*v))*v  % note in this form we did not create the matrix but directly operated on the vector
%
% Illustration 3
% Zeroing columns of a matrix below the diagonal via the Householder
% transform
A=rand(3) % create a matrix
x=A(:,1)  % extract first colun
alpha=norm(x) % get the norm of the column --- this will be magnitude of first entry
v=x-alpha*[1,0,0]'  % create vector v (normal to reflection plane) which will work on vector x
% display Householder matrix
H=eye(3)-2*(v*v')/(v'*v)
% show matrix does the job on x
H*x
% show that the Householder transform can be done more efficiently using
% scalars and vectors
alpha=norm(x)
e1=[1 0 0]'
v=x-alpha*e1
ctop=v'*x
cbot=v'*v
x-(2*(ctop/cbot))*v
H=eye(3)-2*(v*v')/(v'*v)
result1=H*x
result2=x-(2*(v'*x)/(v'*v))*v