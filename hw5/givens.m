% Generate a retangular matrix
A=[1 1; 1 3; 1 5]
% we want to first zero out the (2,1) entry using (1,1)
% compute x, c, and s (see class slides)
x=sqrt(A(1,1)^2+A(2,1)^2);c=A(1,1)/x;s=A(2,1)/x;
x,c,s
% create the 2x2 matrix which converts the 2x1 vector to the required form
G12=[c,s;s,-c]
% check
G12*[A(1,1) A(2,1)]' 
% we actually need a 3x3 matrix. We embed our 2x2 matrix G12 in the
% extended matrix EG12. This matrix is created by replacing the appropriate
% block in the 3x3 identity matrix. It seroes out the (2,1) element
EG12=[G12(1,1) G12(1,2) 0; G12(2,1) G12(2,2), 0; 0 0 1]
% check the application on the overall 3x2 matrix A
% store the answer in A
A=EG12*A
% now work on the (3,1) entry using the current (1,1) entry
x=sqrt(A(1,1)^2+A(3,1)^2);c=A(1,1)/x;s=A(3,1)/x;
x,s,c
% create the extended matrix EG13, which zeroes out the (3,1) element
EG13=[c 0 s; 0 1 0; s 0 -c]
% apply it to A and store result in A
A=EG13*A
% now work on the (3,2) entry using the current (2,2) entry
x=sqrt(A(2,2)^2+A(3,2)^2);c=A(2,2)/x;s=A(3,2)/x;
x,s,c
% create the extended matrix EG23 which zeroes out the (3,2) element
EG32=[1 0 0; 0 c s; 0 s -c]
A=EG32*A