## hejo

function [wynik,tmp] = zadanie(varargin)
 
if(nargin<=1)
    error('Podano za malo argumentow');
end;

tmp=0;

wynik=[];

elementy=length(varargin);

[n,m]=size(varargin{1});
wynik=zeros(n,m);
wynik=wynik+varargin{1}
for(i=2: elementy)
    [n1,m1]=size(varargin{i})
        if(n1== n && m1 ==m) 
            wynik=wynik+varargin{i};
        else
            tmp=tmp+1;
        end;
         
end;


endfunction;
