function [Var] = Variance(X,mean)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
N=length(X);
Var=zeros;

for i=1:N
    Var=Var+(1/(N-1))*((X(i)-mean)^2);
end

end

