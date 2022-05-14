%funkcja przyjmuje dowoln¹ ilosc macierzy o ró¿nych rozmiarach
%i funkcja ma zwrocic ile ka¿da macierz ma dwójek czwórek i pi¹tek
%w formie [ x y z ]

function varargout = zad5a(varargin)
    nVarargs = length(varargin);
    varargout(1:nVarargs) = { [ zeros(1,3) ] };

    for k = 1:nVarargs;
        [rows, cols] = size(varargin{k});
        for i = 1:rows
            for j = 1:cols
                if(varargin{k}(i,j) == 2)
                    varargout{k}(1) = varargout{k}(1)+1;
                end
                if(varargin{k}(i,j) == 4)
                    varargout{k}(2) = varargout{k}(2)+1;
                end
                if(varargin{k}(i,j) == 5)
                    varargout{k}(3) = varargout{k}(3)+1;
                end
            end
        end
    end
end