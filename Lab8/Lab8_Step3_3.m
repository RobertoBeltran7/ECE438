y = imread('fountainbw.tif');
image(y)
colormap(gray(256));
axis('image');
title('Original Image')

z=double(y);

%print quantized image for 1 b/pxl to 7 b/pxl
for i=1:7
    figure(i+1)
    quant_image = Uquant(z,2^i);
    image(quant_image);
    colormap(gray(256));
    axis('image');
    title_txt=strcat('Quantized image at',{' '},num2str(i),' bit(s)/pixel');
    title(title_txt)
end