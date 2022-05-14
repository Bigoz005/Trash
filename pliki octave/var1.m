
function [wynik] = var1 (symbol,varargin)

 nVarargs= length(varargin);
 [rows,cols]=size(varargin{1});
 wynik= zeros(rows,cols);


 for k=1:nVarargs
   [rows,cols]= size(varargin{k});
    for i=1:rows
       for j=1:cols
          switch symbol
             case '+'
               wynik(i,j)=wynik(i,j)+ varargin{k}(i,j);
             case '.*'
               wynik(i,j)=varargin{k}(i,j)* varargin{k}(i,j);
             case '*'
               sum=0;
               for m=1:cols
                 sum=sum+varargin{k}(i,m)*varargin{k}(m,j);
               end
               wynik(i,j)=sum;
              otherwise
              disp('Wprowadz poprawny symbol');
              return;
           end
        end
     end
 end
end
