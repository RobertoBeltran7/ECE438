function [LPFOutput] = LPFtrunc(N)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
wc=2.0;
LPFOutput=zeros(N,1);

for n=1:N
    LPFOutput(n)=(wc/pi)*sinc((wc/pi)*(n-((N-1)/2)));
end

