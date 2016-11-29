function [ T ] = compTrap( F, a, b, n )

h = (b-a)/(n-1);
x = a + (0:n-1) .* h;

fx = zeros(size(x));
for i = 1:n
    fx(i) = F(x(i));
end

T = h/2.*fx(1) + sum(h.*fx(2:end-1)) + h/2.*fx(end);

end

