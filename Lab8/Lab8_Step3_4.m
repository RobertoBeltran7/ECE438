speech_file = audioread('speech.au');
music_file = audioread('music.au');
sound(speech_file);
sound(music_file);
lvls=[1 2 4 7];

for i=1:length(lvls)
    figure(1)
    subplot(4,1,i)
    quant_speech=Uquant(speech_file,2^lvls(i));
    plot(7201:7400,quant_speech(7201:7400))
    speech_txt=strcat('Quantized speech signal at',{' '},num2str(lvls(i)),' bit(s)/sample');
    title(speech_txt)
    
    figure(2)
    subplot(4,1,i)
    quant_music=Uquant(music_file,2^lvls(i));
    plot(7201:7400,quant_music(7201:7400))
    music_txt=strcat('Quantized music signal at',{' '},num2str(lvls(i)),' bit(s)/sample');
    title(music_txt)
end