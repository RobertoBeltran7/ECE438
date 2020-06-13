%Plot of sin(pi*t)/(pi*t)
t=-10*pi:0.1:10*pi;
x=(sin(pi*t))./(pi*t);
subplot(2,1,1)
plot(t,x)
title('Plot of sin(pi*t)/(pi*t)')
ylabel('y=sin(pi*t)/(pi*t)')
xlabel('time(t)')

%Plot of rect(t)
t=-2:0.01:2;
y=(abs(t)<=0.5);
subplot(2,1,2)
plot(t,y)
title('Plot of rect(t)')
ylabel('y=rect(t)')
xlabel('time(t)')
