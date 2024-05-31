% WAP to simulate the SIR model

b = 5; a = 2.5;
S0=5;I0=0.5;R0=0;

tspan = 0:0.01:1.5;

dydt = @(t,y) [(-b*y(1)*y(2));
    (b*y(1)*y(2) - a*y(2));
    (a*y(2))];

[y,t] = ode45(dydt,tspan,[S0 I0 R0]);
plot(y,t,'linewidth',2)

legend('S(t)','I(t)','R(t)')
title('SIR Model')
xlabel('Time')
ylabel('Population')