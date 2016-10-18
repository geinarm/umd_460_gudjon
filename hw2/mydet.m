function [ d ] = mydet( A )
	[~, U, ~, sig] = lutx(A);
	du = prod(diag(U));
	d = sig*du;
