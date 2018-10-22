clc;
close all;
clear all;
[x, fs]=audioread('origin.wav');
t=(1:length(x))/fs;
am=x';
y=cos(pi*t*90000).*am;

title('Amplitude Modulated Signal')
grid on;
sound(y,fs)

t=(1:length(y))/fs; 
win = hanning(length(y)); K = sum(win)/length(y); 
y=y';
X = abs(fft(y.*win)); 
Xm = X(1:length(y)/2); 
Xm = Xm/(length(y)/2);
Xm(1,1) = Xm(1,1)/2; 
Xm = Xm/K; 
f = (0:length(y)/2-1)*fs/length(y);
plot(f, Xm)
%plot (t,y) ͺi¦ζ€£Εά

