%EE 341 Lab 2 Assignment 4
%April 25 2017
%Jeremy Liem
%Result is shown in 3 different figures.

%Read the image
image = imread('DailyShow', 'jpeg');
%Change the image to grayscale
image2 = rgb2gray(image);

%Flip Vertically using flipud
image3 = flipud(image2);
%shifted by 1 using circshift
imageA = circshift(image3,1,1);
figure(1);
imshow(imageA);
title('x[N-n+1,m]');

%Flip Horizontally using fliplr
image4= fliplr(image2);
%shifted by 1 using circshift
imageB = circshift(image4,1,2);
figure(2);
imshow(imageB);
title('x[n,M-m+1]');

%Flip Both Horizontally and Vertically
image5 = fliplr(image2);
imageC = circshift(image5,1,2);
image6 = flipud(imageC);
imageD = circshift(image6,1,1);
figure(3);
imshow(imageD);
title('x[N-n+1,M-m+1]');