% Set the number of points for the DFT
N = 251; % samples

% Compute the DFT of the noisy signal y using the fft function
Y = fft(y,N); % volts

% Plot the magnitude spectrum of the DFT
f = (0:N-1) * fs / N; % frequency vector in Hz
plot(f,abs(Y))
xlabel('Frequency (Hz)')
ylabel('Magnitude (V)')
title('Magnitude spectrum of the noisy signal y')
