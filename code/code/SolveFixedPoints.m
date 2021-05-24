function FixedPoints=SolveFixedPoints(W, G, p, q)
%Solve the fixed points of the circuit
[n, n]=size(W);
OriginalState=OriginalStateMatrix(n);
%Extract all initial states to be used
[a,m]=size(OriginalState);
for i=1:m
    x0=OriginalState(:,i);
    FixedPoints(:,i)=SolveFixedPoint(W, G, x0, p, q);
end
%Solve the fixed point according to all the initial states
FixedPoints=FixedPoints';
% FixedPoints=single(round(FixedPoints*1e3)/1e3);
% FixedPoints=single(round(FixedPoints*1e2)/1e2);
FixedPoints=single(round(FixedPoints*1e1)/1e1);
FixedPoints=unique(FixedPoints,'rows');
%Merging identical items
FixedPoints=FixedPoints';
%Each column vector of the matrix FixedPoints is one fixed point vector of the circuit
end

