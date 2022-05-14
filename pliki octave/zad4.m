% program który dodaje macierze, ale po za ich drug¹ kolumn¹
%A = [ 1 2 3; 1 2 3; 1 2 3];
%B = [ 1 1 1; 1 1 1; 1 1 1]
%zad4(A,B)

function wynik = zad4(varargin)
    nVarargs = length(varargin);
    [rows,cols] = size(varargin{1});
    wynik = zeros(rows, cols-1);

    for k = 1:nVarargs
        [rows,cols] = size(varargin{k});
        for i = 1:rows
            for j = 1:cols
                if(j ~= 2)
                    if(j>2)
                        wynik(i,j-1) = wynik(i,j-1)+varargin{k}(i,j);
                    else
                        wynik(i,j) = wynik(i,j)+varargin{k}(i,j);
                    end
                end
            end
        end
    end
end