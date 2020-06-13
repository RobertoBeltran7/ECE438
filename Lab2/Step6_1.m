n = -10:1:10;
x=(n==0);
y1 = method5(x);
y2 = method6(x);
y3 = method7(x);

subplot(4, 1, 1)
stem(n, x)
title("Input \delta[n]")
xlabel('n')

subplot(4, 1, 2)
stem(n, y1)
title("Impulse Response for Method 5")
xlabel('n')

subplot(4, 1, 3)
stem(n, y2)
title("Impulse Response for Method 6")
xlabel('n')

subplot(4, 1, 4)
stem(n, y3)
title("Impulse Response for Method 7")
xlabel('n')