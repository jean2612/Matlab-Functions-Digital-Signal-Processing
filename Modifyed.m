function [w, a, p] = Modifyed (x)
N = length(x);
for k = 1:N
    t = -1i*(2*pi)*(k-1)/N;
    w(k) = 0;
        for n = 1:N
            w(k) = w(k) + x(n)*exp(t*(n));
        end
        a(k) = abs(w(k));
        p(k) = angle(w(k));
end

