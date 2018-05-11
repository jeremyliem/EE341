%341 Lab 2 Assignment 2
% April 25 2015
%Name: Jeremy Liem and Fabian Sutandyo

%Set image as dailyshow and convert picture to grayscale
image = imread('random', 'jpeg');
image2 = rgb2gray(image);

%show image and give comment to image.
imshow(image2);
size(image2) %Size is 400 x 468

%create vertical sobel edge detection
h1=[-1 0 1;-2 0 2;-1 0 1];

%create horizontal sobel edge dectection
h2 = [1 2 1;0 0 0;-1 -2 -1];

%Convolution of M1 with random
M1 = conv2(h1,image2);
abs_M1 = abs(uint8(M1));

%convolution of M2 with random
M2 = conv2(h2,image2);
abs_M2 = abs(uint8(M2));
% Calculate overall gradient magnitude;
M=(M1.^2 + M2.^2).^0.5;
%Plot pictures - image image2 M1 M2 M
plot(3,2);
subplot(3,2,1); imshow(image);
subplot(3,2,2); imshow(image2);
subplot(3,2,3);imshow (abs_M1);
subplot(3,2,4);imshow(abs_M2);
subplot(3,2,5);imshow(uint8(M));
