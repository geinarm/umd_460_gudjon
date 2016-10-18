%Using a pair of nested loops that access the matrixentries in row major order
function [p] = MatVecProd_b(A, x)
	[n, n] = size(A);
	p = zeros(n, 1);

	for r = 1:n
		for c = 1:n
			p(r) = p(r) + A(r, c)*x(c);
		end
	end
end