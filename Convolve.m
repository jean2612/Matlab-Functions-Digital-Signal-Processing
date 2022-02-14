function [y, ny] = Convolve(x, nx, h, nh)
y = conv(x, h);
ny = [nx(1)+nh(1):nx(length(x))+nh(length(h))];