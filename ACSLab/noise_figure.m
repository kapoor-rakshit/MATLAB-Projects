 clc
close all
clear all;
t=0:0.001:1;
N=1024;
am=1;                
ac=1;
fm=5;
fc=50;
m=am*cos(2*pi*fm*t);          %message signal
c=ac*cos(2*pi*fc*t);          %carrier signal

s=(1+m/ac).*c;                %Transmitter
n=0.1*randn(size(t));         %Noise

ch=s+n;                       %signal and noise added
                           
k=length(ch);
v=zeros(1,k);               %......signal at output
%v(1)=0;
for i=2:k
    if ch(i)>v(i-1)
       v(i)=ch(i);
    else
        v(i)=v(i-1)-0.023*v(i-1);
    end
end   

k=length(n);                %.......noise at output
nv=zeros(1,k);
%v(1)=0;
for i=2:k
    if n(i)>nv(i-1)
       nv(i)=n(i);
    else
        nv(i)=nv(i-1)-0.023*nv(i-1);
    end
end   

psd=fft(m).*fft(conj(m));     %input signal power
p_ins=max(cumsum(psd));

psd=fft(n).*fft(conj(n));     %input noise power
p_inn=max(cumsum(psd));

psd=fft(v).*fft(conj(v));     %output signal power
p_in=max(cumsum(psd));

psd=fft(nv).*fft(conj(nv));     %output noise power
p_out=max(cumsum(psd));

snro=p_in/p_out;

snri=p_ins/p_inn;

fom=snro/snri;                 %figure of merit

nf=1/fom;                      %noise figure

display(nf);

subplot(311)
plot(t,m,'r');
xlabel('Time');
ylabel('Amplitude');
title('Message Signal');
subplot(312)
plot(t,c,'b');
xlabel('Time');
ylabel('Amplitude');
title('Carrier Signal');
subplot(313)
plot(t,v,'b');
xlabel('Time');
ylabel('Amplitude');
title('Noise output Signal');
