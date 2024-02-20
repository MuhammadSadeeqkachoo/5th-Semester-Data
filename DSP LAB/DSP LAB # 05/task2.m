% Set the standard deviation of the noise
sigma = 2; % volts

% Generate a random noise vector with the same size as t
noise = sigma * randn(size(t)); % volts

% Add the noise to the signal x to get the noisy signal y
y = x + noise; % volts

% Plot the noisy signal y
plot(t,y)
xlabel('Time (s)')
ylabel('Voltage (V)')
title('Noisy signal with sine waves at 50 Hz and 120 Hz')
