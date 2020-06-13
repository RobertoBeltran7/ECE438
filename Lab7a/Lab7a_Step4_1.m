%CDF using N=20
N=20;
Uniform=rand(1,N);
x=-1:0.001:2;
exp_CDF=(1-exp(-3.*x)).*(x>=0);

% Exponential Random variables
Exponential=-log(1-Uniform)/3;

[F]=empcdf(Exponential,x);

subplot(2,1,1)
a=plot(x,F,'linewidth',2);
hold on
b=plot(x,exp_CDF,'linewidth',2);
hold off
legend([a;b],'Empirical CDF','True CDF')
xlabel('x')
ylabel('F_X(x)')
title('Plots of empirical and true exponential CDF for N=20')


%CDF using N=200
N=200;
Uniform=rand(1,N);
x=-1:0.001:2;
exp_CDF=(1-exp(-3.*x)).*(x>=0);

% Exponential Random variables
Exponential=-log(1-Uniform)/3;

[F]=empcdf(Exponential,x);

subplot(2,1,2)
a=plot(x,F,'linewidth',2);
hold on
b=plot(x,exp_CDF,'linewidth',2);
hold off
legend([a;b],'Empirical CDF','True CDF')
xlabel('x')
ylabel('F_X(x)')
title('Plots of empirical and true exponential CDF for N=200')
