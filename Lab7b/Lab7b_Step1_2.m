samp_size=1000;
X=randn(1,samp_size);
Y=randn(1,samp_size);

Z_1=Y;
Z_2=(X+Y)/2;
Z_3=(4*X+Y)/5;
Z_4=(99*X+Y)/100;

Z=[Z_1 Z_2 Z_3 Z_4];
p_xz=zeros(1,4);
t=zeros(1,4);

for i=0:3
    t(i+1)=subplot(2,2,i+1);
    n=i*1000+1:(i+1)*1000;
    
    plot(X,Z(n),'.')   
    title_str=strcat('Plot of X vs Z_',num2str(i+1),' for n=1000 samples');
    title(title_str)
    xlabel('X')
    ylabel('Z')
   
    p_xz(i+1)=sum((X-mean(X)).*(Z(n)-mean(Z(n))))/sqrt(sum((X-mean(X)).^2).*sum((Z(n)-mean(Z(n))).^2))
    annotation('textbox',get(t(i+1),'Position'),'String',strcat('p_x_z =',{' '},num2str(p_xz(i+1))))
end






