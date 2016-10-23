
p = @(x) (816.*x.^3) - (3835.*x.^2) + (6000.*x) - 3125;

t = 1:0.01:2;
y = p(t);
plot(t, y, 'color', 'blue'); hold on;

x=2;
xprev=1;
k=1;

fprintf('X_%i: %3.15f \n', 0, xprev);
fprintf('X_%i: %3.15f \n', 1, x);
plot(x, p(x), '.', 'color', 'green', 'MarkerSize', 12);
plot(xprev, p(xprev), '.', 'color', 'green', 'MarkerSize', 12);
%while abs(x-xprev) > eps*abs(x)
while abs(p(x)) > eps
    sn = (p(x)-p(xprev))/(x-xprev);
    xnext = x - p(x)/sn;
    k = k + 1;
    xprev = x;
    x = xnext;
    
    plot(x, p(x), '.', 'color', 'green', 'MarkerSize', 12);
    fprintf('X_%i: %3.15f \n', k, x);
end

plot(x, p(x), '.', 'color', 'red', 'MarkerSize', 15);