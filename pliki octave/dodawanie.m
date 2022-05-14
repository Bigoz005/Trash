function [ wynik ] = dodawanie( a,b )


  [ma,na]=size(a);
  [mb,nb]=size(b);

  if((ma==mb)&&(na==nb))
    [Row,Col]=size(b)
    wynik=zeros(Row,Col);
    iY=1;
    for iRow=1:Row
      iX=iRow;
      for iCol=1:Col
        wynik(iY)=a(iY)+b(iY);
        iY=iY+1;
        iX=iX+Row;
      end
    end
  else
  disp('Size a ~= Size b');
  end
end



