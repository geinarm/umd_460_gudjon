%Using a single loop which access the matrix entries a column vector at a time
function [p] = MatVecProd_c(A, x)
	[n n] = size(A);
	p = zeros(n,1);

	for c = 1:n
		p = p + A(:, c)*x(c); 
	end
end