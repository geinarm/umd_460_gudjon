%%Generate N random double presision numbers
N = 100000;

%% Random sign
s = -1 + ((rand(N, 1)>0.5) * 2);
%% Random exponent
e = floor(rand(N, 1) * 2^11);
%% Random mantissa
f = rand(N, 1) +1;

x = s .* 2.^(e-1023) .* f;
y = x.*(1./x) == 1;

sum(y) / N