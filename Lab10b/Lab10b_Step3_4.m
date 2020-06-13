house=imread('house.tif');
load ycbcr
%Part1
figure(1)
colormap(gray(256))
image(house)
truesize
axis('image')
title('Original ''house.tif'' Image')

%Part 2
figure(2)
T=108;
Y=255*(house>T);
colormap(gray(256))
image(Y)
axis('image')
truesize
title('Binary ''house.tif'' Image')

%Part 3
figure(3)
abs_image=double(house)-Y;
colormap(gray(256));
image(abs(abs_image));
axis('image')
title('Absoulute Error ''house.tif'' Image')

%Part 4
[N, M] = size(house);
MSE = sum(sum((double(house) - Y).^2))/(N * M)

%Part 5
I = [12 8 10 6;4 16 2 14; 9 5 11 7;1 13 3 15];
[r, c] = size(I);
T = 255 * (I - 0.5) / (r * c);

[houseR, houseC] = size(house);
bigT = [];
for i = 1:houseR
    for j = 1:houseC
        R = mod(i, r);
        if R == 0
            R = r;
        end
        C = mod(j, c);
        if C == 0
            C = c;
        end
        bigT(i, j) = T(R, C);
    end
end

newHouse2 = 255 * (house > bigT);
figure(4)
image(newHouse2)
colormap(gray(256));
axis('image')
title('Quantized Image of ''house.tif'' using Bayer dithering')
errorHouse2 = abs(double(house) - newHouse2);
figure(5)
image(errorHouse2)
colormap(gray(256));
axis('image')
title('Error Image of ''house.tif'' using Bayer dithering')
MSE2 = sum(sum((double(house) - newHouse2).^2))/(N * M)

binaryImage = zeros(N, M);
for i = 2:N-1
   for j = 2:M-1
        binaryImage(i, j) = 255 * (house(i, j) > 108);
        error = house(i, j) - binaryImage(i, j);
        house(i, j+1) = house(i, j+1) + 7/16 * error;
        house(i+1, j-1) = house(i+1,j-1) + 3/16 * error;
        house(i+1, j) = house(i+1,j) + 5/16 * error;
        house(i+1, j+1) = house(i+1,j+1) + 1/16 * error;
   end
end

figure(6)
image(uint8(binaryImage))
colormap(gray(256));
axis('image')
title('Quantized Image of ''house.tif'' using Error Diffusion')

errorHouse3 = abs(double(house) - binaryImage);
figure(7)
image(uint8(errorHouse3))
colormap(gray(256));
axis('image')
title('Error Image of ''house.tif'' using Error Diffusion')
MSE3 = sum(sum((double(house) - binaryImage).^2))/(N * M)

Y1 = filter2(h, Y);
Y2 = filter2(h, newHouse2);
Y3 = filter2(h, binaryImage);

filterMSE = sum(sum((double(house) - Y1).^2))/(N * M)
filterMSE2 = sum(sum((double(house) - Y2).^2))/(N * M)
filterMSE3 = sum(sum((double(house) - Y3).^2))/(N * M)
