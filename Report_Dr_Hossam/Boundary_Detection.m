BW1 = imread('circbw.tif');

SE = strel('rectangle',[40 30]);

BW2 = imopen(BW1, SE);

subplot(1,2,1), imshow(BW1), title("Original")
subplot(1,2,2), imshow(BW2), title("After Opening")
