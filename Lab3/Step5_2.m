w = -pi:0.01:pi;
H = (0.3+0.24*exp(-1i .* w)) ./ (1- 0.9 * exp(-1i .* w));
subplot(2, 1, 1)
plot(w, abs(H));
xlabel("\omega");
title("Magnitude of H(\omega)");
ylabel('Magnitude')

subplot(2, 1, 2)
plot(w, phase(H));
xlabel("\omega");
title("Phase of H(\omega)");
ylabel('Phase')