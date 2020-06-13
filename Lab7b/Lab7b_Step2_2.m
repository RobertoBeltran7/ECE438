samp_size=1000;
X=rand(1,samp_size);
Y=zeros(1,samp_size);

Y(1)=X(1);
Y(2)=X(2)-X(1);

% filter samples
for i=3:samp_size
    Y(i)=X(i)-X(i-1)+X(i-2);
end


m=-20:20;
r_yy=zeros(1,length(m));
r_yy_samp=zeros(1,length(m));

% theoretical autocorrelation
for i=1:length(m)
    if (m(i)==0) || (m(i)==4)
        r_yy(i)=1;
    elseif (m(i)==1) || (m(i)==3)
        r_yy(i)=-2;
    elseif m(i)==2
        r_yy(i)=3;
    else
        r_yy(i)=0;
    end
end

ryy=r_yy(abs(r_yy)>0);
ryy=ryy(1:4);


% scatter plots
figure(1)
for n=1:4
    t(n)=subplot(2,2,n);
    plot(Y(1:900),Y(1+n:900+n))
    title(strcat('Plot of Y_i vs Y_i_+_',num2str(n),' for i=1,2,...900'))
    xlabel('Y_i')
    ylabel(strcat('Y_i_+_',num2str(n)))
    annotation('textbox',get(t(n),'Position'),'String',strcat('Theoretical correlation =',{' '},num2str(ryy(n))));
end

% sample autocorrelation
N=length(Y);

for i=1:length(m)
    for j=1:N-abs(m(i))
        r_yy_samp(i)=r_yy_samp(i)+(1/(N-abs(m(i))))*(Y(j)*Y(j+abs(m(i))));
    end
end

figure(2)
subplot(2,1,1)
stem(m,r_yy)
title('Plot of r_y_y(m) vs m, -20<m<20')
xlabel('m')
ylabel('r_y_y(m)')
subplot(2,1,2)
stem(m,r_yy_samp)
title('Plot of r''_y_y(m) vs m, -20<m<20')
xlabel('m')
ylabel('r''_y_y(m)')



