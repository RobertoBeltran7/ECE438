N=10;
n=0:N-1;
j=sqrt(-1);

%DFTsum
x_n_1=(n==0);
x_n_2=ones(1,length(n));
x_n_3=exp(j*2*pi.*n./10);
x_n_4=cos(2*pi.*n./10);

[X_1]=DFTsum(x_n_1);
subplot(4,1,1)
stem(n,abs(X_1))
xlabel('n');
ylabel('Magnitude');
title('Magnitude of DFT of delta function')

[X_2]=DFTsum(x_n_2);
subplot(4,1,2)
stem(n,abs(X_2))
xlabel('n');
ylabel('Magnitude');
title('Magnitude of DFT of constant')

[X_3]=DFTsum(x_n_3);
subplot(4,1,3)
stem(n,abs(X_3))
xlabel('n');
ylabel('Magnitude');
title('Magnitude of DFT of exp(j*2*pi*n/10) function')

[X_4]=DFTsum(x_n_4);
subplot(4,1,4)
stem(n,abs(X_4))
xlabel('n');
ylabel('Magnitude');
title('Magnitude of DFT of cos(2*pi*n/10) function')


%IDFTsum
[x_1]=IDFTsum(X_1);
subplot(4,1,1)
stem(n,abs(x_1))
xlabel('n');
ylabel('Magnitude');
title('Magnitude of IDFT of delta function')

[x_2]=IDFTsum(X_2);
subplot(4,1,2)
stem(n,abs(x_2))
xlabel('n');
ylabel('Magnitude');
title('Magnitude of IDFT of constant')

[x_3]=IDFTsum(X_3);
subplot(4,1,3)
stem(n,abs(x_3))
xlabel('n');
ylabel('Magnitude');
title('Magnitude of IDFT of exp(j*2*pi*n/10) function')

[x_4]=IDFTsum(X_4);
subplot(4,1,4)
stem(n,abs(x_4))
xlabel('n');
ylabel('Magnitude');
title('Magnitude of IDFT of cos(2*pi*n/10) function')
