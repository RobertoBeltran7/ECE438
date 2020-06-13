%Continuous time plot of sin(t/6)
n1=0:2:60;
z=sin(n1/6);
subplot(2,1,1)
plot(n1,z)
title("Step4.1 Continuous Plot 1-Roberto Beltran")
ylabel('y=sin(t/6)')
xlabel('time(t)')

%Continuous time plot of sin(t/6)
n2=0:10:60;
w=sin(n2/6);
subplot(2,1,2)
plot(n2,w)
title("Step 4.1 Continuous Plot 2-Roberto Beltran")
ylabel('y=sin(t/6)')
xlabel('time(t)')