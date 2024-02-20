% Compute the PSD of the noisy signal y using the CONJ function
Pyy = Y.*conj(Y)/N; % power per frequency in V^2/Hz

% Form a frequency axis for the first 127 points
f = fs/N * (0:127); % frequency vector in Hz

% Plot the PSD of the noisy signal y
plot(f,Pyy(1:128))
xlabel('Frequency (Hz)')
ylabel('Power (V^2/Hz)')
title('Power spectral density of the noisy signal y')
