speech_file = audioread('speech.au');
quant_lvls=7;
samp_rate=8000;
distortion=zeros(1,quant_lvls);
bit_rate=zeros(1,quant_lvls);

for i=1:quant_lvls
    quant_speech = Uquant(speech_file,2^i);
    error = quant_speech - speech_file;
    PSNR=sum(quant_speech.^2)/sum(error.^2);
    bit_rate(i)=i*samp_rate;
    distortion(i)=1/PSNR;
end

plot(distortion,bit_rate,'*r-')
xlabel('Distortion (1/PSNR)')
ylabel('Bit Rate (kbps)')
title('Rate-Distortion Curve')