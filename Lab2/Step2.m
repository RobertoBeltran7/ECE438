%{
%Part 1
n=-10:20;
N=10;
T=1;
x_n=(n>=0)-((n-(N+2))>=0);

%Discrete time differentiator/integrator
y_n_diff=zeros(1,length(n));
y_n_integr=zeros(1,length(n));

y_n_diff(1)=x_n(1)/T;
y_n_integr(1)=x_n(1)*T;

for i=2:length(n)
    y_n_diff(i)=(x_n(i)-x_n(i-1))/T;
    y_n_integr(i)=y_n_integr(i-1)+x_n(i)*T;
end

subplot(3,1,1)
stem(n,x_n)
title('Plot of x[n] for -10\leqn\leq20')
xlabel('n')
ylabel('x[n]')

subplot(3,1,2)
stem(n,y_n_diff)
title('Plot of signal with differentiator for -10\leqn\leq20')
xlabel('n')
ylabel('y[n]_{differentiator}','Interpreter','tex')

subplot(3,1,3)
stem(n,y_n_integr)
title('Plot of signal with integrator for -10\leqn\leq20')
xlabel('n')
ylabel('y[n]_{integrator}','Interpreter','tex')
%}

%Part 2
T1=0.1;
T2=0.001;
t1=0:T1:10;
t2=0:T2:10;
x1=sin(2*pi*t1);
x2=sin(2*pi*t2);
dx_dt1= 2*pi*cos(2*pi*t1);
dx_dt2= 2*pi*cos(2*pi*t2);
plot(t1,x1)

y_n_diff1=zeros(1,length(t1));
y_n_diff2=zeros(1,length(t2));

y_n_diff1(1)=(x1(2)-x1(1))/T1;
y_n_diff2(1)=(x2(2)-x2(1))/T2;


for i=2:length(t1)
    y_n_diff1(i)=(x1(i)-x1(i-1))/T1;
end
for i=2:length(t2)
    y_n_diff2(i)=(x2(i)-x2(i-1))/T2;
end

dx_dt1=dx_dt1(1:length(dx_dt1)/7:end)
y_n_diff1=y_n_diff1(1:length(y_n_diff1)/7:end)
dx_dt2=dx_dt2(1:length(dx_dt2)/7:end)
y_n_diff2=y_n_diff2(1:length(y_n_diff2)/7:end)

