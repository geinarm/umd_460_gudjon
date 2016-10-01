%Using a pair of nested loops that access the matrix entries in column major order
function [p] = MatVecProd_a(A, x)

[n, n] = size(A);
p = zeros(n, 1);

for c = 1:n
	for r = 1:n
		p(r) = p(r) + A(r, c)*x(c);
	end
end

end