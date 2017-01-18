 clc
close all
clear all;
t=0:0.001:1;
am=10;                
ac=5;
fm=5;
fc=50;
m=am*cos(2*pi*fm*t);       %message signal
c=ac*cos(2*pi*fc*t);       %carrier signal
k=am/ac;                   %k>1
v=(1+m/ac).*c;
subplot(411)
plot(t,m,'r');
subplot(412)
plot(t,c,'b');
subplot(413)
plot(t,v,'b');
[pks,loc]=findpeaks(v);
subplot(414);
plot(loc,pks);
a=max(pks);
b=min(pks);
display((a-b)/(a+b));
display(k);
figure()
fs=2048;
f=fs*(-3/2:(3/2)-1)/3;
plot(f,(abs(fft(v,3))));