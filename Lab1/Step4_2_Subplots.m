%Plots of sin(t) using different intervals
t1=-10:0.1:10;
x=sin(t1);
subplot(3,1,1)
plot(x)
title('Step 4.2 Continuous Plot 1')
ylabel('y=sin(t)')
xlabel('time(t)')

subplot(3,1,2)
plot(t1,x)
title('Step 4.2 Continuous Plot 2')
ylabel('y=sin(t)')
xlabel('time(t)')

subplot(3,1,3)
t2=0:0.1:20;
plot(t2,x)
title('Step 4.2 Continuous Plot 3')
ylabel('y=sin(t)')
xlabel('time(t)')