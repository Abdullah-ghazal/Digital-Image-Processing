BW = imread('text.png');
se = strel('line',11,90);
BW2 = imdilate(BW,se);

subplot(1,2,1);
imshow(BW), title('Original');

subplot(1,2,2);
imshow(BW2), title('Dilated');
