function dathuc = lagrange(x_array, y_array)

l=sym(ones(1, length(x_array)));
syms x;

for i=1:length(x_array)
  for j=1:length(x_array)
     if i~=j
       l(i)=l(i)*(x-x_array(j))/(x_array(i)-x_array(j));
     end
  end
end
dathuc = vpa(simplify(l*y_array'));
end	
