A=imread('dark.tif');

B=double(A);
figure(1)
image(B);
colormap(gray(256));
axis('image');
title('Original Image')

gamma=2.2;
figure(2)
B_corr=gammCorr(B,2.2);
image(B_corr)
colormap(gray(256));
axis('image');
title('\gamma Corrected Image')