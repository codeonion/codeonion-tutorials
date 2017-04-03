close all;
clear all;

x = imread('assets\faces.jpg');

grayscale = rgb2gray(x);

% Blur the Image (Averaging filter Algorithm
averagingFilter = [1 1 1, 1 1 1, 1 1 1]/9;
applyAverageFilter = imfilter(x, averagingFilter);

% Basic Edge Detection (Requires Grayscale image smart pants!)
bacicEdgeDetection = edge(grayscale);

% Canny Edge Detection (So cheeki breeki!)
cannyEdgeDetection = edge(grayscale, 'canny');


% Edge Detection Filter (Sobel Edge Detection Algorithm)
% Smaller values are shown for simplicity. Modify for pleasure
sobelEdgeDetection = [1 0 -1, 2 0 -2, 1 0 -1];
applySobelEdgeDetecion = imfilter(grayscale, sobelEdgeDetection);

% Show time!
subplot(2,3,1), imshow(x), title('Raw Image');
subplot(2,3,2), imshow(grayscale), title('grayscale');
subplot(2,3,3), imshow(applyAverageFilter), title('applyAverageFilter');

subplot(2,3,4), imshow(bacicEdgeDetection), title('Basic Edge Detection');
subplot(2,3,5), imshow(cannyEdgeDetection), title('Canny Edge Detection');
subplot(2,3,6), imshow(applySobelEdgeDetecion), title('applySobelEdgeDetecion');