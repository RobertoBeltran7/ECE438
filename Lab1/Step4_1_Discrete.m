%Discrete time plot of sin(t/6)
n=0:2:60;
y=sin(n/6);
stem(n,y)
title("Step 4.1 Discrete Plot 1-Roberto Beltran")
ylabel('y=sin[n/6]')
xlabel('n')