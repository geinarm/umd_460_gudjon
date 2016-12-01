
%{
F = @(x) humps(x);
a = 0;
b = 1;
tol = 10^-4;
%}

%{
F = @(x) humps(x);
a = 0;
b = 1;
tol = 10^-6;
%}

%{
F = @(x) humps(x);
a = -1;
b = 2;
tol = 10^-4;
%}

%{
F = @(x) sin(x);
a = 0;
b = pi;
tol = 10^-8;
%}

%{
F = @(x) cos(x);
a = 0;
b = (9/2)*pi;
tol = 10^-6;
%}

%{
F = @(x) sqrt(x);
a = 0;
b = 1;
tol = 10^-8;
%}

%{
F = @(x) sqrt(x)*log(x);
a = eps;
b = 1;
tol = 10^-8;
%}

%{
F = @(x) tan(sin(x))-sin(tan(x));
a = 0;
b = pi;
%tol = 10^-8;
tol = 10^-4;
%}

%{
F = @(x) 1/(3*x -1);
a = 0;
b = 1;
tol = 10^-4;
%}

%{
F = @(x) x^(8/3) *(1-x)^(10/3);
a = 0;
b = 1;
tol = 10^-8;
%}

F = @(x) x^25 * (1-x)^2;
a = 0;
b = 1;
tol = 10^-8;

quadgui(F, a, b, tol);