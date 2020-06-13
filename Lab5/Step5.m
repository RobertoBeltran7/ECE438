%subplot(3,1,1)
sound(nspeech2);
%plot(nspeech2)
%{
N=21;
[LPFOutput]=LPFtrunc(N);
[X,w]=DTFT(LPFOutput,512);
subplot(2,1,1)
plot(w,abs(X))
%plot(w,20*log10(abs(X)))
xlabel('Frequency')
ylabel('Magnitude')
title('Plot of filtered speech signal with N=21')

N=101;
[LPFOutput]=LPFtrunc(N);
[X,w]=DTFT(LPFOutput,512);
subplot(2,1,2)
plot(w,abs(X))
%plot(w,20*log10(abs(X)))
xlabel('Frequency')
ylabel('Magnitude')
title('Plot of filtered speech signal with N=101')
%}

N=21;
[LPFOutput]=LPFtrunc(N);
conv_21=conv(nspeech2,LPFOutput);
[X,w]=DTFT(conv_21,512);
%sound(abs(3.*X))
subplot(2,1,1)
plot(w,abs(X))
xlabel('Frequency')
ylabel('Magnitude')
title('Plot of filtered speech signal with N=21')

N=101;
[LPFOutput]=LPFtrunc(N);
conv_101=conv(nspeech2,LPFOutput);
[X,w]=DTFT(conv_101,512);
%sound(abs(3.*X))
subplot(2,1,2)
plot(w,abs(X))
xlabel('Frequency')
ylabel('Magnitude')
title('Plot of filtered speech signal with N=101')

