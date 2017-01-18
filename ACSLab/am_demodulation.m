clc
close all
clear all;
t=0:0.001:1;
am=5;                
ac=10;
fm=5;
fc=50;
m=am*cos(2*pi*fm*t);       %message signal
c=ac*cos(2*pi*fc*t);       %carrier signal
%k=am/ac;                   %k<1
s=(1+m/ac).*c;
subplot(411)
plot(t,m,'r');
xlabel('Time');
ylabel('Amp');
title('Message signal');
subplot(412)
plot(t,c,'b');
xlabel('Time');
ylabel('Amp');
title('Carrier signal');
subplot(413)
plot(t,s,'r');             %modulated signal
xlabel('Time');
ylabel('Amp');
title('Modulated signal');
[pk,lc]=findpeaks(s);
a=max(pk);
b=min(pk);
display((a-b)/(a+b));
display(am/ac);
k=length(s);
v=zeros(1,k);
%v(1)=0;
for i=2:k
    if s(i)>v(i-1)
       v(i)=s(i);
    else
        v(i)=v(i-1)-0.023*v(i-1);
    end
end
subplot(414);
plot(t,v);               %demodulated signal
xlabel('Time');
ylabel('Amp');
title('Demodulated signal');
