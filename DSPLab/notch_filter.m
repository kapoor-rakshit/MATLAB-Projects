clc
clear all
close all

Fs=250;
t=0:1/Fs:1;
x=sin(2*pi*40*t)+sin(2*pi*70*t)+sin(2*pi*90*t);
X=fft(x);
L1=length(X);
f=100*linspace(0,1,L1/2);            % Create a vector of size L/2 linearly spaced numbers from 0 to 1:
subplot(3,1,1)
plot(f,abs(X(1:L1/2)));
title('All frequencies');
xlabel('Frequency');
ylabel('Magnitude');


w0 = 40/(Fs/2);                     % fc/(fs/2)
bw = w0/30;                         % 30 is the q factor. BW = w0/q
[b,a] = iirnotch(w0,bw);            

% [num,den] = iirnotch(w0,bw) turns a digital notching filter with the notch located at w0 and with the bandwidth at the -3 dB point set to bw. 
% To design the filter, w0 must meet the condition 0.0 w0 1.0, where 1.0 corresponds to ? adians per sample in the frequency range.
                         
[h,w]=freqz(b,a);
subplot(3,1,2);
plot(w/pi,20*log(abs(h)));
title('IIR Notch Filter to remove 40hz from a signal');
xlabel('Frequency');
ylabel('Magnitude');

y=filter(b,a,x);
z=fft(y);
subplot(3,1,3);
plot(f,abs(z(1:L1/2)));
title('Signal with 40hz frequency removed from a signal');
xlabel('Frequency');
ylabel('Magnitude');



 

