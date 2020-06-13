A=imread('house.tif');

Hist(double(A));

title('Histogram of ''house.tif''')
ylabel('Number of Pixels')
xlabel('Pixel Intensity')