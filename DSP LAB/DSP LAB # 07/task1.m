close all;
fs = 12000; % Sampling Frequency
fc = 5000;  % Carrier Frequency
m = 0.6; %modulation index
t = 0:1/fs:0.01;

x = 15*sin(2*pi*t*1000) + 15*sin(2*pi*t*2000);

carrier_signal = (5/m)*sin(2*pi*fc*t);

subplot(2,2,1);
plot(t,x);
title("Original Signal");

subplot(2,2,2);
plot(t,carrier_signal);
title("Carrier Signal");

y = ammod(x,fc,fs);

subplot(2,2,3);
plot(t,y);
title("Modulated Signal");

z = amdemod(y,fc,fs);

subplot(2,2,4);
plot(t,z);
title("Demodulated Signal");

fy=fftshift(fft(y));
fz=fftshift(fft(z));

f = linspace(-3000/2,3000/2,length(t));

figure;
subplot(2,1,1);
plot(f,abs(fy));
title("Modulated Signal frequency domain");
subplot(2,1,2);
plot(f,abs(fz));
title("Demodulated Signal frequency domain");
