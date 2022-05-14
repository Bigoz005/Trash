%a matlab, znowu vararg-in i -out,
%i sumowanie eleemntow znajduj¹cych siê na czterech krawêdziach macierzy
%(wyniki jako oddzielne sumy, chyba - nie s³ucha³em go zbytnio)

function varargout = zad2(varargin)
    nVarargs = length(varargin);
    varargout(1:nVarargs) = {[]};

    for k = 1:nVarargs
        varargout{k} = [varargout{k} sum(varargin{k}(1,1:end))];
        varargout{k} = [varargout{k} sum(varargin{k}(end,1:end))];
        varargout{k} = [varargout{k} sum(varargin{k}(1:end,1))];
        varargout{k} = [varargout{k} sum(varargin{k}(1:end,end))];
    end
end