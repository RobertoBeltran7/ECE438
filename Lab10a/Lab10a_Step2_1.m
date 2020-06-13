A=imread('yacht.tif');

B=double(A);
figure();
image(B);
colormap(gray(256));
axis('image');
title('Original Image')
sz=size(B);

%hor_image=double(zeros(sz));
%{
for i=1:sz(2)
    hor_image(:,i)=flipud(B(:,i));
end
%}
hor_image=flipud(B);
imwrite(uint8(hor_image),'horz.png');
load_horzimg=double(imread('horz.png'));

figure();
image(load_horzimg);
colormap(gray(256));
axis('image');
title('Vertically Flipped Image')

%ver_image=double(zeros(sz));
ver_image=fliplr(B);
imwrite(uint8(ver_image),'vert.png');
load_vert=double(imread('vert.png'));

figure();
image(load_vert);
colormap(gray(256));
axis('image')
title('Horizontally Flipped Image')

neg_image=255-B;

figure()
image(neg_image);
axis('image')
colormap(gray(256));
title("Negative Image");

mul_image = 1.5 * B;
figure()
image(mul_image);
axis('image')
colormap(gray(256));
title("Scaled Image");


