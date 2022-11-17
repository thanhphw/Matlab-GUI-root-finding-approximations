function [c,n] = pplap(fx,a,b,s)
syms x;
fxi = str2func(['@(x)' char(fx(x))]);
n = 0;
x1 = a;
x2 = fxi(x1);
while(abs(x2-x1)>s)
    x1 = x2;
    x2 = fxi(x1);
    n = n + 1;
end
c = x1;
end