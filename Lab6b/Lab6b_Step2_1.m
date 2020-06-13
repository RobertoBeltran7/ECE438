%create Hamming window
N=20;
x=hamming(N);
k=0:N-1;

[X]=DFTsum(x);

stem(k,abs(X))
xlabel('k')
ylabel('|X_2_0(k)|')
title('Hamming Window 20 point DFT')

%compute samples of DTFT
[X2,w]=DTFTsamples(x);
stem(w,abs(X2))
xlabel('w')
ylabel('|X(w)|')
title('Magnitude of DTFT samples')
