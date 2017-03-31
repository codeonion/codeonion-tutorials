close all;
clear all;
rawFaces = imread('assets/faces.jpg');
% imshow(rawFaces);

detector = vision.CascadeObjectDetector();

faceBoundingBox = step(detector, rawFaces);

facesDetected = insertObjectAnnotation(rawFaces, 'rectangle', faceBoundingBox, 'Target');

imshow(facesDetected);