%compute DFT
N=10;
n=0:N-1;
k=0:N-1;
j=sqrt(-1);

%delta function
x_n1=(n==0);
%constant
x_n2=ones(1,N);
%exponential
x_n3=exp(j*2*pi*n/10);

[X1]=dcDFT(x_n1);
subplot(3,1,1)
stem(k,abs(X1))

[X2]=dcDFT(x_n2);
subplot(3,1,2)
stem(k,abs(X2))

[X3]=dcDFT(x_n3);
subplot(3,1,3)
stem(k,abs(X3))