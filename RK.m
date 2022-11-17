function [x, y] = RK(fxy, xdau, xcuoi, y0, N, e) 
    syms x;
    syms y;
    fxyi = str2func(['@(x,y)' char(fxy(x,y))]);
    h = (xcuoi-xdau)/N;
    x = xdau:h:xcuoi;
    y = x;
    y(1) = y0;
    for i = 1:length(y)-1
        k1 = h*fxyi(x(i), y(i));
        k2 = h*fxyi(x(i)+h/2, y(i)+k1/2);
        k3 = h*fxyi(x(i)+h/2, y(i)+k2/2);
        k4 = h*fxyi(x(i)+h, y(i)+k3);
        y(i+1) = y(i) + (1/6)*(k1+2*k2+2*k3+k4);
    end
end