% Set the frequency limit
fmax = 200; % Hz

% Find the index of the frequency vector that corresponds to the limit
imax = find(f <= fmax, 1, 'last');

% Plot the PSD of the noisy signal y up to 200 Hz
plot(f(1:imax),Pyy(1:imax))
xlabel('Frequency (Hz)')
ylabel('Power (V^2/Hz)')
title('Power spectral density of the noisy signal y up to 200 Hz')
