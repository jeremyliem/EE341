%EE 341 Lab 4
%Name: Jeremy Liem
%Assignment 1

%Load and Plot original data
stock_data = load('microsoft_stock.txt');
figure(1);
plot(stock_data);
title('Original Microsoft Stock');
hold on
%create h[n]
a1=ones(1,30);
h=1/30*a1;
y=conv(stock_data,h);
%Plot after convolution
hold on
plot(y, 'red');
title('Microsoft Stock after Convolution');
%Do Using Filter command.
b = 1/30*a1;
a = 1;
output = filter(b,a,stock_data);
hold on
plot(output,'green');
title('Microsoft Stock after Filter command');
legend('Original','Convolution','Filter');
xlabel('Time');
ylabel('Magnitude');

%Plot DTFT of h[n].
N1 = length(0:29);
w_period = 1/N1;
w = (-N1/2:(N1/2)-1)*w_period;
h1=fft(h);
figure(2);
plot(w,abs(fftshift(h1)));
xlabel('Frequency');
ylabel('Magnitude');
title('DTFT of h[n]');

