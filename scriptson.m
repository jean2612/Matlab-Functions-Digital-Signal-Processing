a = input('pulse width a = ');
A = input('pulse amplitude A = ');
h = input('stepsize h = ');
aT = 1.2*a;
T = -aT:h:aT;
om = -20:0.2:20;
pa = zeros(1, length(T));

for k = 1: length(T)
    t = (k-1)*h+T(1);
    if abs(t) <= a
        pa(k) = A;
    end
end

uv = ones(length(pa),1);

for j = 1:length(om)
    omt = om(j);
    Ft(j)= (pa.*cos(omt*T))*uv*h;
end

plot(om, Ft);
title('pulso de uma transformada de Fourier')
xlabel('frequencia em rad/sec')