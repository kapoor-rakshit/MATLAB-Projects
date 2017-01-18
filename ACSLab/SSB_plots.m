clc
close all
clear all;
fs=2048;
n=1024;
t=(0:n-1)/fs;
am=5;                
ac=10;
fm=5;
fc=50;
m=am*cos(2*pi/2*fm*t);       %message signal
m_=imag(hilbert(m));
usb=0.5*ac*m.*cos(2*pi*fc*t)-0.5*ac*m_.*sin(2*pi*fc*t);
lsb=(0.5*ac*m.*cos(2*pi*fc*t))+(0.5*ac*m_.*sin(2*pi*fc*t));
ym=abs(fft(m,n));
yu=abs(fft(usb,n));
yl=abs(fft(lsb,n));
f=fs*(-n/2:(n/2)-1)/n;
subplot(511)
plot(t,m,'r');
subplot(512)
plot(f,fftshift(ym));
subplot(513)
plot(f,abs(fftshift(m_)));
subplot(514)
plot(f,fftshift(yl));
subplot(515)
plot(f,fftshift(yu));
