%a matlab, znowu vararg-in i -out,
%i sumowanie eleemntow znajduj�cych si� na czterech kraw�dziach macierzy
%(wyniki jako oddzielne sumy, chyba - nie s�ucha�em go zbytnio)

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