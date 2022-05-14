%funkcja ktora przyjmowala macierze,
%rozna ilosc macierzy...
%i wyswietlala elementy tych macierzy jesli wartosc ich jest >= 5,
%jesli nie, wyswietla zera


function varargout = zad1(varargin)
    nVarargs = length(varargin);
    varargout(1:nVarargs) = {[]};

    for k = 1:nVarargs
        varargout{k} = varargin{k};
        [rows,cols] = size(varargout{k});
        for i = 1:rows
            for j = 1:cols
                if(varargout{k}(i,j) < 5)
                    varargout{k}(i,j) = 0;
                end
            end
        end
    end
end