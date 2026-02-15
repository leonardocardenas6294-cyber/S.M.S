function dx = MR_func(t,teta)

teta1 = teta(1); 
teta1d = teta(2);

m = 10;
k = 100;

teta1dd = (-2*k*teta1)/(3*m);

dx=[teta1d;teta1dd];

end