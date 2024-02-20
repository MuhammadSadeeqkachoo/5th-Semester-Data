m = 1.4;
fc = 10e3; 
fs = 80e3; 
t = 0:1/fs:0.01; 
Ac = 10/m;

f = linspace(-fs/2,fs/2,length(t));

s = 10*sin(2*pi*300*t)+10*sin(2*pi*600*t);
FS = fftshift(fft(s));

c = Ac*sin(2*pi*fc*t);
FC = fftshift(fft(c));

y = ammod(s, fc, fs, 0, Ac);
FY = fftshift(fft(y));

z = amdemod(y, fc, fs, 0, Ac);
FZ = fftshift(fft(z));

subplot(2,1,1);
plot(t,s);
title("Original Signal Time Domain");
subplot(2,1,2);
plot(f,abs(FS));
title("Original Signal Frequency Domain");
figure;

subplot(2,1,1);
plot(t,c);
title("Carrier Signal Time Domain");
subplot(2,1,2);
plot(f,abs(FC));
title("Carrier Signal Frequency Domain");
figure;

subplot(2,1,1);
plot(t,y);
title("Modulated Signal Time Domain");
subplot(2,1,2);
plot(f,abs(FY));
title("Modulated Signal Frequency Domain");
figure;

subplot(2,1,1);
plot(t,z);
title("Demodulated Signal Time Domain");
subplot(2,1,2);
plot(f,abs(FZ));
title("Demodulated Signal Frequency Domain");



