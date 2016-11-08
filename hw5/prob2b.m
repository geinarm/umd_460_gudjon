
t = (((1:11)-1)/10)';
y = erf(t);

n = 11;
X = ones(11, n);
for k = 1:n-1
   X(:, k) = t.^((2*n)-(2*k-1));
end
X(:, n) = ones(size(t));

plot(t, y, 'o'); hold on;
err = zeros(1,n-1);
for i = 1:n-1
    b = X(:, end-i:end)\y;
    pt = polyval(b, t);
    err(i) = max(pt - y);
    %plot(0:0.01:1, pt);
end
hold off;

semilogy(1:n-1, err, '-o');
axis tight;
xlabel('Polynomial degree');
ylabel('Maximum error');