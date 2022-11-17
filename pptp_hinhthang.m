function [S] = pptp_hinhthang(fx, a, b, N);

syms x;
fxi = str2func(['@(x)' char(fx(x))]);
h = (b-a)/N;
S = (h/2)*(fxi(a)+fxi(b));
for i = 1:N-1
    S = S + h*sum(fxi(a + i*h));
end
end
