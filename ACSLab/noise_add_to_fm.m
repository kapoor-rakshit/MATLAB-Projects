clc
close all
clear all;
t=0:0.001:1;
am=5;                
ac=10;
fm=5;
fc=800;
m=am*cos(2*pi*fm*t);       %message signal
c=ac*cos(2*pi*fc*t);       %carrier signal

s=ac*cos((2*pi*fc*t+3*m)); %fm modulated
sam=(1+m/ac).*c;           %am modulated

subplot(611)
plot(t,m,'r');
subplot(612)
plot(t,c,'b');
subplot(613)
plot(t,s,'r');
subplot(614);
plot(t,awgn(s,-10));
subplot(615)
plot(t,sam);
subplot(616)
plot(t,awgn(sam,-10));

nsam=awgn(sam,-10);
ns=awgn(s,-10);

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
figure;
subplot(411);
plot(t,v);                    %demodulated signal

k=length(ns);
vns=zeros(1,k);
%v(1)=0;
for i=2:k
    if ns(i)>vns(i-1)
       vns(i)=ns(i);
    else
        vns(i)=vns(i-1)-0.023*vns(i-1);
    end
end
subplot(412);
plot(t,vns);                    %demodulated signal


k=length(sam);
vam=zeros(1,k);
%v(1)=0;
for i=2:k
    if sam(i)>vam(i-1)
       vam(i)=sam(i);
    else
        vam(i)=vam(i-1)-0.023*vam(i-1);
    end
end
subplot(413);
plot(t,vam);                %demodulated signal

k=length(nsam);
vnsam=zeros(1,k);
%v(1)=0;
for i=2:k
    if nsam(i)>vnsam(i-1)
       vnsam(i)=nsam(i);
    else
        vnsam(i)=vnsam(i-1)-0.023*vnsam(i-1);
    end
end
subplot(414);
plot(t,vnsam);                    %demodulated signal

