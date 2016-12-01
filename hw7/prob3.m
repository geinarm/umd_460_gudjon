
F = @(x)2/(1+x^2);
a = -1;
b = 1;

X = 1:1000;
pi_ish = zeros(size(X));
for n = X
    pi_ish(n) = compTrap(F, a, b, n);
end

err = pi - pi_ish;

semilogy(X, err);
xlabel('n');
ylabel('error');