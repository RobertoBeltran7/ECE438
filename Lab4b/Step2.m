audio=audioread('music.au');
sound(audio)

sig1=audio(1:2:end);
sound(sig1)

h=fir1(20,(pi/2)/pi);
sig2=conv(sig1,h)/2;
sound(sig2)
