function [wynik] = potega_t (array, num)

  [rows,cols]=size(array);
  wynik=zeros(rows,cols);
  iY=1;
  for iRow=1:rows
    iX=iRow;
    for iCol=1:cols
      wynik(iY)=array(iY)^num;
      iY=iY+1;
      iX=iX+rows;
    end
  end
end
