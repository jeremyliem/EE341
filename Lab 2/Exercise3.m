%341 Lab 2 Assignment 3
%April 25 2017
%Jeremy Liem

%Takes in the image
image = imread('DailyShow', 'jpeg');

%Display the image scaled by 1/2 by simple method.
figure(1);
afterScale2 = scaleDown(image,2);
imshow(afterScale2,[]);
title('Grayscale Image scaled by a factor of 2(simple method)');

%Display the image scaled by 1/5 by simple method
figure(2);
afterScale5 = scaleDown(image,5);
imshow(afterScale5,[]);
title('Grayscale Image scaled by a factor of 5(simple method)');

%Display the image scaled by 1/2 by average method
figure(3);
scaleBy2AverageMethod = scaleDownAverage(image, 2);
imshow(scaleBy2AverageMethod, []);
title('Grayscale Image scaled by 1/2 by average method');

%Display the image scaled by 1/5 by average method
figure(4);
scaleBy5AverageMethod = scaleDownAverage(image, 5);
imshow(scaleBy5AverageMethod, []);
title('Grayscale Image scaled by 1/5 by average method');


