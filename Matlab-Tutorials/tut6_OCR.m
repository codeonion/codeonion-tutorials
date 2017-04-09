close all;

rawImage_ocr1 = imread('assets/ocr_1_Archives-OCR-4.jpg');
rawImage_ocr2 = imread('assets/ocr_2_rugby.jpg');


ocr1 = ocr(rawImage_ocr1);
ocr2 = ocr(rawImage_ocr2);


% subplot(2,2,1), imshow(rawImage_ocr1), title('Archives-OCR-4');
% subplot(2,2,2), imshow(rawImage_ocr2), title('rugby');
% subplot(2,2,3), imshow(rawImage_ocr1), title('OCR of Archives-OCR-4');
% subplot(2,2,4), imshow(rawImage_ocr2), title('OCR of rugby');

% Added steel streucture