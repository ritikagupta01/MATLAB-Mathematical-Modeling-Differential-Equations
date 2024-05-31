% WAP to simulate the logistic growth population model

r = 0.05 ; K = 5 ; N0 = 0.5;
tspan = 0:0.01:100;

ode45(@(t,N) r*N*(1 - N/K) , tspan , N0);

title('Logistic Growth Model')
xlabel('Time')
ylabel('Population')