%EE 341 Lab 3 Assignment 1
%May 2 2017
%Name: Jeremy Liem 

clearvars;
close all;

%define variable
N= 0:127;
f=[0.25 0.5];
Fs=10000;

%create x1 and x2 where x1 corresponds to f=0.25 and x2 corresponds to
%f=0.5
x1=1+cos(2*pi*f(1)*N);
x2=1+cos(2*pi*f(2)*N);

%case where f = 0.25
y1=fft(x1);
y1_mag = abs(y1);
y1_shift = fftshift(y1);
y1_shift_mag = abs(y1_shift);

%case where f = 0.5
y2=fft(x2);
y2_mag = abs(y2);
y2_shift = fftshift(y2);
y2_shift_mag = abs(y2_shift);

%Calculate w for to plot the frequency content
N1 = length(N);
w_period = 1/N1;
w = (-N1/2:(N1/2)-1)*w_period;

w_period2 =Fs/N1;
w2 = (-N1/2:(N1/2)-1)*w_period2;
%Plot all of it using stem.
figure;
subplot(3,2,1);
stem(w,y1_mag);
xlabel('Frequency');
ylabel('Magnitude of x[n]');
title('x[n] when f=0.25');
subplot(3,2,2);
stem(w,y2_mag);
xlabel('Frequency');
ylabel('Magnitude of x[n]');
title('x[n] when f=0.50');
subplot(3,2,3);
stem(w,y1_shift_mag);
xlabel('Frequency');
ylabel('Magnitude of x[n]');
title('Shifted x[n] when f=0.25');
subplot(3,2,4);
stem(w,y2_shift_mag);
xlabel('Frequency');
ylabel('Magnitude of x[n]');
title('Shifted x[n] when f=0.50');
subplot(3,2,5);
stem(w2,y1_shift_mag);
xlabel('Frequency');
ylabel('Magnitude of x[n]');
title('Shifted x[n] when f = 0.25 and sampling rate = 10kHz');
subplot(3,2,6);
stem(w2,y2_shift_mag);
xlabel('Frequency');
ylabel('Magnitude of x[n]');
title('Shifted x[n] when f = 0.5 and sampling rate = 10kHz');



