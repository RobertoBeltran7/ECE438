%Part 1
figure(1)
A=imread('girl.tif');
subplot(2,2,1)
image(A);
axis('image');
title('Original Image')


subplot(2,2,2)
R=A(:,:,1);
image(R)
axis('image')
title('Red Component of Original Image')

subplot(2,2,3)
G=A(:,:,2);
image(G)
axis('image')
title('Green Component of Original Image')

subplot(2,2,4)
B=A(:,:,3);
image(B)
axis('image')
title('Blue Component of Original Image')

load ycbcr

%Part 2
figure(2)
subplot(3,1,1)
image(ycbcr(:,:,1))
colormap(gray(256))
axis('image')
title('Luminance(Y) Component of Original Image')

subplot(3,1,2)
image(ycbcr(:,:,2))
colormap(gray(256))
axis('image')
title('Chrominance(C_b) Component of Original Image')

subplot(3,1,3)
image(ycbcr(:,:,3))
colormap(gray(256))
axis('image')
title('Chrominance(C_\gamma) Component of Original Image')

%Part 3 (to RGB)
figure(3)
ycbcr_new=toRGB(ycbcr);
subplot(3,1,1)
image(ycbcr_new)
axis('image')
title('Original YC_bC_\gamma image to RGB')


%Part 4
ycbcr_temp=ycbcr;
Gauss_filter=filter2(h,ycbcr(:,:,1));
ycbcr_temp(:,:,1)=Gauss_filter;
Gauss2RGB=toRGB(ycbcr_temp);
subplot(3,1,2)
image(Gauss2RGB);
axis('image');
title('Luminance(Y) Filtered YC_bC_\gamma image')

Gauss_filter=filter2(h,ycbcr(:,:,2));
ycbcr_temp=ycbcr;
ycbcr_temp(:,:,2)=Gauss_filter;

Gauss_filter=filter2(h,ycbcr(:,:,3));
ycbcr_temp(:,:,3)=Gauss_filter;
Gauss2RGB=toRGB(ycbcr_temp);
subplot(3,1,3)
image(Gauss2RGB);
axis('image');
title('Chrominance(C_b,C_\gamma) Filtered YC_bC_\gamma image')


whos