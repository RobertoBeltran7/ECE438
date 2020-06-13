function [x] = exciteV(N,Np)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

t=0:Np:N;

x=zeros(size(t));

x(1:Np:N)=1;

end

