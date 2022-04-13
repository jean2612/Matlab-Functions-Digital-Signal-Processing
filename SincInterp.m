function [xr, tr] = SincInterp(x, N, T) 
    g = x;
    fs = 1/T;
    N = [0:length(g)-1]/fs;
    fsup = fs*20;
    taxup = min(N)+[0:floor((length(g))*fsup/fs)-1]/fsup;
    upsig = zeros(size(taxup));
    
    for k = 1:length(taxup)
        for n = 1:length(g)
            upsig(k) = upsig(k)+g(n)*sinc(fs*(taxup(k)-N(n)));
        end
    end
    xr = upsig;
    tr = taxup;
end