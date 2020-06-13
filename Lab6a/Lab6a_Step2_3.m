N=20;
n=0:N-1;
j=sqrt(-1);
x_n=cos(pi.*n/4);
W=zeros;
w_indx=-2*pi:0.001:2*pi;

for i=1:length(w_indx)
    if ((w_indx(i)~=0) ||(w_indx(i)~=2*pi) || (w_indx(i)~=-2*pi))
        W(i)=exp((-j*w_indx(i))*(N-1)/2)*(sin(w_indx(i)*N/2)/sin(w_indx(i)/2));
    else
       W(i)=N;
    end
end

figure(1)
subplot(3,1,1)
plot(w_indx,abs(W))
subplot(3,1,2)
plot(w_indx,angle(W))

win=ones(1,N);
x_trunc=x_n.*win;

[X,w]=DTFT(x_trunc,512);
subplot(3,1,3)
plot(w,abs(X))

figure(2)
%[X2,w2]=DTFT(x_n,0);
%stem(w2,abs(X2))
n_dtft=[-pi/4-2*pi -pi/4 pi/4 pi/4+2*pi];
dtft=(n_dtft==-pi/4)+(n_dtft==pi/4);
stem(n_dtft,pi.*dtft)
title('Plot of |X(w)|')
xlabel('w')
ylabel('Magnitude')

figure(3)
hamming_win=hamming(N);
x_ham=x_n'.*hamming_win;
[X3,w3]=DTFT(x_ham,512);
plot(w3,abs(X3))
title('DTFT plot of signal with Hamming window')
xlabel('w')
ylabel('Magnitude')






