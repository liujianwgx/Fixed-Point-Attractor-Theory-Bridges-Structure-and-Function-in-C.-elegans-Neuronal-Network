The software we use is Matlab R2017a.

There are two main program codes that need to be run and several function codes.

Main code one is CalculatingFixedPointsMain.m, which is used to calculate the fixed points of specific elegans circuits (in this case, command circuit), shown in Table 1 of the manuscript.
Each column vector of the outcome matrix FixedPoints is one fixed point vector of the circuit
Motif1_adjacency_adjust.mat contains the adjacency matrices of the command circuit.
Motif1_FixedPoints_adjust.mat contains the expected fixed points outcome of the command circuit.
The other mat files contains expected fixed points outcomes while ablating different neurons (meaning seting connections related to these neurons as 0).

Main code tow is FinalStatesMain.m, which is used to calculate the final states of command circuit under different initial states, shown in  Table 2 in the manuscript.
By changing the inital state x0 as the top half of Table 2, expected final states can be acquired as the bottom half of Table 2.

Function code odefun.m is the differential equation for neural circuits.

Function code OriginalStateMatrix.m sets initial states for calculation.

Function code SolveFixedPoint.m solves one fixed point according to the initial state x0.

Function code SolveFixedPoints.m solves the fixed points of the circuit.
