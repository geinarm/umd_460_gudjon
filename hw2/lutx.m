function [L,U,p,sig] = lutx(A)
   [n,n] = size(A);
   p = (1:n)';
   sig = 1;

   for k = 1:n-1
      % Find index of largest element below diagonal in k-th column
      [r,m] = max(abs(A(k:n,k)));
      m = m+k-1;

      % Skip elimination if column is zero
      if (A(m,k) ~= 0)
      
         % Swap pivot row
         if (m ~= k)
            A([k m],:) = A([m k],:);
            p([k m]) = p([m k]);
            sig = sig*-1;
         end

         % Compute multipliers
         i = k+1:n;
         A(i,k) = A(i,k)/A(k,k);

         % Update the remainder of the matrix
         j = k+1:n;
         A(i,j) = A(i,j) - A(i,k)*A(k,j); 
      end
   end

   % Separate result
   L = tril(A,-1) + eye(n,n);
   U = triu(A);