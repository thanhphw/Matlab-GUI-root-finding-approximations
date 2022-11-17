function [x, y] = hienanhinhthang(fxy, xdau, xcuoi, y0, N, e) 
    h = (xcuoi-xdau)/N;
    x = xdau:h:xcuoi;
    y = zeros(size(x));
    y(1) = y0; 
    a = 0;
    
    for i = 1:N
        y(i+1) = y(i) + h*fxy(x(i), y(i));
        y(i+1) = y(i) + (h/2)*(fxy(x(i), y(i)) + fxy(x(i+1), y(i+1)));
        while abs(a - y(i+1)) > e
            y(i+1) = y(i) + (h/2)*(fxy(x(i), y(i)) + fxy(x(i+1), y(i+1))); 
            a = y(i+1);
        end
    end
end
