function [L U] = LUbez(A);
    n = size(A, 1);
    U = zeros(n);
    L = eye(n);
    for k = 1:n;
        for l = (k+1):n;
            m = A(l, k) / A(k, k);
            L(l, k) = m;
            A(l, :) = A(l, :) - m .* A(k, :);
        end
    end
    U = A;
