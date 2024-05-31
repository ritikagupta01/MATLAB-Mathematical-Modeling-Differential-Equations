% WAP to simulate the exponential growth population model

r = 0.05 ; N0 = 0.5;
tspan = 0:0.01:100;

ode45(@(t,N) [(r*N)] , tspan , N0);

title('Exponential Growth Model')
xlabel('Time')
ylabel('Population')

