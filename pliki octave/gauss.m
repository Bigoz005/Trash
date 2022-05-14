function [x] = gauss(A,b)
n = size(A,1);
A  = [A b];
for k=1:n-1
   for i=k+1:n
      A(i,:) = A(i,:) - (A(i,k)/A(k,k))*A(k,:);
   end
end
b = A(:,n+1)
A = A(:,1:n)
x = zeros(n,1)
for i=n:-1:1
   x(i) = (b(i)-A(i,:)*x)/A(i,i)
end