% WAP to draw the trajectories of a predator prey model

b = 1; c1 = 0.3; c2 = 0.2; a = 0.4;
Y0 = [1;2]

tspan = 0:0.01:50;

dydt = @(t,y) [(b*y(1) - c1*y(1)*y(2));
    (c2*y(1)*y(2) - a*y(2))];

[y,t] = ode45(dydt,tspan,Y0);
plot(y,t,'linewidth',2)

legend('Prey','Predator')
title('Lotka-Volterra Predator Prey Model')
xlabel('Time')
ylabel('Population')
