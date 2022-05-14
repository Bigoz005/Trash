%nazwa('+',A,B,C) pierwszym argumentem jest '+' (moze byc dodawanie albo odejmowanie )
%kolejnymi argumentami beda jakies macierze A,B,C ( dowolna liczba macierzy)
%jak wygladaja maceirze np
%A= [3 4 5; 8 7 2] B= [3] skalar C= [3 4 0]
%A to macierz referencyjna i chodzi o to zeby dodac np do A macierz B
%i zeby dodawal sie w tym przypadku tylko ten pierwszy element czyli 3+
%Natomiast gdy liczba wierszy jest wieksza niz w macierzy referencyjnej A
%wtedy pomijamy macierz, nie dodajemy

function wynik = zad3(symbol, varargin)
    nVarargs = length(varargin);
    [rows,cols] = size(varargin{1});
    wynik = zeros(rows, cols);

    for k = 1:nVarargs
        [rows,cols] = size(varargin{k});
        for i = 1:rows
            for j = 1:cols
                try
                    switch symbol
                        case '+'
                            wynik(i,j) = wynik(i,j)+varargin{k}(i,j);
                        case '-'
                            wynik(i,j) = wynik(i,j)-varargin{k}(i,j);
                    end
                catch
                end
            end
        end
    end
end