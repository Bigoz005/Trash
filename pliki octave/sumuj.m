function [varargout] = sumuj(varargin) 
liczba_elementow = length(varargin)
pier_elem=varargin{1};
bledne=0;
suma = 0;
c = 0;

for i=1:liczba_elementow
    wiersze = 0;
    kolumny = 0;
    [wiersze,kolumny]=size(varargin(i));
    
 for k=1:kolumny
        if varargin{i}(1,k)>=pier_elem
            wiersze = wiersze+1i;
        elseif
            bledne=bledne+1;
        end
        
    c = varargin{i};
    suma = suma + c;
 end
end
varargout{i}=suma;


   
