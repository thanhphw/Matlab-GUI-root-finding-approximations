function [x, y] = hienantrungdiem(fxy, xdau, xcuoi, y0, N, e) 
    syms x;
    syms y;
    fxyi = str2func(['@(x,y)' char(fxy(x,y))]);
    h = (xcuoi-xdau)/N;
    x = xdau:h:xcuoi;
    y = x;
    y(1) = y0;
    
    for i = 1:length(y)-1
        y(i+1) = y(i) + (h/2)*fxyi(x(i), y(i));
        y(i+1) = y(i) + h*fxyi(x(i)+h/2, y(i+1));
    end
end