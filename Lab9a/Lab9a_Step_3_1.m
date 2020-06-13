go_aud=audioread('go.au');

plot(go_aud)
zoom xon

L= 0.008*6 *8000;
m=2397;
N=512;

subplot(2,1,1)
plot(m:m+L-1,go_aud(m:m+L-1));
title('Plot of segment of voiced speech signal')

subplot (2,1,2)
X=DFTwin(go_aud,L,m,N);
plot(0:pi/(length(X(length(X)/2:length(X)))-1):pi,abs(X(length(X)/2:length(X))))
xlabel('Frequency in kHz')
ylabel('Magnitude')
title('Plot of DFT of voiced speech signal')

%Part 2
%Use colormap(jet) for spectogram

