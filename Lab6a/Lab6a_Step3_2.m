N_mtx=5;
N=10;
n=0:N-1;
j = sqrt(-1);
%Delta function
x_1 = (n==0);
%Constant function
x_2 = ones(N);
%Exponential function
x_3 = exp(j*2*pi*n/10);


[A] = DFTmatrix(N);
[A1] = DFTmatrix(N_mtx);

X_1=A*x_1.';
subplot(3,1,1)
stem(n,abs(X_1))
xlabel('n');
ylabel('Magnitude');
title('Magnitude of DFT of delta function')

X_2=A*x_2.';
subplot(3,1,2)
stem(n,abs(X_2))
xlabel('n');
ylabel('Magnitude');
title('Magnitude of DFT of constant function')

X_3=A*x_3.';
subplot(3,1,3)
stem(n,abs(X_3))
xlabel('n');
ylabel('Magnitude');
title('Magnitude of DFT of exponential function')

%Part 2
n=0:N-1;
j = sqrt(-1);
%Delta function
x_1 = (n==0);
%Constant function
x_2 = ones(N);
%Exponential function
x_3 = exp(j*2*pi*n/10);

[B] = IDFTmatrix(N);
[B1] = IDFTmatrix(N_mtx);
C=B1*A1

X_1=A.*x_1;
subplot(3,1,1)
stem(n,abs(X_1))
xlabel('n');
ylabel('Magnitude');
title('Magnitude of IDFT of delta function')

X_2=A.*x_2;
subplot(3,1,2)
stem(n,abs(X_2))
xlabel('n');
ylabel('Magnitude');
title('Magnitude of IDFT of constant function')

X_3=A.*x_3;
subplot(3,1,3)
stem(n,abs(X_3))
xlabel('n');
ylabel('Magnitude');
title('Magnitude of IDFT of exponential function')
