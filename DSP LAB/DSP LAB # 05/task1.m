% Set the sampling frequency
fs = 1000; % Hz

% Create a time vector from 0 to 0.25 seconds with steps of 1 millisecond
t = 0:1/fs:0.25; % seconds

% Create a signal, x, containing sine waves at 50 Hz and 120 Hz
x = sin(2*pi*50*t) + sin(2*pi*120*t); % volts

% Plot the signal
plot(t,x)
xlabel('Time (s)')
ylabel('Voltage (V)')
title('Signal with sine waves at 50 Hz and 120 Hz')
