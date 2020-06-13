%Part 1
L=20;
x_0=0;
x_L=1;
delta=(x_L-x_0)/L;

x=0:delta:1;

F_x=x.^3;
f_x=3*x.^2;

f_k=zeros(1,L);
k=1:L;

for i=1:L
    f_k(i)=F_x(i+1)-F_x(i);
end

subplot(3,1,1)
plot(x,F_x)
xlabel('x')
ylabel('F_X(x)')
title('Plot of CDF')

subplot(3,1,2)
plot(x,f_x)
xlabel('x')
ylabel('f_X(x)')
title('Plot of PDF')

subplot(3,1,3)
stem(k,f_k)
xlabel('k')
ylabel('f(k)')
title('Probability of X in bin(k)')

%Part 2
samp_size=1000;
U=rand(1,samp_size);

X=U.^(1/3);
H=hist(X,(0.5:19.5)/20);
norm_H=H/samp_size;

subplot(2,1,1)
stem(k,norm_H)
xlabel('k')
ylabel('H(k)/N')
title('Plot of normalized histogram')

subplot(2,1,2)
stem(k,f_k)
xlabel('k')
ylabel('f(k)')
title('Probability of X in bin(k)')
