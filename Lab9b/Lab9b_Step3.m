clear
clc
audio = audioread('phrase.au');
len_divider = 30/0.125;
i = 1;
c = 1;
while i + len_divider -1< length(audio)
    segment = audio(i:i+len_divider -  1);
    S(:, c) = segment;
    c = c+1;
    i = i+len_divider;
end

energy = [];
[row, col] = size(S);
for i = 1:col
   energy(i) = sum(S(:, i) .^2); 
end
VU = [];
W =[];
%zcd = dsp.ZeroCrossingDetector;
for i = 1:col
    W(i)= zero_cross(S(:,i));
    if zero_cross(S(:,i)) < (row/5)
        VU(i) = 1;
    else
        VU(i) = 0;
    end
end

for i = 1:col
    coeff = mylpc(S(:,i).', 15);
    A(:, i) = coeff;
end

s = [];
for i =1:col
    coeff = A(:, i);
    if VU(i) == 0
       x = exciteUV(len_divider);
    else
       x = exciteV(len_divider,0.0075 * 8000); 
    end
    signal = filter(1,[1,-coeff.'], x);
    scale = energy(i) / sum(signal.^2);
    s1 = scale * signal;
    s = [s, s1];
end
whos energy VU A audio
input('Original signal')
sound(audio)
input('Synthesized signal')
sound(s)

orient('tall')
subplot(2, 1, 1)
plot(audio(1:19920))
ylim([-1 0.8])
title('Original Audio Signal')
subplot(2, 1, 2)
plot(s)
ylim([-1 0.8])
title('Synthesised Audio Signal')


