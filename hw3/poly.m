
%i = 0:1:4;
%fx = cos(i);
%n = numel(i);

%[x, y] = meshgrid(1:n, 1:n);

%phi = i(y).^(x-1);

%a = phi\fx';

%%Interoplation
%i2 = 0:0.1:4;
%[x, y] = meshgrid(1:n, 1:numel(i2));
%xj = i2(y).^(x-1);

%fxj = xj*a;

%plot(i, fx, '-o'); hold on;
%plot(i2, fxj, 'color', 'red');


x = [1,2,3];
fx = [-5, -3,2];

plot(x, fx, '-o'); hold on;

L0 = @(t) (t-2).*(t-3) ./ 2;
L1 = @(t) -(t-1).*(t-3);
L2 = @(t) (t-1).*(t-2) ./ 2;

P = @(t) -5*L0(t) - 3*L1(t) + 2*L2(t);


t = 1:0.1:3; 
pt = P(t);

plot(t, pt, '-', 'color', 'red');