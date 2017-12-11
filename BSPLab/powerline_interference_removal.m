clc
close all
clear all
 
Fs = 360;                    % Sampling frequency
T = 1/Fs;                     % Sample time
L = 3600;                     % Length of signal
t = (0:L-1)/360;                % Time vector0
load('C:\Users\ANIL KAPOOR\Desktop\BSP\100m.mat');
fn = 50;
x=val(1,1:3600);
noise = 400*sin(2*pi*fn*t);
subplot(211)
plot(t,x);
title('Original ECG');
subplot(212)
plot(t,noise);
title('50 Hz Power line Interference');
y = x + noise;
figure;
subplot(211)
plot(t,y);
title('ECG with noise');
subplot(212)
NFFT = 2^nextpow2(L);                                               % Next power of 2 from length of y
Y = fft(y,NFFT)/L;
f = Fs/2*linspace(0,1,NFFT/2+1);
                                                                                       % Plot single-sided amplitude spectrum.
plot(f,2*abs(Y(1:NFFT/2+1)));
title('Spectrum of ECG with noise');
wo = fn/Fs*2;
bw = 0.3*wo;
n = 40;
b = fir1(n,[wo-bw wo+bw],'stop');
ecgfinal = filter(b,1,y);
figure;
subplot(211)
plot(t(500:3600),ecgfinal(500:3600));
title('ECG after removal of power line interference');
subplot(212)
ecgfft = fft(ecgfinal,NFFT)/L;
plot(f,2*abs(ecgfft(1:NFFT/2+1)));
title('Spectrum of ECG after removal of power line interference');
