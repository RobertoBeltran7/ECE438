load('coeff.mat')
fs = 8000;
p = 0.008;
Np = p*fs;
N=40/0.125;
x=exciteV(N,Np);

figure(1)
%Filtered signals
subplot(3,1,1)
s=filter(1,[1 -A1],x);
plot(s)
xlabel('Time')
ylabel('Filtered signal')
title('Plot of first filtered signal')
%soundsc(s)

subplot(3,1,2)
s=filter(1,[1 -A2],x);
plot(s)
xlabel('Time')
ylabel('Filtered signal')
title('Plot of second filtered signal')
%soundsc(s)

subplot(3,1,3)
s=filter(1,[1 -A3],x);
plot(s)
xlabel('Time')
ylabel('Filtered signal')
title('Plot of third filtered signal')
%soundsc(s)

figure(2)
%Frequency response of filters
subplot(3,1,1)
[H,W]=freqz(1,[1 -A1],512);
plot(W*fs/(2*pi),abs(H))
xlabel('Frequency(Hz)')
ylabel('Magnitude')
title('Frequency response of first filter')

subplot(3,1,2)
[H,W]=freqz(1,[1 -A2],512);
plot(W*fs/(2*pi),abs(H))
xlabel('Frequency(Hz)')
ylabel('Magnitude')
title('Frequency response of second filter')

subplot(3,1,3)
[H,W]=freqz(1,[1 -A3],512);
plot(W*fs/(2*pi),abs(H))
xlabel('Frequency(Hz)')
ylabel('Magnitude')
title('Frequency response of third filter')

N1 = 1500/0.125;
x1 = exciteV(N1, Np);
s1 = filter(1,[1,-A1], x1);
s2 = filter(1,[1,-A2], x1);
s3 = filter(1,[1,-A3], x1);

input('Filtered signal 1')
soundsc(s1, fs)
input('Filtered signal 2')
soundsc(s2, fs)
input('Filtered signal 3')
soundsc(s3, fs)

