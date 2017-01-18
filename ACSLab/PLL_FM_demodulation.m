clc;
close all;
clear all;
Am=2;%input('amplitude of message signal');%Am=2
Ac=5;%input('amplitude of carrier signal');%Ac=5
fm=50;%input('frequency of message signal');%fm=5
fc=200;%input('frequency of carrier signal');%fc=20
fs=5000;%input('sampling frequency');         %fs=500

kf=0.06;%input('frequency multiplication factor kf');%0.06
ki=0.1;%input('integral factor ki');                %0.1
kp=0.15;%input('proportional constant kp');          %0.15

n=1000;
t=0:1/fs:(n-1)*(1/fs);

x=Am*cos(2*pi*fm*t);                %message signal
y=Ac*cos(2*pi*fc*t);                %carrier signal

f=cumsum(x);                        %cumsum(X) is a matrix the same size as X containing the cumulative sums over each column.

s=exp(1j*(2*pi*fc*t + 2*pi*kf*f));

vco=zeros(1,length(x));
pdo=zeros(1,length(x));
e=zeros(1,length(x));
th=zeros(1,length(x));

for n=2:length(x)
    vco(n)=conj(exp(1j*(2*pi*n*fc/fs+th(n-1))));
    pdo(n)=imag(vco(n)*s(n));
    e(n)=e(n-1)+(kp+ki)*pdo(n)-ki*pdo(n-1);
    th(n)=th(n-1)+e(n);
end

figure();

subplot(311);
plot(t,pdo);
subplot(312);
plot(t,e);
subplot(313);
plot(t,th);

    