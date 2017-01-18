clc;
close all;
clear all;
Am=input('amplitude of message signal');%Am=2
Ac=input('amplitude of carrier signal');%Ac=5
fm=input('frequency of message signal');%fm=5
fc=input('frequency of carrier signal');%fc=20
f1=input('frequency deviation');%f1=5
t=0:0.001:1;
x=Am*cos(2*pi*fm*t);                %message signal
y=Ac*cos(2*pi*fc*t);                %carrier signal

f=cumsum(x);       %cumsum(X) is a matrix the same size as X containing the cumulative sums over each column.
   
s=Ac*cos((2*pi*fc*t)+(2*pi*f1*f*0.001));  %modulated signal
subplot(3,1,1);
plot(t,x);
title('message signal');
xlabel('time');
ylabel('amplitude');
subplot(3,1,2);
plot(t,y);
title('carrier signal');
xlabel('time');
ylabel('amplitude');
subplot(3,1,3);
plot(t,s);
title('modulated signal');
xlabel('time');
ylabel('amplitude');
 
