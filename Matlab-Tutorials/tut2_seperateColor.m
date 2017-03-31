close all;
a = imread('assets/balls.jpg');

red = a(:,:,1);
green = a(:,:,2);
blue = a(:,:,3);

% imshow(r);
%pix = impixel(a);

thresholding = red>139 & red<235 & green>0 & green<191 & blue>218 & blue<255;

fillHoles = imfill(thresholding, 'holes');
erodeImage = bwmorph(fillHoles, 'erode');
dilateImage = bwmorph(erodeImage, 'dilate', 1);

subplot(2,3,1), imshow(a);
subplot(2,3,2), imshow(thresholding);
subplot(2,3,3), imshow(fillHoles);
subplot(2,3,4), imshow(erodeImage);
subplot(2,3,5), imshow(dilateImage);