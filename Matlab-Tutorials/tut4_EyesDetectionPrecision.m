close all;
clear all;
rawFaces = imread('assets/faces.jpg');

% The additional Parameter detects visibly smaller Eyes
detector = vision.CascadeObjectDetector('EyePairSmall');

% Added for precision.
% Increasing this threshold may help reduce false detections
% Decreasing a lot may cause missed detections
detector.MergeThreshold = 2;

faceBoundingBox = step(detector, rawFaces); 

facesDetected = insertObjectAnnotation(rawFaces, 'rectangle', faceBoundingBox, 'Face');

imshow(facesDetected);