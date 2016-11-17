

I = imread('img.jpg');
I = im2double(I);
[m,n, ~] = size(I);
I = reshape(I, m, 3*n);

%imshow(I);

[V, S, U] = svd(I', 0);
sigma = diag(S);
%semilogy(sigma,'.');
%pause

E = zeros(size(I));
for k = 1:100
    E = E + sigma(k)*U(:,k)*V(:,k)';
end
E = reshape(E, m, n, 3);

imshow(E);