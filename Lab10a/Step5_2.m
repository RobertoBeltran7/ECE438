h = gaussFilter(7, 1);
H = fftshift(fft2(h, 32, 32));
[X, Y] = meshgrid([-pi:2 * pi/31:pi]);
mesh(X, Y, abs(H));
xlabel("\omega_1")
ylabel("\omega_2")
title("Magnitude of the Frequency Response of the Gaussian Filter")


noisy1 = imread('noise1.tif');
noisy2 = imread('noise2.tif');
noise1 = double(noisy1);
noise2 = double(noisy2);

filteredNoise1 = medianFilter(noise1);
filteredNoise2 = medianFilter(noise2);
h = gaussFilter(7, 1);
Y1 = filter2(h, noise1);
Y2 = filter2(h, noise2);
figure
image(Y1)
colormap(gray(256));
axis('image');
title('''noise1.tif'' Gaussian Filtered Image');
figure
image(Y2);
colormap(gray(256));
axis('image');
title('''noise2.tif'' Guassian Filtered Image');
figure
image(filteredNoise1);
colormap(gray(256));
axis('image');
title('''noise1.tif'' Median Filtered Image')
figure
image(filteredNoise2);
colormap(gray(256));
axis('image');
title('''noise2.tif'' Median Filtered Image');

figure
image(noise1)
colormap(gray(256));
axis('image');
title('noise1.tif')

figure
image(noise2)
colormap(gray(256));
axis('image');
title('noise2.tif')