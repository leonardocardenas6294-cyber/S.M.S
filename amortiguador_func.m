function dx = amortiguador_func(t, x)

x1  = x(1);
x1d = x(2);
x2  = x(3);
x2d = x(4);

m1 = 290;
b1 = 1000;
m2 = 59;
k1 = 16182;
k2 = 19000;

z = 0.05*sin(0.5*pi*t);
f = 0;

x1dd = (-b1*x1d + b1*x2d - k1*x1 + k1*x2 + f) / m1;

x2dd = ( b1*x1d - b1*x2d + k1*x1 - (k1+k2)*x2 - f + k2*z ) / m2;

dx=[x1d; x1dd; x2d; x2dd];

end
