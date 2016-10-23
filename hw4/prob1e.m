
p = @(x) (816.*x.^3) - (3835.*x.^2) + (6000.*x) - 3125;

t = 1:0.01:2;
y = p(t);
plot(t, y, 'color', 'blue'); hold on;

a = 1;
b = 2;
k = 0;

fprintf('step %i: a = %3.15f, b = %3.15f\n', k, a, b);
while b-a > eps
    x = (a + b)/2;
    if (p(x)>0)==(p(a)>0) 
        a = x;
    else
        b = x;
    end
    k = k + 1;
    plot(x, p(x), '.', 'color', 'green', 'MarkerSize', 12);
    fprintf('step %i: a = %3.15f, b = %3.15f\n', k, a, b);
end

plot(x, p(x), '.', 'color', 'red', 'MarkerSize', 15);