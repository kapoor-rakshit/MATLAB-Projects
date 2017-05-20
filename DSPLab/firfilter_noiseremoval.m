clc
clear all
close all

Fs=200;
t=0:1/Fs:1;
x1=sin(2*pi*50*t)+sin(2*pi*60*t);

x2=fft(x1);
L1=length(x2);
f=100*linspace(0,1,L1/2);            % Create a vector of size L/2 linearly spaced numbers from 0 to 1:
plot(f,abs(x2(1:L1/2)));
figure;

b=fir1(100,55/(Fs/2),'low');
y=filter(b,1,x1);                    % FIR1 has denominator 1 and numerator as b vector.

z=fft(y);
plot(f,abs(z(1:L1/2)))

