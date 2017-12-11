clc
clear all
close all
x=load('C:\Users\ANIL KAPOOR\Desktop\BSP\100m.mat');
subplot(411);
y=x.val(2,1:3600);
plot(y);                                   %ECG signal
title('Original ECG signal');
xlabel('time');
ylabel('amplitude');

f1=5;
f2=20;
fs=500;
Wn=[f1 f2]*2/fs;                                     % cut off freq
n=3;                                                 % order n
[b,a]=butter(n,Wn);                        % lowpass filter
ecg_h=filtfilt(b,a,y);                     % performs zero-phase digital filtering processing the input data, x, in both the forward and reverse directions
ecg_h=ecg_h/max(abs(ecg_h));
x=ecg_h;                                   % normalised wave
subplot(412);
plot(x);

x1=diff(x);
x2=x1.^2;
l=length(x2);
for i=1:l-100
    x3(i)=sum(x2(i:i+100));
end
subplot(413);
plot(x3)

[n loc]=find(x3>0.2);                   % threshhold
locdiff=diff(loc);
locdiff=locdiff/1000;
subplot(414);
plot(loc,x(loc));
