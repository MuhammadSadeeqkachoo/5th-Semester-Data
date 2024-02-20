figure;
plot(f,Pyy(1:128),'b'); % PSD using complex conjugate
hold on;
plot(w,10*log10(Pyy2),'r--'); % PSD using periodogram
hold off;
xlabel('Frequency (Hz)');
ylabel('Power (V^2/Hz)');
title('Power spectral density of the noisy signal y');
legend('Complex conjugate','Periodogram');