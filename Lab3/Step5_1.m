% x[n] = d[n]
n=-10:10;
x=(n==0);
dw=0.1;
w=-pi:dw:pi;

[X]=DTFT(x,n(1),dw);

figure(1)
subplot(2,1,1)
plot(w,abs(X))
title('Magnitude of X(\omega), x[n]=\delta[n]')
xlabel('\omega')

subplot(2,1,2)
plot(w,angle(X))
title('Phase of X(\omega)')
xlabel('\omega')

% x[n] = d[n-5]
x=((n-5)==0);

[X]=DTFT(x,n(1),dw);

figure(2)
subplot(2,1,1)
plot(w,abs(X))
set(gca,'YLim',[0 2])
title('Magnitude of X(\omega), x[n]=\delta[n-5]')
xlabel('\omega')

subplot(2,1,2)
plot(w,angle(X))
title('Phase of X(\omega)')
xlabel('\omega')

% x[n] = 0.5*u[n]
x=0.5*(n>=0);

[X]=DTFT(x,n(1),dw);

figure(3)
subplot(2,1,1)
plot(w,abs(X))
title('Magnitude of X(\omega), x[n]=(0.5)^nu[n]')
xlabel('\omega')

subplot(2,1,2)
plot(w,angle(X))
title('Phase of X(\omega)')
xlabel('\omega')