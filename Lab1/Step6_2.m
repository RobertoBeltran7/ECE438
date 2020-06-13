%Plots for a^n(u[n]-u[n-10])
figure(1)
a=0.8;
n=-20:20;
x=(a.^n).*((n>=0)-((n-11)>=0));
subplot(3,1,1)
orient('tall')
stem(n,x)
title('Plot of a^n(u[n]-u[n-10]), a=0.8')
ylabel('y=a^n(u[n]-u[n-10])')
xlabel('n')

a=1.0;
n=-20:20;
x=(a.^n).*((n>=0)-((n-11)>=0));
subplot(3,1,2)
orient('tall')
stem(n,x)
title('Plot of a^n(u[n]-u[n-10]), a=1.0')
ylabel('y=a^n(u[n]-u[n-10])')
xlabel('n')

a=1.5;
n=-20:20;
x=(a.^n).*((n>=0)-((n-11)>=0));
subplot(3,1,3)
orient('tall')
stem(n,x)
title('Plot of a^n(u[n]-u[n-10]), a=1.5')
ylabel('y=a^n(u[n]-u[n-10])')
xlabel('n')


%Plots for cos(w*n)a^n(u[n])
figure(2)
a=0.8;
w=pi/4;
n=-1:10;
x=cos(w.*n).*(a.^n).*(n>=0);
subplot(3,1,1)
orient('tall')
stem(n,x)
title('Plot of cos(w*n)a^n(u[n]), a=0.8')
ylabel('y=cos(w*n)a^n(u[n])')
xlabel('n')

a=1.0;
w=pi/4;
n=-1:10;
x=cos(w.*n).*(a.^n).*(n>=0);
subplot(3,1,2)
orient('tall')
stem(n,x)
title('Plot of cos(w*n)a^n(u[n]), a=1.0')
ylabel('y=cos(w*n)a^n(u[n])')
xlabel('n')

a=1.5;
w=pi/4;
n=-1:10;
x=cos(w.*n).*(a.^n).*(n>=0);
subplot(3,1,3)
orient('tall')
stem(n,x)
title('Plot of cos(w*n)a^n(u[n]), a=1.5')
ylabel('y=cos(w*n)a^n(u[n])')
xlabel('n')

orient('tall')