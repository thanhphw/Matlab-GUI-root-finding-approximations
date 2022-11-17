fx = @(x) sin(x).*(x.^3);
a = 0;
b = 1;
N = 50;
S = pptp_hinhthang(fx, a, b, N);
fprintf('Tich phan hinh thang voi N = 50: %.10f\n', S);