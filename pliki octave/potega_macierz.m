function [wynik] = potega_m (array,num)
  
  [rows,cols]=size(array);
  if(rows~=cols)
    disp('Tablica musi byc macierza');
  else 
  if(num==1)
    wynik=array;
  else
  wynik=array^num;
  end
end
