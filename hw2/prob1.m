
Ns = [128, 256, 512];%,1024, 2048]; %4096
M = zeros(numel(Ns), 5);

for i = numel(Ns)
	n = Ns(i);
	A = magic(n);
	x = ones(n, 1);

	%Using a pair of nested loops that access the matrix entries in column major order
	tic
	b = MatVecProd_a(A,x);
	M(i, 1) = toc;

	%Using a pair of nested loops that access the matrixentries in row major order
	tic
	b = MatVecProd_b(A,x);
	M(i, 2) = toc;

	%Using a single loop which access the matrix entries a column vector at a time
	tic
	b = MatVecProd_c(A,x);
	M(i, 3) = toc;

	%Using a single loop which access the matrix entries a row vector at a time
	tic
	b = MatVecProd_d(A,x);
	M(i, 4) = toc;

	% Using Matlab’s built in matrix vector product
	tic
	b=A*x;
	M(i, 5) = toc;
end

plot(M);