A=imread('narrow.tif');

B=double(A);
figure(1);
image(B);
colormap(gray(256));
axis('image');
title('Original Image')

sz=size(B);
row_vec=sz(1)*sz(2);
x=reshape(B,1,row_vec);
figure(2)
hist(x,0:255);
title('Original Histogram of ''narrow.tif''')
ylabel('Number of Pixels')
xlabel('Pixel Intensity')

figure(3)
output=pointTrans(x,70,180);
hist(output,0:255);
title('Transformed Histogram of ''house.tif''')
ylabel('Number of Pixels')
xlabel('Pixel Intensity')

figure(4)
B_new=reshape(output,sz);
image(B_new);
colormap(gray(256));
axis('image');
title('Transformed Image')

