% Load and threshold example image
I = imread('rice.png');             % Built-in grayscale image
bw = imbinarize(I);                 % Convert to binary

% Define a 3x3 square structuring element
se = strel('square', 3);

% Erosion and Dilation
eroded = imerode(bw, se);
dilated = imdilate(bw, se);

% 1. Internal Boundary
internal_boundary = bw & ~eroded;

% 2. External Boundary
external_boundary = dilated & ~bw;

% 3. Morphological Gradient
morph_gradient = dilated & ~eroded;

% Display results
subplot(2,3,1), imshow(bw), title('Original Binary Image');
subplot(2,3,2), imshow(internal_boundary), title('Internal Boundary');
subplot(2,3,3), imshow(external_boundary), title('External Boundary');
subplot(2,3,4), imshow(morph_gradient), title('Morphological Gradient');
subplot(2,3,5), imshow(eroded), title('Eroded Image');
subplot(2,3,6), imshow(dilated), title('Dilated Image');
