x=audioread('music.au');
sound(x);

y= S_1(x);
input('Audio filtered using S_1')
sound(y);

z= S_2(x);
input('Audio filtered using S_2')
sound(z);