function MR
clc; clear; close all;

tspan=[0 10];
y0=[0;2];

[t,x]=ode45(@MR_func,tspan,y0);

figure
plot(t, x(:,1), 'LineWidth', 2)
hold on
plot(t, x(:,2), 'LineWidth', 2)
grid on
xlabel('Tiempo (s)')
ylabel('Desplazamiento')
legend('x_1','x_2')

end