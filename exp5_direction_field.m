% WAP to draw direction fields for a system of differential equations

% x'(t) = 4x + y
% y'(t) = x - 2y

[x, y] = meshgrid(-2:0.2:2);

% define ODEs
dx = 4*x + y; 
dy = x - 2*y;

% normalize vectors
norm_factor = sqrt(dx.^2 + dy.^2);
dy_norm = dy./norm_factor;
dx_norm = dx./norm_factor;

% plotting the direction field
quiver(x, y, dx_norm, dy_norm,'r');

hold on
[X,Y] = meshgrid(-2:0.3:2);
streamline(x,y,dx,dy,X,Y)
hold off
