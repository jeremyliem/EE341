clearvars;
close all;

%load microsoft
xn=load('microsoft_stock.txt');
%part a
[d,c]=fir1(10,0.3,'low');
ff1=frevalz01(d,c);

%partb
[b,a]=butter(10,0.3,'low');
ff2=frevalz01(b,a);

%partc
%stock market
yfir=filter(d,c,xn);
ybutter=filter(b,a,xn);
figure(2);
plot(xn)
hold on;
plot(yfir,'red')
hold on;
plot(ybutter,'green')
legend('original','using fir','using butter');
title('Stock Data');
xlabel('time');
ylabel('stock');

%pulse of length twenty
pulse=ones(1,20);
pulse2=[pulse, zeros(1,40)];
yfirp=filter(d,c,pulse2);
ybutterp=filter(b,a,pulse2);
figure(3);
plot(pulse2)
hold on;
plot(yfirp,'red')
hold on;
plot(ybutterp,'green')
legend('original','using fir','using butter');
title('Pulse');
xlabel('time');
ylabel('y');

%music data
[y, fs]=audioread('music.wav');
yfirm=filter(d,c,y);
ybutterm=filter(b,a,y);
figure(4)
subplot(2,1,1);
plot(yfirm)
title('Music data using FIR');
xlabel('time');
ylabel('y');
subplot(2,1,2);
plot(ybutterm)
title('Music data using Butter');
xlabel('time');
ylabel('y');



