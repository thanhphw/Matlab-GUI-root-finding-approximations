function [x,y] = ole(fxy,xdau,xcuoi,y0,N)
    h = abs(xcuoi-xdau)/N;
    x = xdau:h:xcuoi;
    y = zeros(1, N+1);
    y(1)=y0;
    for i=1:N
        y(i+1) = y(i) + h*fxy(x(i),y(i));
    end
end