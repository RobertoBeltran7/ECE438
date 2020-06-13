%compute DTFT samples (N=50)
N1=50;
n1=0:N1-1;
x_n1=sin(0.1*pi*n1);

[X1,w1]=DTFTsamples(x_n1);
subplot(2,1,1)
stem(w1,abs(X1))
xlabel('w (rad/sample)')
ylabel('|X_5_0(w)|')
title('N = 50 point DFT')


%compute DTFT samples (N=200)
N2=200;
n2=0:N2-1;
x_n2=sin(0.1*pi*n2);

[X2,w2]=DTFTsamples(x_n2);
subplot(2,1,2)
stem(w2,abs(X2))
xlabel('w (rad/sample)')
ylabel('|X_2_0_0(w)|')
title('N = 200 point DFT')