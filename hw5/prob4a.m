load longley.dat;
y = longley(:,1);
X = longley(:,2:7);

[m, ~] = size(X);
X = [ones(m,1),X];

b = X\y;

py = X*b;

err = abs(y-py);
errorbar(1:m, py, err);