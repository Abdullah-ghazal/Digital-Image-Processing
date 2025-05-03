originalBW = imread('text.png');
se = strel('line',11,90);
erodedBW = imerode(originalBW,se);

subplot(1,2,1)
imshow(originalBW), title("Original")

subplot(1,2,2)
imshow(erodedBW), title("After erosion")