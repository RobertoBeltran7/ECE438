n = -10:10;
dw = 0.01;
w = -pi:dw:pi;
x = [];
y = [];
for i = 1:length(n)
    if n(i) == 0;
        x(i) = 1;
    else
        x(i) = 0;
    end
end
y(1) = 0;
for i = 2:length(x)
    y(i) = 0.9 * y(i-1) + 0.3 * x(i) + 0.24 * x(i);
end
X = DTFT(x, x(1), dw);
H = (0.3+0.24*exp(-1i .* w)) ./ (1- 0.9 * exp(-1i .* w));
Y = H .* X;

orient("tall");
subplot(4, 1, 1)
stem(n, x)
xlabel("n")
title("Impulse Input")

subplot(4, 1, 2)
stem(n, y)
xlabel("n")
title("Impulse Response")

subplot(4, 1, 3)
plot(w, abs(Y))
xlabel("\omega")
title("Frequency Response Magnitude")
ylabel('Magnitude')

subplot(4, 1, 4)
plot(w, angle(Y))
xlabel("\omega")
title("Frequency Response Phase")
ylabel('Phase')