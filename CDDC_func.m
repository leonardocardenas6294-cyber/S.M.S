function dx = CDDC_func(t,x)

L = 2e-3;
R = 10;
C = 10e-6;
Uin = 32; 
f = 100e3;
PWM = 0.4;

i = x(1);
V = x(2);

id = (-(1/L)*V) + (Uin/L)*PWM; 
Vd = (1/C*i) - (1/(R*C)*V);

dx = [id;Vd];

end

