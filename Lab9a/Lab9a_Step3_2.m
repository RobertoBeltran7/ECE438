clear all
load('signal.mat');
%Wideband spectrogram(40 samples, overlap of 20 samples)
samp=40;
overlap=20;
N=512;
t=(0:length(signal))/8000;

[A_wide]=Specgm(signal,samp,overlap,N);
f=(0:pi/(length(A_wide(1))/2): pi)*8000/(2 *pi);

%Narrowband spectrogram(320 samples, overlap of 60 samples)
samp=320;
overlap=60;
[A_narrow]=Specgm(signal,samp,overlap,N);

subplot(3,1,1)
plot(signal)
title('Plot of original signal')

subplot(3,1,2)
calc_spec_wide=Specgm(signal,40,20,512);
imagesc(t,f,20*log10(abs(A_wide)))
title('Plot of wideband spectrogram')
ylabel('Frequency (Hz)')
xlabel('Time (s)')
axis xy
colormap(jet)

subplot(3,1,3)
calc_spec_narrow=Specgm(signal,320,60,512);
imagesc(t,f,20*log10(abs(A_narrow)))
title('Plot of narrowband spectrogram')
ylabel('Frequency (Hz)')
xlabel('Time (s)')
axis xy
colormap(jet)
