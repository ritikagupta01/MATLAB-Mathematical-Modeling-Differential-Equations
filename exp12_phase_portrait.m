% Plot a phase portrait and classify the fixed points of the linear sytem
% dx/dt = ax(1-x^2)
% 'a' is positive, negatice or zero ; discuss all cases

[t, x] = meshgrid(-2:0.2:2);

for a = -1:1:1
    dx = a*x*(1-x.^2); 
    dt = ones(size(dx));
    %creates a new figure window
    figure
    %plots direction components
    quiver(t,x,dt,dx,'r')
    title(sprintf('Phase Portrait for Case : a = %d',a))
    hold on
    % returns plotted streamlines
    streamline(t,x,dt,dx,t+0.05,x);
    hold off
end

disp ('Fixed point 0 is stable for a>0 and unstable otherwise')
