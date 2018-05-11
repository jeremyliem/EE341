%341 Lab Assignment 3 function 
%April 25 2017
%Jeremy Liem
%Function to scale down the image by a factor of scalingFactor
%Function takes in an image and a scalingFactor and outputs an image.
%Function iterates through the image and then takes the center pixel if scalingFactor is odd
% and one of the 4 pixels if scalingFactor is even.
function scaleIt= scaleDown(Image,scalingFactor)
m=1;
for i=1:scalingFactor:400-scalingFactor
    n=1;
    for j=1:scalingFactor:468-scalingFactor
   pixel=Image(i:i+scalingFactor,j:j+scalingFactor);
   scaleIt(m,n)=pixel(1,1);
   n=n+1;
    end
   m=m+1;
end
end
