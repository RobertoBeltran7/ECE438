%theta = pi/6
%Transfer function Hf=1-2cos(theta)*(1/z)+(1/z^2)
%Hf(z) = Y(z)/X(z)
%Difference Equation: y[n] = x[n]-2cos(theta)*x[n-1]+x[n-2]
%b0 = 1; b1 = -2cos(theta); b2 = 1; N = 3

N=3;
w=-pi:0.01:pi;
coefficients_pi_6 = [1 -2*cos(pi/6) 1];
coefficients_pi_3 = [1 -2*cos(pi/3) 1];
coefficients_pi_2 = [1 -2*cos(pi/2) 1];
j = sqrt(-1);

%frequency response transfer function
Hf1 = zeros;
Hf2 = zeros;
Hf3 = zeros;

for i=1:N
    Hf1 = Hf1 + coefficients_pi_6(i)*exp(-j*w*(i-1));
    Hf2 = Hf2 + coefficients_pi_3(i)*exp(-j*w*(i-1));
    Hf3 = Hf3 + coefficients_pi_2(i)*exp(-j*w*(i-1));
end

subplot(3,1,1)
plot(w,abs(Hf1))
xlabel('Frequency in rad')
ylabel('Magnitude')
title('Plot of magnitude of frequency response for θ=pi/6')

subplot(3,1,2)
plot(w,abs(Hf2))
xlabel('Frequency in rad')
ylabel('Magnitude')
title('Plot of magnitude of frequency response for θ=pi/3')

subplot(3,1,3)
plot(w,abs(Hf3))
xlabel('Frequency in rad')
ylabel('Magnitude')
title('Plot of magnitude of frequency response for θ=pi/2')


%Part2
%sound(nspeech1)
subplot(4,1,1)
plot(100:200,nspeech1(100:200))
xlabel('Time Index')
ylabel('Speech signal')
title('Plot of unfiltered speech signal')

[X,w] = DTFT(nspeech1(100:1100),0);
subplot(4,1,2)
plot(w,abs(X))
xlabel('Frequency')
ylabel('Magnitude')
title('Plot of Magnitude of DTFT of unfiltered speech signal')

[Xmax,Imax]=max(abs(X));

[FIRoutput] = FIRfilter(nspeech1);
%sound(FIRoutput)
subplot(4,1,3)
plot(100:200,FIRoutput(100:200))
xlabel('Time Index')
ylabel('Filtered speech signal')
title('Plot of filtered speech signal')

[X,w] = DTFT(FIRoutput(100:1100),0);
subplot(4,1,4)
plot(w,abs(X))
xlabel('Frequency')
ylabel('Magnitude')
title('Plot of Magnitude of DTFT of filtered speech signal')



