function [wynik]= funkcja(a,b)
  m = size(a,2)
  n = size(b,2)
  wynik = zeros(1,m+n-1);
  for k = 1:m+n-1
    for j = max(1,k+1-n):min(k,m)
      temp = a(1,j)*b(1,k+1-j);
      wynik(k) = wynik(k) + temp;
    end
  end
end