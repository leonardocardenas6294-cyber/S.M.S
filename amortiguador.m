function amortiguador
clc; clear; close all;

tspan=[0 10];
y0=[0;0;0;0];
f=0;

[t,x]=ode45(@amortiguador_func,tspan,y0);

figure
plot(t, x(:,1), 'LineWidth', 2)
hold on
plot(t, x(:,3), 'LineWidth', 2)
grid on
xlabel('Tiempo (s)')
ylabel('Desplazamiento')
legend('x_1','x_2')

end