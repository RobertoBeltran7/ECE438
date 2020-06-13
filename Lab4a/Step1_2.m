f=-1:0.001:1;
Ts=1;
fc=0.45;
fs=1/Ts;
N=20;

%Magnitude response without sample and hold
Hf1=(1/Ts).*((1./(1+(f/fc).^N)).^2);
subplot(2,1,1)
plot(f,abs(Hf1))
title('Magnitude response without sample and hold')
xlabel('Frequency in Hz')

%Magnitude Response of entire system
Hf2=((1./(1+(f/fc).^N)).^2).*abs(sinc(f/fs));
subplot(2,1,2)
plot(f,Hf2)
title('Magnitude response of complete system')
xlabel('Frequency in Hz')
