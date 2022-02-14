function [ X, F ] = DTFT( x, N1, M )

M = fix(M); 
N = length (x);
x = x(:);

if (M < N)
    error ('DTFT: # a amostragem de frequência precisa ter um valor maior que # amostras de dados');
end
n = 0:N-1; n = n(:);
m = 0:M-1; m = m(:);
F = -0.5 + m/M;
tilde_x = zeros(M,1);
tilde_x(1:N) = x.* (-1).^n;
tilde_X = fft(tilde_x, M);
X = (-1)^N1 * exp(-1i*2*pi*N1*m/M).*tilde_X;






