function [L,U,p] = lutx(A)
    [n,n] = size(A);
    p = (1:n)';

    for k = 1:n-1
        % Find index of largest element below diagonal in k-th column
        r = -Inf;
        m = k;
        for i = k:n
            if abs(A(i,k)) > r
                r = abs(A(i,k));
                m = i;
            end
        end

        % Skip elimination if column is zero
        if (A(m,k) ~= 0)
            % Swap pivot row
            if (m ~= k)
                for i = 1:n
                    am = A(m, i);
                    ak = A(k, i);
                    A(k, i) = am;
                    A(m, i) = ak;
                end
                
                pk = p(k);
                p(k) = p(m);
                p(m) = pk;
            end

            % Compute multipliers
            for i = k+1:n
                A(i,k) = A(i,k)/A(k,k);
            end

            % Update the remainder of the matrix
            for i = k+1:n
                for j = k+1:n
                    A(i,j) = A(i,j) - A(i,k)*A(k,j); 
                end
            end
        end
    end

    % Separate result
    L = tril(A,-1) + eye(n,n);
    U = triu(A);