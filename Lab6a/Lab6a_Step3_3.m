N=512;
n=0:N-1;
x=cos(2*pi*n/10);
[A]=DFTmatrix(N);
t=cputime;
X1=A*x.';
[X2]=DFTsum(x);
cputime-t