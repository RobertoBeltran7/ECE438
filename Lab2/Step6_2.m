load('stockrates.mat')
n = 1:length(rate);
y1 = method6(rate);
y2 = method7(rate);

orient("tall")
subplot(3, 1, 1)
plot(n, rate)
title("Plot of original stock values")
xlabel('day')

subplot(3, 1, 2)
plot(n, y1)
title("Plot of stock values using Filter 6")
ylim([42 50]);
xlabel('day')

subplot(3, 1, 3)
plot(n, y2)
title("Plot of stock values using Filter 7")
ylim([42 50]);
xlabel('day')
