function [c,n] = ppdaycung(fx,a,b,s)
syms x;
fxi = str2func(['@(x)' char(fx(x))]);
n = 0;
c = (a*fxi(b)-b*fxi(a))/(fxi(b)-fxi(a));
c0 = 0;
while(abs(c-c0)>s)
    c0 = c;
    if (fxi(c)*fxi(a)==0)
        break;
    end
    if (fxi(c)*fxi(a)<0)
        b = c;
    else
        a = c;
    end
    n = n + 1;
    c = (a*fxi(b)-b*fxi(a))/(fxi(b)-fxi(a));
end
end
