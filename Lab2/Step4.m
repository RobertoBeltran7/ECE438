% S_3[n] = -0.5*x[n-1]+x[n]
n=-10:10;
x= (n==0);
figure(1)
subplot(2,1,1)
stem(n,S_3(x))
title('Plot of S_3')
ylabel('S_3')
xlabel('n')

subplot(2,1,2)
stem(n,S_3(S_2(x)))
title('Plot of S_3(S_2(\delta))')
ylabel('S_3(S_2(\delta))')
xlabel('n')