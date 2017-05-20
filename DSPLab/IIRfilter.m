clc
clear all
close all

n=input('Enter order : ');
fs=input('Enter sampling frequency : ');

fc=input('Enter lower-upper freqs : ');       % for bandstop filter  % for bandpass
%fc=input('Enter cutoff freq : ');            % for lowpass filter % for high pass filter

normalized_cuttoff_freq=fc/(fs/2);

[z,p]=butter(n,normalized_cuttoff_freq);
freqz(z,p);
figure

[h,w]=freqz(z,p);
plot(w/pi,20*log(abs(h)));          %ideal
