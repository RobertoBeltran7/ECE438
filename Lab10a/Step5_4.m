h = gaussFilter(5, 1);
H = 5 - 4 * abs(fftshift(fft2(h, 32, 32)));
[X, Y] = meshgrid([-pi:2 * pi/31:pi]);
mesh(X, Y, abs(H));
xlabel("\omega_1")
ylabel("\omega_2")
title("Magnitude of the Frequency Response of the Gaussian Filter")
blurr = imread('blur.tif');
blur = double(blurr);
g1 = 5.*blur-4.*filter2(h,blur);
g2 = 10.*blur-9.*filter2(h,blur);

figure
image(blur)
colormap(gray(256));
axis('image');
title('Original Image')
figure
image(g1)
colormap(gray(256));
axis('image');
title('Processed Image, \alpha = 5, \beta = 4')
figure
image(g2)
colormap(gray(256));
axis('image');
title('Processed Image, \alpha = 10, \beta = 9')