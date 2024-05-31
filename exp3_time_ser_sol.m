% Plot the time series solution of the system of differential equations:
% x'(t) = -3x + 5y
% y'(t) = -6x + 3y
% with initial conditions x(0)=0.5 , y(0)=0.01

syms x(t) y(t)
ode1 = diff(x) == -3*x + 5*y;
ode2 = diff(y) == -6*x + 3*y;

ode_sys = [ode1 ; ode2];
cond_sys = [x(0)==0.5,y(0)==0.01];

sol_sys = dsolve(ode_sys,cond_sys);
xSol(t) = sol_sys.x
ySol(t) = sol_sys.y

fplot(xSol,'Linewidth',2)
grid on
hold on
fplot(ySol,'Linewidth',2)
hold off