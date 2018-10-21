[x, fs]=audioread('¤Ú¤Ú.wav');
sound(x, fs);	

t=(1:length(x))/fs; 
win = hanning(length(x)); K = sum(win)/length(x); 
X = abs(fft(x.*win)); 
Xm = X(1:length(x)/2); 
Xm = Xm/(length(x)/2);
Xm(1,1) = Xm(1,1)/2; 
Xm = Xm/K; 
f = (0:length(x)/2-1)*fs/length(x);
plot(f, Xm) 

