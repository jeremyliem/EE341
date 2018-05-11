%EE 341 Lab 3 Assignment 2
%May 2 2017
%Name: Jeremy Liem 

clearvars;
close all;

%define variable
f1 = 0.15;
n=0:255;

%part a
x1 = sinc(f1.*(n-32));
x1_shift_mag = abs(fftshift(fft(x1)));
x1_shift_angle = angle(fftshift(fft(x1)));

%part b
x2 = sinc(f1.*(n-32)).*(-1).^n;
x2_shift_mag = abs(fftshift(fft(x2)));
x2_shift_angle = angle(fftshift(fft(x2)));

%part c
f2=0.2;
x3 = sinc(f1.*(n-32)).*(cos(2*pi*f2*n));
x3_shift_mag = abs(fftshift(fft(x3)));
x3_shift_angle = angle(fftshift(fft(x3)));

%part d
f3=0.45;
x4 = sinc(f1.*(n-32)).*(cos(2*pi*f3*n));
x4_shift_mag = abs(fftshift(fft(x4)));
x4_shift_angle = angle(fftshift(fft(x4)));

%create w
N1=length(n);
w_period = 1/N1;
w = (-N1/2:(N1/2)-1)*w_period;

%Plot each in a 3x2 subplot. The magnitude and phase plot are plotted
%beside each other.
figure;
subplot(3,2,1);
plot(w,x1_shift_mag);
xlabel('Frequency');
ylabel('magnitude of x1[n]');
title('x1[n] magnitude plot');
subplot(3,2,2);
plot(w,x1_shift_angle);
xlabel('Frequency');
ylabel('Phase angle of x1[n]');
title('x1[n] phase angle plot');
subplot(3,2,3);
plot(w,x2_shift_mag);
xlabel('Frequency');
ylabel('magnitude of x2[n]');
title('x2[n] magnitude plot');
subplot(3,2,4);
plot(w,x2_shift_angle);
xlabel('Frequency');
ylabel('Phase angle of x2[n]');
title('x2[n] phase angle plot');
subplot(3,2,5);
plot(w,x3_shift_mag);
xlabel('Frequency');
ylabel('magnitude of x3[n]');
title('x3[n] magnitude plot');
subplot(3,2,6);
plot(w,x3_shift_angle);
xlabel('Frequency');
ylabel('Phase angle of x3[n]');
title('x3[n] phase angle plot');

%Plot D for Report Purposes.
figure(2);
subplot(2,1,1);
plot(w,x4_shift_mag);
xlabel('Frequency');
ylabel('magnitude of x4[n]');
title('x4[n] magnitude plot');
subplot(2,1,2);
plot(w,x4_shift_angle);
xlabel('Frequency');
ylabel('Phase angle of x4[n]');
title('x4[n] phase angle plot');
