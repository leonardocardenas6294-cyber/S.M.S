function Pendulo_invertido
clc; clear; close all;

tspan=[0 10];
y0=[0;0;0.5;0];
[t_out, y_out]= ode45(@Pendulo_invertido_func, tspan, y0);
figure('Name','Graficas','color','w');

subplot(2,1,1);
plot(t_out,y_out(:,1), 'LineWidth',2);
title('posicion');
grid on;

subplot(2,1,2);
plot(t_out,y_out(:,3),'g', 'LineWidth',2);
title('angulo');
xlabel('tiempo');
grid on;
end
