%Part 1 & 2
speech_file = audioread('speech.au');
lvls=[1 2 4 7];
for i=1:length(lvls)
    figure(1)
    subplot(4,1,i)
    quant_speech = Uquant(speech_file,2^lvls(i));
    error=quant_speech-speech_file;
    hist(error,20);
    hist_title=strcat('Error for quantized speech signal at',{' '},num2str(lvls(i)),' bit(s)/sample');
    title(hist_title)
    
    figure(2)
    subplot(4,1,i)
    [r,lags] = xcorr(error,200,'unbiased');
    auto_corr_title=strcat('Autocorrelation function at',{' '},num2str(lvls(i)),' bit(s)/sample');
    plot(lags,r)
    title(auto_corr_title)
    
    figure(3)
    subplot(4,1,i)
    [c,lags] = xcorr(error,quant_speech,200,'unbiased');
    cross_corr_title=strcat('Cross-correlation function at',{' '},num2str(lvls(i)),' bit(s)/sample');
    plot(lags,c)
    title(cross_corr_title)
end
