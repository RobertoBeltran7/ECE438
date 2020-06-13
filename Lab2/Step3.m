n=-10:10;
x = (n==0);
figure(1)
subplot(5,1,1);
stem(n,S_1(x))
title('S_1')
xlabel('n')

subplot(5,1,2);
stem(n,S_2(x))
title('S_2')
xlabel('n')

subplot(5,1,3);
stem(n,S_1(S_2(x)))
title('S_1(S_2)')
xlabel('n')

subplot(5,1,4);
stem(n,S_2(S_1(x)))
title('S_2(S_1)')
xlabel('n')

subplot(5,1,5);
stem(n,S_1(x)+S_2(x))
title('S_1+S_2')
xlabel('n')
