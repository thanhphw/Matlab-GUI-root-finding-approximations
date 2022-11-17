function [x1,n] = b2_chiadoi(fx,a,b,saiso)
n = 0;
e = saiso;
while e >= saiso 
    c = (a+b)/2; 
    if fx(c)*fx(a) < 0
        b = c;
    else a = c;
    end
    e = b - a;
    n = n + 1;
end
x1 = a;
end