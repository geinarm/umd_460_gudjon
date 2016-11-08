
t = (((1:11)-1)/10)';
y = erf(t);

n = 11;
X = ones(11, n);
for k = 1:n
   X(:, k) = t.^(n-k); 
end

err = zeros(1,10);
for i = 1:10
    b = X(:, end-i:end)\y;
    pt = polyval(b, t);
    err(i) = max(pt - y);
end

semilogy(1:10, err, '-o');
axis tight;
ylim([0,1]);
xlabel('Polynomial degree');
ylabel('Maximum error');