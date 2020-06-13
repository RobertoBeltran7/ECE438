% generate 1000 random samples
sample_size=1000;
X=randn(1,sample_size);

plot(X)
xlabel('n (Sample number)')
ylabel('X_n')
title('Gaussian Random Variable with mean 0 and variance 1 (N(0,1))')

[M]=Mean(X)
[Var]=Variance(X,M)