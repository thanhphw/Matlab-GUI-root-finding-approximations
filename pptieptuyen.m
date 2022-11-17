function [x1,n]=pptieptuyen(fx,a,b,s)
syms x;
fxi=str2func(['@(x)' char(fx(x))]);
fxi1=str2func(['@(x)' char(diff(fx(x)))]);
fxi2=str2func(['@(x)' char(diff(diff(fx(x))))]);
n=0;
x0=0;
for i =a:s:b
    if (fxi(i)*fxi2(i))>0
        x1=i;
        break;
    end
end
while (abs(x1-x0)>s)
    x0=x1;
    x1=x0 - fxi(x0)/fxi1(x0);
    n=n+1;
end
end