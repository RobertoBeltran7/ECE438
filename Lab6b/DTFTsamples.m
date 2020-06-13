function [X,w] = DTFTsamples(x)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
N=length(x);
k=0:N-1;
w1=2*pi*k/N;
w1(w1>=pi)=w1(w1>=pi)-2*pi;

[X_dft]=DFTsum(x);

X=fftshift(X_dft);
w=fftshift(w1);

end

