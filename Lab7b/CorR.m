function [C]=CorR(X,Y,m)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
N=length(X);
C=zeros;

if m>=0 && m<=N-1
    for n=1:N-m
        C=C+(1/(N-m))*(X(n)*Y(n+m));
    end
elseif m>=1-N && m<0
    for n=abs(m)+1:N
        C=C+(1/(N-abs(m)))*(X(n)*Y(n+m));
    end
else
    C=0;

end

