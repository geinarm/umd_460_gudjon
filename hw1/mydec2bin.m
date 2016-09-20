function y = mydec2bin(x)
%x is a double precision value strictly less than 1.
%y is an integer array with 52 entries … these are zero or one

y = zeros(1, 52);
leftover = x;

for n=1:52
	f = 2^-n;

	if (f <= leftover)
		leftover = leftover - f;
		y(n) = 1;
	end
end