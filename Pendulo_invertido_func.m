function dx = Pendulo_invertido_func(t, x)

xp = x(1);
xd    = x(2);
alfa  = x(3);
alfad = x(4);


ip = 0.0079;
mc = 0.7031;
lp = 0.3302;
mp = 0.23;
fc = 0;       
beq = 4.3;
g  = 9.81;
bp = 0.0024;


denominador = (mc+mp)*ip + mc*mp*lp^2 + mp^2*lp^2*sin(alfa)^2;

xdd = ( (ip + mp*lp^2)*fc + mp^2*lp^2*g*cos(alfa)*sin(alfa) - (ip + mp*lp^2)*beq*xd - mp*lp*(ip + mp*lp^2)*alfad^2*sin(alfa) - mp*lp*bp*alfad*cos(alfa) ) / denominador;

alfadd = ( (mc + mp)*mp*g*lp*sin(alfa) - (mc + mp)*bp*alfad + fc*mp*lp*cos(alfa) - mp^2*lp^2*alfad^2*sin(alfa)*cos(alfa) - beq*mp*lp*xd*cos(alfa) ) / denominador;

dx= [xd; xdd;alfad; alfadd];

end
