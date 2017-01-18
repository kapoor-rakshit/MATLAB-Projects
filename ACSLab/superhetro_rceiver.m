clc
close all
clear all;
fs=1600000;
ts=1/fs;
t=0:1/fs:1;
am=[20 20 20];                
ac=[50 50 50];
fm=[5 15 30];
fc=[700000 750000 800000];
s=0;
for i=1:3
    m=am(i)*cos(2*pi*fm(i)*t);
    c=ac(i)*cos(2*pi*fc(i)*t);
s=s+(1+m/ac(i)).*c;              %modulated signal
end

%mixer
flo=300000;
alo=1;
lo=alo.*cos(2*pi*flo*t);
smix=s.*lo;

%if filter
[num,den]=butter(5,[2*pi*430000 2*pi*470000],'s');
ha=c2d(tf(num,den),ts);
sfilt=filter(ha.num{1},ha.den{1},smix);

%detector
k=length(sfilt);
v=zeros(1,k);
for i=2:k
    if sfilt(i)>v(i-1)
       v(i)=sfilt(i);
    else
        v(i)=v(i-1)-0.023*v(i-1);
    end
end

subplot(411);
plot(t,am(1)*cos(2*pi*fm(1)*t));
xlabel('Time');
ylabel('Amp');
title('Message 1');
subplot(412);
plot(t,am(2)*cos(2*pi*fm(2)*t));
xlabel('Time');
ylabel('Amp');
title('Message 2');
subplot(413);
plot(t,am(3)*cos(2*pi*fm(3)*t));
xlabel('Time');
ylabel('Amp');
title('Message 3');
subplot(414)
plot(t,v);
xlabel('Time');
ylabel('Amp');
title('Received signal');