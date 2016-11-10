
t = (((1:11)-1)/10)';
y = erf(t);

n = 5;
X = ones(11, n);
for k = 2:n
   z = 1./(1+t);
   X(:, k) = exp(-t.^2) .* z.^(n-k);
end
X(:, n) = ones(size(t));

plot(t, y, 'o'); hold on;
b = X\y;
pt = X*b;
err = max(pt - y)
plot(t, pt);

hold off;