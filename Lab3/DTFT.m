function [X] = DTFT(x,n0,dw)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
N=length(x);
w=-pi:dw:pi;
temp=zeros;
j=sqrt(-1);
X=zeros(1,length(w));


for i=1:length(w)
    for n=1:N
        temp = temp + x(n)*exp(-j*w(i)*(n+n0-1));
    end
    X(i) = temp;
    temp = zeros;
end

