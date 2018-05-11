%Name: Jeremy Liem & Fabian Sutandyo
%Lab : Lab 1 Ex1 - Ex 3

clearvars;
close all;

%Set Fs = 8000
Fs=8000;

%Determine A,E,B,C
A=220;
E=220*2^(7/12);
B=220*2^(2/12);
C=220*2^(3/12);

%Create time samples vector for each
t1=0:1/Fs:0.5-1/Fs;
t2=0:1/Fs:1-1/Fs;
t3=0:1/Fs:2-1/Fs;


y1=sin(2*pi*A*t2);
y2=sin(2*pi*A*t1);
y3=sin(2*pi*E*t1);
y4=sin(2*pi*B*t1);
y5=sin(2*pi*C*t1);
y6=sin(2*pi*A*t3);

pause=zeros(1,(Fs/8));

x=[y1 pause y2 pause y3 pause y3 pause y3 pause y4 pause y5 pause y4 pause y6];
%sound(x,Fs);

%Ex 2
%ADSR

%ADSR for 8kHz
at = linspace(0,1,0.15*Fs);
d = linspace(1,0.6,0.15*Fs);
s = linspace(0.6,0.6,0.6*Fs);
r = linspace(0.6,0,0.1*Fs);

ADSR = [at d s r];

%ADSR for 4kHz
aa = linspace(0,1,0.15*4000);
dd = linspace(1,0.6,0.15*4000);
ss = linspace(0.6,0.6,0.6*4000);
rr = linspace(0.6,0,0.1*4000);

ADSR1 = [aa dd ss rr];

%ADSR for 16kHz
att = linspace(0,1,0.15*2*Fs);
dtt = linspace(1,0.6,0.15*2*Fs);
stt = linspace(0.6,0.6,0.6*2*Fs);
rtt = linspace(0.6,0,0.1*Fs*2);

ADSR2 = [att dtt stt rtt];

%Multiply each note with its equivalent ADSR
y11 = ADSR.*y1;
y21 = ADSR1.*y2;
y31 = ADSR1.*y3;
y41 = ADSR1.*y4;
y51 = ADSR1.*y5;
y61 = ADSR2.*y6;

%Concatenate the song
x1=[y11 pause y21 pause y31 pause y31 pause y31 pause y41 pause y51 pause y41 pause y61];
%sound(x1,Fs);

%Exercise 3

%Create a vector of zeros
z=zeros(1,49600);
%Assign each part of the zeros with a note for the song with overlap
z(1:8000) = z(1:8000)+y11;
z(7701:11700) = z(7701:11700)+y21;
z(11401:15400) = z(11401:15400)+y31;
z(15101:19100) = z(15101:19100)+y31;
z(18801:22800) = z(18801:22800)+y31;
z(22501:26500) = z(22501:26500)+y41;
z(26201:30200) = z(26201:30200)+y51;
z(29901:33900) = z(29901:33900)+y41;
z(33601:49600) = z(33601:49600)+y61;

%Play the song
sound(z,Fs);





