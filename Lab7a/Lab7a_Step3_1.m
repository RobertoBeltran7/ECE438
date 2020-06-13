%CDF for N=20
N=20;
X=rand(1,N);
t=-1:0.001:2;

[F]=empcdf(X,t);

tru_CDF=zeros(1,length(t));

for i=1:length(t)
    if t(i)<=0
        tru_CDF(i)=0;
    elseif t(i)>=1
        tru_CDF(i)=1;
    else
        tru_CDF(i)=t(i);
    end
end
subplot(2,1,1)
a=plot(t,F,'linewidth',2);
hold on
b=plot(t,tru_CDF,'linewidth',2);
hold off
legend([a;b],'Empirical CDF','True CDF')
xlabel('t')
ylabel('F_x(t)')
title('Plot of empirical and true CDF for N=20')


%CDF for N=200
N=200;
X=rand(1,N);
t=-1:0.001:2;

[F]=empcdf(X,t);

tru_CDF=zeros(1,length(t));

for i=1:length(t)
    if t(i)<=0
        tru_CDF(i)=0;
    elseif t(i)>=1
        tru_CDF(i)=1;
    else
        tru_CDF(i)=t(i);
    end
end

subplot(2,1,2)
a=plot(t,F,'linewidth',2);
hold on
b=plot(t,tru_CDF,'linewidth',2);
hold off
legend([a;b],'Empirical CDF','True CDF')
xlabel('t')
ylabel('F_x(t)')
title('Plot of empirical and true CDF for N=200')