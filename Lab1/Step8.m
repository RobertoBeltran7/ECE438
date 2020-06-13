%Plots for 255*abs(sinc(0.2*x).*sin(0.2*y))
x=-50:0.1:50;
y=-50:0.1:50;
z=255*abs(sinc(0.2*x).*sin(0.2*y));
[Z] = meshgrid(z);
figure(1)
mesh(Z)
title('Mesh surface plot')
figure(2)
image(Z)
colormap(gray(256))
title('Mesh image')