function [M] = Mean(X)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
N=length(X);
M=zeros;

for i=1:N
    M=M+(1/N)*X(i);
end
end

