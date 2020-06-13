%Part 1
samp_size=1000;
X=randn(1,samp_size);
Z=randn(1,samp_size);

Y=X+Z;

m=-10:10;
cor_xy=zeros(1,length(m));

for i=1:length(m)
    cor_xy(i)=CorR(X,Y,m(i));
end
figure(1)
stem(m,cor_xy)
title('Plot of Correlation of X and Y vs m, -10<m<10')
xlabel('m')
ylabel('c''_x_y')

%Part 2
m=-100:100;
auto_corr=zeros(1,length(m));
cross_corr=zeros(1,length(m));

load radar

for i=1:length(m)
    auto_corr(i)=CorR(trans,trans,m(i));
    cross_corr(i)=CorR(trans,received,m(i));
end
figure(2)
subplot(2,1,1)
plot(trans)
title('Plot of transmitted signal')
subplot(2,1,2)
plot(received)
title('Plot of received signal')

figure(3)
stem(m,auto_corr)
title('Plot of sample autocorrelation, -100<m<100')
xlabel('m')
ylabel('r''_X_X(m)')

figure(4)
stem(m,cross_corr)
title('Plot of sample cross-correlation, -100<m<100')
xlabel('m')
ylabel('c''_X_Y(m)')

peak_val=max(cross_corr);
[x,y]=find(cross_corr==peak_val);
delay=m(y)

