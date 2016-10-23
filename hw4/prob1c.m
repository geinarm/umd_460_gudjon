format LONG;
p = @(x) (816.*x.^3) - (3835.*x.^2) + (6000.*x) - 3125;
p_prime = @(x) (2448.*x.^2) - (7670.*x) + 6000;

t = 1.35:0.01:1.6;
y = p(t);
plot(t, y, 'color', 'blue'); hold on;

x = 1.5;
xprev = 0;
k = 0;

fprintf('X_%i: %3.15f \n', k, x);
while abs(x - xprev) > eps*abs(x)
    xprev = x;
    plot(x, p(x), '.', 'color', 'green', 'MarkerSize', 12);
    x = x - p(x)/p_prime(x);
    k = k + 1;
    fprintf('X_%i: %3.15f \n', k, x);
end

plot(x, p(x), '.', 'color', 'red', 'MarkerSize', 15);
ylim([-2, 0.5]);
