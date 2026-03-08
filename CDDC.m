function CDDC
close all; clear; clc;

tspan = [0 0.01];
y0 = [0;0];

[t,x] = ode45(@CDDC_func, tspan, y0);

figure
plot(t, x(:,1), 'LineWidth', 1)
hold on
plot(t, x(:,2), 'LineWidth', 2)
hold on

legend("iL","VC")

end
