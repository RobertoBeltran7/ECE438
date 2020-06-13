function [IIRoutput] = IIRfilter(x)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
n=length(x);
r=0.995;
theta=2.47;
IIRoutput=zeros(n,1);
IIRoutput(1)=x(1)-r*x(1);
IIRoutput(2)=2*r*cos(theta)*IIRoutput(1)+x(2)-r*x(2);

for i=3:n
    IIRoutput(i)=2*r*cos(theta)*IIRoutput(i-1)-(r^2)*IIRoutput(i-2)+x(i)-r*x(i);
end

