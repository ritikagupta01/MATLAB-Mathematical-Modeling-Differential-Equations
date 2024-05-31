% Solving system of ODE(s)

syms x(t) y(t)

% QUEST 1

% first ODE with IC
ode1 = diff(x,t) == x;
cond1 = x(0) == 1;
% second ODE with IC
ode2 = diff(y,t) == x - y;
cond2 = y(0) == 2;
% system of ODEs with ICs
ode_sys = [ode1 ; ode2]
cond_sys = [cond1,cond2];
% solved system
sol_sys = dsolve(ode_sys,cond_sys);
x_sol = sol_sys.x
y_sol = sol_sys.y


% QUEST 2 (matrix form)
syms x(t) y(t)
A = [1 2 ; 3 2];
B = [2*t ; -4*t];
X = [x ; y];
ode_sys = diff(X,t) == A*X + B
sol_sys = dsolve(ode_sys);
x_sol = simplify(sol_sys.x)
y_sol = simplify(sol_sys.y)