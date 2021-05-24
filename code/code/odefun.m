function    dx=odefun(t,x)
%Differential equation for neural circuits
load('EquationParameters.mat');

[n,n]=size(W);
W=W'/p;
G=G'/q;
[n,a]=size(G);
L1=sum(G,2);
L=diag(L1);
EE=eye(n);
K=(G-L-EE);
Threshood1=ones(n,1);
Threshood=0.5*Threshood1;
%The threshold parameter of sigmoid function
k=20;
%The slope parameter of sigmoid function
B=zeros(n,1);
tao=2;
dx=(K*x+W*(1./(ones(n,1)+ exp(k*(-x+Threshood)))))/tao+B/tao;

end