%EE 341 Lab 4
%Assigment 2 Part 2
%Date : May 22 2017

%Read in Music File
music = audioread('music.wav');

%soundsc(music);

%Call in question 2 in lab files.
question2 = Assignment2Part2(music,1,1,1);
soundsc(question2);

%Do question 3 with different gains for G1,G2,G3.
question3=Assignment2Part2(music,0,0,1);
%soundsc(question3);
question5=Assignment2Part2(music,0,1,0);
%soundsc(question5);
question6=Assignment2Part2(music,1,0,0);
%soundsc(question6);