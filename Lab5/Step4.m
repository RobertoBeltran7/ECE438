%Transfer function Hi=(1-r)/(1-2rcos(theta)*(1/z)+r^2*(1/z^2))
%Hf(z) = Y(z)/X(z)
%Difference Equation: (1*y[n]-2*r*cos(theta)*y[n-1]+(r^2)*y[n-2]) = (1-r)*x[n]
%a1=2*r*cos(theta) a2= -r^2 b0 = 1; b1 = -r; N_x = 2; N_y=2

%To find impulse response find H(w) and use inverse of DTFT use partial
%fraction expansion for transfer function

N=2;
w=-pi:0.01:pi;
j=sqrt(-1);

coefficients_x_99=[1 -2*0.99*cos(pi/3) 0.99^2];
%coefficients_y_99=[2*0.99*cos(pi/3) -0.99^2];

coefficients_x_90=[1 -2*0.9*cos(pi/3) 0.9^2];
%coefficients_y_90=[2*0.9*cos(pi/3) -0.9^2];

coefficients_x_70=[1 -2*0.7*cos(pi/3) 0.7^2];
%coefficients_y_70=[2*0.7*cos(pi/3) -0.7^2];

Hf1x=zeros;
%Hf1y=zeros;
Hf2x=zeros;
%Hf2y=zeros;
Hf3x=zeros;
%Hf3y=zeros;

for i=1:N
    Hf1x=Hf1x+coefficients_x_99(i)*exp(-j*w*(i-1));
    %Hf1y=Hf1y+coefficients_y_99(i)*exp(-j*w*(i));
    
    Hf2x=Hf2x+coefficients_x_90(i)*exp(-j*w*(i-1));
    %Hf2y=Hf2y+coefficients_y_90(i)*exp(-j*w*(i));
    
    Hf3x=Hf3x+coefficients_x_70(i)*exp(-j*w*(i-1));
    %Hf3y=Hf3y+coefficients_y_70(i)*exp(-j*w*(i));  
end

Hf1=(1-0.99)./Hf1x;
subplot(3,1,1)
plot(w,abs(Hf1))
title('Magnitude of frequency response for r=0.99')
xlabel('Frequency in rad')
ylabel('Magnitude')

Hf2=(1-0.9)./Hf2x;
subplot(3,1,2)
plot(w,abs(Hf2))
title('Magnitude of frequency response for r=0.90')
xlabel('Frequency in rad')
ylabel('Magnitude')

Hf3=(1-0.7)./Hf3x;
subplot(3,1,3)
plot(w,abs(Hf3))
title('Magnitude of frequency response for r=0.70')
xlabel('Frequency in rad')
ylabel('Magnitude')


%Part 2
%sound(pcm)
subplot(4,1,1)
plot(100:200,pcm(100:200))
xlabel('Time Index')
ylabel('Unfiltered speech signal')
title('Plot of unfiltered speech signal')

[X,w]=DTFT(pcm(100:1100),0);
subplot(4,1,2)
plot(w,abs(X))
xlabel('Frequency')
ylabel('Magnitude')
title('Plot of DTFT of unfiltered speech signal')

[IIRoutput]=IIRfilter(pcm);
subplot(4,1,3)
sound(IIRoutput)
plot(100:200,IIRoutput(100:200))
xlabel('Time Index')
ylabel('Filtered speech signal')
title('Plot of Filtered speech signal')

[X,w]=DTFT(IIRoutput(100:1100),0);
subplot(4,1,4)
plot(w,abs(X))
xlabel('Frequency')
ylabel('Magnitude')
title('Plot of DTFT of filtered speech signal')
