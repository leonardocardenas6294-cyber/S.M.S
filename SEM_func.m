function dx = SEM_func(t,x)

i = x(1);
teta1 = x(2);
teta1d = x(3);

R = 2;
K = 0.01;
b = 0.0012;
L = 0.023; 
J = 0.001;
V = 12;

id = (V-R*i-K*x(3))*(1/L);
teta1dd = (K*x(1)-b*(teta1d))*(1/J);

dx = [id; teta1d; teta1dd];

end
