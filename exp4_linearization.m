% Find critical points, Jacobian matrix, eigenvalues and eigenvectors  
% of the folliwing system of differential equations for stability analysis
% x'(t) = 4x + y + xy
% y'(t) = x + 4y + y^2

syms x y t

dydt = @(t,s) [(4*s(1) + s(2) + s(1)*s(2));
    (s(1) + 4*s(2) + s(2).^2)];
sys = dydt(t,[x;y]);

% critical points (x_cp,y_cp)
[cp_x,cp_y] = solve(sys(1)==0,sys(2)==0,x,y)

% jacobian matrix
jac = jacobian(sys,[x;y])

% eigenvalues of jacobian wrt first critical point
jac1 = subs(jac,{x,y},{cp_x(1),cp_y(1)});
[eigvect1,eigval1] = eig(jac1)
stability( eigval1(1,1),eigval1(2,2),cp_x(1),cp_y(1))

% eigenvalues of jacobian wrt second critical point
jac2 = subs(jac,{x,y},{cp_x(2),cp_y(2)});
[eigvect2,eigval2] = eig(jac2)
stability( eigval2(1,1),eigval2(2,2),cp_x(2),cp_y(2))

% eigenvalues of jacobian wrt third critical point
jac3 = subs(jac,{x,y},{cp_x(3),cp_y(3)});
[eigvect3,eigval3] = eig(jac3)
stability( eigval3(1,1),eigval3(2,2),cp_x(3),cp_y(3))

% function to decide stability from eigenvalues of equilibrium
% if both eigenvalues are negative, the node is stable else unstable
function node = stability(eig1,eig2,cpx,cpy)
    if eig1 < 0 & eig2 < 0
        node = strcat('(',string(cpx),',',string(cpy),')',' is a stable node');
    else
        node = strcat('(',string(cpx),',',string(cpy),')',' is an unstable node');
    end
end 