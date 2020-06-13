%Plots of sin(2*pi*Ts*n)
Ts=1/10;
n=0:100;
x=sin(2*pi*Ts*n);
subplot(4,1,1)
axis([0,100,-1,1])
stem(n,x)
title('Step 7')
ylabel('y=sin(2*pi*Ts*n)')
xlabel('n')

Ts=1/3;
n=0:30;
x=sin(2*pi*Ts*n);
subplot(4,1,2)
%axis([0,30,-1,1])
stem(n,x)
title('Step 7')
ylabel('y=sin(2*pi*Ts*n)')
xlabel('n')

Ts=1/2;
n=0:20;
x=sin(2*pi*Ts*n);
subplot(4,1,3)
%axis([0,20,-1,1])
stem(n,x)
title('Step 7')
ylabel('y=sin(2*pi*Ts*n)')
xlabel('n')

Ts=10/9;
n=0:9;
x=sin(2*pi*Ts*n);
subplot(4,1,4)
%axis([0,9,-1,1])
stem(n,x)
title('Step 7')
ylabel('y=sin(2*pi*Ts*n)')
xlabel('n')