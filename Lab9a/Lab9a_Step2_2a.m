audio_read=audioread('Start.wav');
%plot(audio_read)
%title('Plot of speech signal')

%zoom xon

subplot(2,1,1)
VoicedSig=audio_read(3901:4200);
plot(3901:4200,VoicedSig)
title('Plot of voiced speech signal')

subplot(2,1,2)
UnvoicedSig=audio_read(2401:2700);
plot(2401:2700,UnvoicedSig)
title('Plot of unvoiced speech signal')
datacursormode on

%Part 2
L=length(VoicedSig);
P_voiced=zeros;
P_unvoiced=zeros;
for i=1:L
    P_voiced= P_voiced+(1/L)*(VoicedSig(i)^2);
    P_unvoiced= P_unvoiced+(1/L)*(UnvoicedSig(i)^2);
end

Voiced_cross=zero_cross(VoicedSig);
Unvoiced_cross=zero_cross(UnvoicedSig);