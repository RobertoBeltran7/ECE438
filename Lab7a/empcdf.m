function [F] = empcdf(X,t)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
N=length(X);
F=zeros(1,length(t));

for i=1:length(t)
    F(i)=(1/N)*sum(X<=t(i));
end

end

