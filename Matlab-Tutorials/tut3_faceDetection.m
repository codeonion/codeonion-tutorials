close all;
clear all;
a = imread('assets/faces.jpg');
imshow(a);

detector = vision.vision.CascadeObjectDetector('EyePairBig');

boundingBox = step(detector, a);

out = insertObjectAnnotation(