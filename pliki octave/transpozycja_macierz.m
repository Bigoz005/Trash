function [ wynik ] = transpozycja_m( a )

  [Row,Col] = size(a);
  wynik = zeros(Col, Row); 
  iY=1;
  for iRow=1:Row
    iX=iRow;
    for iCol=1:Col
      wynik(iX)=a(iY);
      iX=iX+Row;
      iY=iY+1;
    end
  end
  wynik=real(wynik) -imag(wynik)*1i;
end
