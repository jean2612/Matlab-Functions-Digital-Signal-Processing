function [y, ny] = Delay(x, nx, n0)
N = max(size(nx));
if n0 >= 0
    ny = [nx(1:N-1) nx(N):nx(N)+n0];
elseif n0 < 0
    ny = [nx(1)+n0:nx(1) nx(2:N)];
end
M = max(size(ny));
y = zeros(size(ny));
if n0 > 0
    y(n0+1:M) = x;
else
    y(1:M+n0) = x;
end