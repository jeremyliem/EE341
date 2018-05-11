%EE 341 Lab 3 Assignment 3
%May 2 2017
%Name: Jeremy Liem 

clearvars;
close all;

%Read and sound and collect info for blm.wav
%Sampling Rate = 22050
%Length = 1.1754
%No of Samples = 25917
[y1,Fs1]= audioread('blm.wav');
%soundsc(y1,Fs1);
info1 = audioinfo('blm.wav')
n1=1:25917;
n1_1 = transpose(n1);
%Read and sound and collect info for mmm.wav
%Sampling Rate = 11000
%Length = 1.0909
%No of Samples = 12000
[y2,Fs2]= audioread('mmm.wav');
%soundsc(y2,Fs2);
info2 = audioinfo('mmm.wav')
n2=1:12000;
n2_2= transpose(n2);
%plot blm.wav
y11=fft(y1);
y1_mag = abs(y11);
%plot mmm.wav
y12=fft(y2);
y2_mag = abs(y12);
%Calculate time sample
t_y1 =(0:length(y1)-1)*(1/Fs1);
t_y2 =(0:length(y2)-1)*(1/Fs2);
%Calculate freq sample
N1 = length(y1);
w_period = 1/N1;
w1 = (-N1/2:(N1/2)-1)*w_period;
N2 = length(y2);
w_period = 1/N2;
w2 = (-N2/2:(N2/2)-1)*w_period;
%Figure time and fft plot
figure(1);
subplot(2,2,1);
plot(t_y1,y1);
xlabel('Time');
ylabel('blm.wav');
title('Time signal of blm.wav');
subplot(2,2,2);
plot(w1,y1_mag);
xlabel('Frequency');
ylabel('Blm.wav');
title('blm.wav after fft ');
subplot(2,2,3);
plot(t_y2,y2);
xlabel('Time');
ylabel('mmm.wav');
title('Time signal of mmm.wav');
subplot(2,2,4);
plot(w2,y2_mag);
xlabel('Frequency');
ylabel('mmm.wav');
title('mmm.wav after fft ');
%Part A
y111 = y1.*(-1).^n1_1;
y111_mag = fftshift(abs(fft(y111)));
y112 = y2.*(-1).^n2_2;
y112_mag = fftshift(abs(fft(y112)));
%soundsc(y111,Fs1);
%soundsc(y112,Fs2);
figure(2);
subplot(2,1,1);
plot(w1,y111_mag);
xlabel('Frequency');
ylabel('Blm.wav');
title('blm.wav after fft');
subplot(2,1,2);
plot(w2,y112_mag);
xlabel('Frequency');
ylabel('mmm.wav');
title('mmm.wav after fft');
%partB

ascale=downsample(y1,2);
bscale=downsample(y2,2);

ascalef=fftshift(fft(ascale));
aabs=abs(ascalef);
bscalef=fftshift(fft(bscale));
babs=abs(bscalef);
ascalel=length(ascale)/Fs1;
bscalel=length(bscale)/Fs2;

n1s=length(ascale);
n2s=length(bscale);

ws1=ascalel/n1s;
ws12=(-n1s/2:(n1s/2)-1)*ws1;

ws2=bscalel/n2s;
ws22=(-n2s/2:(n2s/2)-1)*ws2;

figure(3)
subplot(2,1,1);
plot(ws12,aabs);

subplot(2,1,2);
plot(ws22,babs);

%PartC
% create a highpass filter
[B,A]= butter(10,0.25,'high');
% apply filter to signals
Z=filter(B,A,y11);
Za=filter(B,A,y12);
%reverse fft
U=ifft(Z);
Ua=ifft(Za);

%play the sound
soundsc(real(double(U)))
soundsc(real(double(Ua)))

%plot
figure(4);
subplot(2,1,1);
plot(w1,U)
title('BLM high pass');
subplot(2,1,2);
plot(w2, Ua)
title('MMM high pass');




