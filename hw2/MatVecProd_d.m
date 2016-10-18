%Using a single loop which access the matrix entries a row vector at a time
function [p] = MatVecProd_d(A, x)
	[n n] = size(A);
	p = zeros(n,1);

	for r = 1:n
		p(r) = p(r) + A(r, :)*x; 
	end
end