
x = [-5,0,0]';
I = [1,0,0]';

v = x - (norm(x)*I);

H = eye(3) - 2*(v*v')/(v'*v);