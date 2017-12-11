close all
clear all
clc
 
load('C:\Users\ANIL KAPOOR\Desktop\BSP\100m.mat');
x = val(1,1:3600);
t=1:3600;
fs=360;
subplot(2,2,1);
f = 1/3600;
plot(x);
title('Original ECG Signal');
subplot(2,2,2)
y = 30*sin(2*pi*f*t);
plot(y);
title('Baseline');
% noise component 
ecgn = x+y;
subplot(2,2,3);
plot(ecgn);
title('ECG signal with baseline wander');
n = 50;
b = fir1(n,f/fs*2,'high');
z = filter(b,1,ecgn);
subplot(2,2,4);
plot(z);
title('Filtered ECG signal');
