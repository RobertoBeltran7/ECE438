%compute FFT8

N=8;
n=0:N-1;
k=0:N-1;
j=sqrt(-1);
%delta function
x_n1=(n==0);
%constant
x_n2=ones(1,N);
%exponential
x_n3=exp(j*2*pi*n/8);

[X1]=FFT8(x_n1);
subplot(3,1,1)
stem(k,abs(X1))
xlabel('k')
ylabel('|X_8(k)|')
title('8-Point FFT of delta function')

[X2]=FFT8(x_n2)
subplot(3,1,2)
stem(k,abs(X2))
xlabel('k')
ylabel('|X_8(k)|')
title('8-Point FFT of constant')

[X3]=FFT8(x_n3);
subplot(3,1,3)
stem(k,abs(X3))
xlabel('k')
ylabel('|X_8(k)|')
title('8-Point FFT of exponential function')


%{
[X1_1]=fft_stage(x_n1);
subplot(3,1,1)
stem(n,abs(X1_1))

[X2_1]=fft_stage(x_n2);
subplot(3,1,2)
stem(n,abs(X2_1))

[X3_1]=fft_stage(x_n3);
subplot(3,1,3)
stem(n,abs(X3_1))
%}