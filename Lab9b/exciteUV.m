function [x] = exciteUV(N)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
t=0:N;

x=zeros(size(t));

x(2:2:N)=1;
end

