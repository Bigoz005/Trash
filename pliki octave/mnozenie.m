function [ wynik ] = mnozenie( a,b )

  [ma,na]=size(a);
  [mb,nb]=size(b);

  if(na==mb)
    wynik=zeros(ma,nb);
    for row=1:ma
        for col=1:nb
          sum=0;
            for k=1:na
              sum=sum+a(row,k)*b(k,col);
            end
        wynik(row,col)=sum;
        end
  end     
  
    elseif (ma&&na==1)
        wynik=b;
        for row=1:mb
          for col=1:nb
            wynik(row,col)=wynik(row,col)*a;
          end
        end
        
     elseif (mb&&nb==1)
        wynik=a;
          for row=1:ma
            for col=1:na
              wynik(row,col)=wynik(row,col)*b;
            end
          end    
      else
        disp('Col a ~= Row b');
       end
end


