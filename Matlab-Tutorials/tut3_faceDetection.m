close all;
clear all;
rawFaces = imread('assets/faces.jpg');
% imshow(rawFaces);


% Following will create a "detector object" which detects objects using the Viola-Jones algorithm
% By default, it detects Faces
% CascadeObjectDetector can receive parameters like CascadeObjectDetector()
detector = vision.CascadeObjectDetector;

% Detects the face
faceBoundingBox = step(detector, rawFaces); 


facesDetected = insertObjectAnnotation(rawFaces, 'rectangle', faceBoundingBox, 'Face');

imshow(facesDetected);