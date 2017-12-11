clc
clear all
close all

Fs=360;
L=3600;                                                % no. of colummns
t = (0:L-1)/Fs; 

load('100m.mat')
x=val(2,1:3600);
subplot(211)
plot(x)                                                % plot(t,x)
title('Original ECG');
