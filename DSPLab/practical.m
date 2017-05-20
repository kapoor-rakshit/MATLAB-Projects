clc
clear all
close all
a=2.5;
N=71;
n=0:1:N-1;
y=exp(-1/2*((a).^2)*(((n-((N-1)/2))/(N/2)).^2));
plot(n,y);
figure
freqz(y);
wvtool(gausswin(N,a));
