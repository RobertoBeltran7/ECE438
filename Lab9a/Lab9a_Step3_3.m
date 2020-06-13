load('vowels.mat')
fs=8000;
f = (0:pi/256:pi)*8000/(2*pi);

%Narrowband spectrograms
a_spec= Specgm(a, 320, 60, 512);
e_spec= Specgm(e, 320, 60, 512);
i_spec= Specgm(i, 320, 60, 512);
o_spec= Specgm(o, 320, 60, 512);
u_spec= Specgm(u, 320, 60, 512);

figure(1)
% Spectrogram for a
imagesc((1:length(a))/fs, f, 20*log10(abs(a_spec)))
colormap(jet)
axis xy
title('Plot of spectrogram for a')
xlabel('Time (s)')
ylabel('Frequency (Hz)')

figure(2)
% Spectrogram for e
imagesc((1:length(e))/fs, f, 20*log10(abs(e_spec)))
colormap(jet)
axis xy
title('Plot of spectrogram for e')
xlabel('Time (s)')
ylabel('Frequency (Hz)')

figure(3)
% Spectrogram for i
imagesc((1:length(i))/fs, f, 20*log10(abs(i_spec)))
colormap(jet)
axis xy
title('Plot of spectrogram for i')
xlabel('Time (s)')
ylabel('Frequency (Hz)')

figure(4)
% Spectrogram for o
imagesc((1:length(o))/fs, f, 20*log10(abs(o_spec)))
colormap(jet)
axis xy
title('Plot of spectrogram for o')
xlabel('Time (s)')
ylabel('Frequency (Hz)')

figure(5)
% Spectrogram for u
imagesc((1:length(u))/fs, f, 20*log10(abs(u_spec)))
colormap(jet)
axis xy
title('Plot of spectrogram for u')
xlabel('Time (s)')
ylabel('Frequency (Hz)')
