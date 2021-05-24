%FinalStatesMain
clear
p=1;
q=1;
%Matrix amplification factors
load('Motif1_adjacency_adjust.mat');
%load the adjacency mattraces of the circuit studied (in this case, command circuit)
W=W_adjust;
%Chemical adjacency matrix
G=G_adjust;
%Gap junction matrix
x0=[1;1;0;0;0;0;0;0;0;0];
%Set the initial state
FinalState=SolveFixedPoint(W, G, x0, p, q);

