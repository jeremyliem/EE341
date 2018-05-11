%EE 341 Lab 2 Linear Interpolation 
%April 25 2017
%Jeremy Liem
%Function for Linear Interpolation
% Input= grayscale image and outputs a picture and shows an image after
% 2D linear interpolation.
function Expand = scaleUp(image)
Expand = interp2(double(image));
imshow(Expand,[]);
title('Expanding by Linear Interpolation');
end