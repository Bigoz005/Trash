function [ c ] = vectorr( a,b )
m = size(a,2);
n = size(b,2);
kmax = n + m - 1;
c = zeros(1, kmax);
for k=1:kmax
    for j=max(1, k+1-n):min(k, m)
        c(:,k) = c(:,k) + a(:,j) * b(:,k-j+1);
    end
end
end

