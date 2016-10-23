
p = @(x) (816.*x.^3) - (3835.*x.^2) + (6000.*x) - 3125;

x = 1.43:0.01:1.71;
y = p(x);

x_zero = [25/17, 25/16, 5/3];

plot(x, y, 'color', 'blue'); hold on;
plot(x_zero, p(x_zero), '.', 'color', 'red', 'MarkerSize', 15);
axis tight;