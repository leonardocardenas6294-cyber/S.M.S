function SEM
clc; clear; close all;

tspan=[0 3];
y0=[0;0;0];

[t,x]=ode45(@SEM_func,tspan,y0);

figure
plot(t, x(:,1), 'LineWidth', 2)
hold on
plot(t, x(:,3), 'LineWidth', 2)
grid on
xlabel('Tiempo')
ylabel('i/teta')
legend('corriente y velocidad')

end