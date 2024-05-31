% Solving ODE with initial condition

% 1. First order linear ode with initial condition
% y' + P(x)y = Q(x)

% creating symbolic func y(x)
syms y(x)
% defining ode
ode1 = diff(y,x) == x*y
% defining initial condition
cond = y(0) == 2;
% solving ode
y(x) = dsolve(ode1,cond);
sol1 = simplify(y)

% 2. Non linear ODE with initial cond
syms y(x)
ode2 = (diff(y,x)+y)^2 == 1
cond = y(0) == 0;
y(x) = dsolve(ode2,cond);
sol2 = simplify(y)

% 3. Higher order ode with initial cond
syms y(t)
ode3 = diff(y,t,3) == y
% declaring 1st and 2nd derivatives to later define initial conditions
D1 = diff(y,t);
D2 = diff(y,t,2);
% defining initial conditions
cond0 = y(0) == 1;
cond1 = D1(0) == -1;
cond2 = D2(0) == pi;
% solving
y(t) = dsolve(ode3,[cond0,cond1,cond2]);
sol3 = simplify(y)