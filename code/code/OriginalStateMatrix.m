function OriginalState=OriginalStateMatrix(n)
%Set initial states for calculation
k=2;
for i=2:k^n
    
    a=i-1;
    b=a;d=[];
    while(b>0)
    c=mod(b,k);
    d=[num2str(c) d];
    b=(b-c)/k;
    end
    %convert to K-base,

    d=str2num(d);
    m=num2str(n);
    p=['%0',m,'d'];
    d=num2str(d,p);
    %The length less than n is supplemented by 0
    
    d=d';
    d=str2num(d)/(k-1);
    %Convert the result to a numeric column vector and scale it down to a maximum of 1
    
    OriginalState(:,i)=d;
    
end

end
