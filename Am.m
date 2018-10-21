clc;
close all;
clear all;
[x, fs]=audioread('¤Ú¤Ú.wav');
t=(1:length(x))/fs;
am=x';
y=cos(pi*t).*am;


plot(t,y)
title('Amplitude Modulated Signal')
grid on;
sound(y,fs)