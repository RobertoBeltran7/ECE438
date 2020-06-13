%generate 1000 random samples
sample_size=1000;
X=randn(1,sample_size);
a=3;
b=3;

Y=a.*X+b;
plot(Y)
xlabel('n (Sample number)')
ylabel('Y_n')
title('Gaussian Random Variable with mean 3 and variance 9')

[M]=Mean(Y)
[Var]=Variance(Y,M)