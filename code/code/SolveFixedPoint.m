function FixedPoint=SolveFixedPoint(W, G, x0, p, q)
%Solve one fixed point according to the initial state x0
save('EquationParameters.mat','W','G','p','q');
[n,n]=size(W);
tspan=[1 30];
[t,x]=ode45(@odefun,tspan,x0);
x=x';
[a m]=size(x);
FixedPoint=x(:,m);
%Assuming that the system starts from the initial state x0 and tends to be stable after a long time tspan, the final state is a fixed point
end