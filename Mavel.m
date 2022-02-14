function [y, ny] = Mavel(x, nx, a0, a1)
[xd, ny] = Delay(x,nx,1);
xd = xd.*a1;
x = x.*a0; x = [x 0];
y = x+xd;