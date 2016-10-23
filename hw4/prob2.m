
p = @(x) x-tan(x);
Z = zeros(1,10);
for i = 1:10    
    a = pi*i;
    b = I+pi/2 - 10^-8;
    
    z = fzero(p, [a,b]);
    Z(i) = z;
    fprintf('x = %0.15f\n', z);
end

err = Z - tan(Z);

