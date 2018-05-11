%Assignment 3 Lab 4 EE 341
%May 16 2017
%Jeremy Liem
%Part II Music Equalizer

function [output] = Assignment2Part2(input,G1, G2, G3)
%Test
%LowPassFilter
B1=[0.0495, 0.1486, 0.1486, 0.0495];
A1=[1,-1.1619,0.6959,-0.1378];
LPF = filter(B1,A1,input);
%output = frevalz01(B1,A1);

%BandPass Filter
B2=[0.1311,0,-0.2622,0,0.1311];
A2=[1,-0.4824,0.8101,-0.2269,0.2722];
BPF = filter(B2,A2,input);
%output1 = frevalz01(B2,A2);

%HighPassFilter
B3=[0.0985,-0.2956,0.2956,-0.0985];
A3=[1,0.5772,0.4218,0.0563];
HPF = filter(B3,A3,input);
%output2 = frevalz01(B3,A3);

%Multiply input with LPF,BPF and HPF
out1 =LPF.*G1;
out2 = BPF.*G2;
out3 = HPF.*G3;

%Sum the output
output = out1+out2+out3;
end