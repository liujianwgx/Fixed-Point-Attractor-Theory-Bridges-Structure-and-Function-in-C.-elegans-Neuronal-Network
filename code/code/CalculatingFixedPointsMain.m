%CalculatingFixedPointsMain
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
FixedPoints=SolveFixedPoints(W, G, p, q);
%Calculate the fixed points of the circuit. Each column vector of the
%outcome matrix FixedPoints is one fixed point vector of the circuit