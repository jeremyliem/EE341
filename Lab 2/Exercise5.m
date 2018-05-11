%EE 341 Lab 2 Assignment 5
%April 25 2017
%Jeremy Liem

%read the image
image = imread('DailyShow', 'jpeg');

%Convert RGB image to gray
image2=rgb2gray(image);

%Using Linear Interpolation
scaleUp(image2);


