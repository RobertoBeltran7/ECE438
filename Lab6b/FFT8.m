function [X] = FFT8(x)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

N=length(x);
j=sqrt(-1);
k=0:N/2-1;
W_N=exp(-j*2*pi.*k/N);
x0=x(1:2:N);
x1=x(2:2:N);

[X0]=FFT4(x0);
[X1]=FFT4(x1);

X_k=X0+W_N.*X1;
X_k_2=X0-W_N.*X1;

X=[X_k X_k_2];

end

