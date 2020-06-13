function [X] = fft_stage(x)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
N=length(x)
if (N==2)
   X=FFT2(x);
   return;     
elseif (N>2)
    j=sqrt(-1);
    k=0:N/2-1;
    W_N=exp(-j*2*pi.*k/N);
    x0=x(1:2:N);
    x1=x(2:2:N);
    [X0]=fft_stage(x0);
    [X1]=fft_stage(x1);
    
    X_k=X0+W_N.*X1;
    X_k_2=X0-W_N.*X1;
    
    X=[X_k X_k_2];
    
end

end

