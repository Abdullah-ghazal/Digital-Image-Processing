originalBW = imread('circles.png');

se = strel('disk',10);

closeBW = imclose(originalBW,se);

subplot(1,2,1), imshow(originalBW), title("Original")
subplot(1,2,2), imshow(closeBW), title("After Closing")