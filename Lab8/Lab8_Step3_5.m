speech = audioread('speech.au');

hist(speech,40);

quant_est=[-0.14 -0.0639 0.0884 0.165];

[partition,codebook]=lloyds(speech,quant_est);

hold on
plot(codebook(1),0,'*r','linewidth',4);
plot(codebook(2),0,'*r','linewidth',4);
plot(codebook(3),0,'*r','linewidth',4);
plot(codebook(4),0,'*r','linewidth',4);
title('40-bin histogram of speech signal with codebook values') 
hold off

quant_speech=zeros(length(speech),1);

for i=1:length(speech)
    if (speech(i) < partition(1))
        quant_speech(i)=codebook(1);
    elseif ((speech(i) > partition(1)) && (speech(i) < partition(2)))
        quant_speech(i)=codebook(2);
    elseif ((speech(i) > partition(2)) && (speech(i) < partition(3)))
        quant_speech(i)=codebook(3);
    else
        quant_speech(i)=codebook(4);
    end    
end

%Max quantized signal
Error=quant_speech-speech;
PSNR_max=sum(quant_speech.^2)/sum(Error.^2)

%Uniform quantized signal (4 level)
[quant_uniform]=Uquant(speech,4);
Error_uniform=quant_uniform-speech;
PSNR_uniform=sum(quant_uniform.^2)/sum(Error_uniform.^2)

