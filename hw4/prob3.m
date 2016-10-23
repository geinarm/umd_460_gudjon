
T_i = 20;
T_s = -15;
alpha = 0.138 * 10^-6;
t = 60 * 24 * 60 * 60; %60 days

T = @(x) (T_i - T_s) * erf(x/2*sqrt(alpha*t)) + T_s;

x = 0:0.1:5;
plot(x, T(x));

z = fzerotx(T, [0, 5])