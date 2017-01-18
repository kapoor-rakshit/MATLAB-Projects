clc
close all
clear all;
t=0:0.001:1;
am=[1 2 3];                
ac=5;
fm=[5 6 7];
fc=50;
m=0;
k=0;
for i=1:3
m=m+(am(i)*cos(2*pi*fm(i)*t));       %message signal
end
c=ac*cos(2*pi*fc*t);                 %carrier signal
for i=1:3
    k=k+power((am(i)/ac),2); 
end
mi=sqrt(k);
display(mi);                          %Modulation Index
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
display((a-b)/(a+b));               %Modulation Index
display(2*max(fm));                 %Bandwidth