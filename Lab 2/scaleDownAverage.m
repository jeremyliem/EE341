%341 Lab 2 Assignment 3
%April 25 2017
%Jeremy Liem
%Function for average scaling
%Function takes in an image and a scaling factor and outputs an image.
%Function iterates through the image and then takes the average of all the
%pixels.
function matrik= scaleDownAverage(Image,scalingFactor)
m=1;
for i=1:scalingFactor:400-scalingFactor
    n=1;
    for j=1:scalingFactor:468-scalingFactor
   w=Image(i:i+scalingFactor,j:j+scalingFactor);
   w2=mean(w);
   matrik(m,n)=w2(1,1);
   n=n+1;
    end
   m=m+1;
end
end