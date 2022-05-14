function [wynik] = funkcja1()

a = {[1,1,0],[-2,1,1];[-1,2,-1],[2,2]};
b = {[2,0,2],[0,1,3];[1,1],[0,1/2,1]};

[m,n] = size(a)
[i,j] = size(b)
temp_x = cell(m,j);
if (size(a) == size(b))
if (size(a) == size(b))
  for x = 1 : m*j  
    temp_x(x) = {funkcja(a{x},b{x})};
  end
else 
    disp('error');
end

wynik=temp_x;
end