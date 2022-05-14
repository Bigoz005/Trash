%funkcja przyjmuje dowoln¹ ilosc macierzy o ró¿nych rozmiarach
%i funkcja ma zwrocic ile ka¿da macierz ma dwójek czwórek i pi¹tek
%w formie [ x y z ]

function varargout = zad5b(varargin)
    nVarargs = length(varargin);
    varargout(1:nVarargs) = {[]};

    for k = 1:nVarargs
        [rows,cols] = size(varargin{k});
        ilosc2 = 0;
        ilosc4 = 0;
        ilosc5 = 0;

        for i = 1:rows
            for j = 1:cols
                switch varargin{k}(i,j)
                    case 2
                        ilosc2 = ilosc2+1;
                    case 4
                        ilosc4 = ilosc4+1;
                    case 5
                        ilosc5 = ilosc5+1;
                end
            end
        end

        varargout{k} = [ilosc2 ilosc4 ilosc5];
    end
end