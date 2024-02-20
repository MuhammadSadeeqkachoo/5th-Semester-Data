fs = 1000; % Sampling Frequency
fc = 200;  % Carrier Frequency
t = (0:1/fs:0.2)';
fDev = 50;
FDev = 100;

x  = sin(2*pi*30*t) + sin(2*pi*60*t);

cs = sin(2*pi*fc*t);


hold on
plot(t,cs,"--"); %Carrier Signal
plot(t,x); %modulating Signal 
xlabel('Time (s)')
ylabel('Amplitude')
legend('Carrier Signal','Modulating Signal')

%Comment
% Original Signal is the combination of two frequecies which is 30 and 60
%while carrier signal is has frequency 200 hz only 

y = fmmod(x,fc,fs,fDev);
figure;
plot(t,x,'r',t,y,'k--')
xlabel('Time (s)')
ylabel('Amplitude')
legend('Original Signal','Modulated Signal')

y = fmmod(x,fc,fs,FDev);
figure;
plot(t,x,'r',t,y,'k--')
xlabel('Time (s)')
ylabel('Amplitude')
legend('Original Signal','Modulated Signal')

z = fmdemod(y,fc,fs,fDev);
figure;
plot(t,x,'c',t,z,'b--');
xlabel('Time (s)');
ylabel('Amplitude');
legend('Original Signal','Demodulated Signal');



