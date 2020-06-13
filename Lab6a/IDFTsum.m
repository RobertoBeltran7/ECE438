function [x] = IDFTsum(X)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
j=sqrt(-1);
N=length(X);
x=zeros(1,N);

for n=1:N
    for k=1:N
        x(n)=x(n)+(1/N)*X(k)*exp(j*2*pi*(k-1)*(n-1)/N);
    end
end

end

