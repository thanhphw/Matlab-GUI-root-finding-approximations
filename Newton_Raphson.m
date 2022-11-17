function [x,k] = Newton_Raphson(g,x0,epsilon,maxit)
syms x;
dg=matlabFunction(diff(g(x)));
k=1;
x=x0-feval(g,x0)/feval(dg,x0);
while (abs(x-x0)>=epsilon) && (k < maxit)
    x0 = x;
    x=x0-feval(g,x0)/feval(dg,x0);
    k=k+1;
end

end