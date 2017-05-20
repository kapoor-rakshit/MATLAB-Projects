clc
clear all
close all

%n=input('Enter order of filter : ');
fs=input('Enter stopband freq : ');
fp=input('Enter passband freq : ');
rs=input('Enter ripples (db) in stopband freq : ');
rp=input('Enter ripples (db) in passband freq : ');
f=input('Enter normalization freq : ');
fn=input('Enter normalised freq. of filter : ');         % between 0 and 1
n=(-20*log(sqrt(rp*rs))-13)/(14.6*abs(fs-fp)/f);         % order of filter
n=ceil(n);

% fir1 implements the classical method of windowed linear-phase FIR digital filter design [1]. 
% It designs filters in standard lowpass, highpass, bandpass, and bandstop configurations.

%  b = fir1(n,Wn,'ftype') specifies a filter type, where 'ftype' is:
%  n is order of filter, Wn is frequency
%  for high pass and bandpass take even values. if given odd then it increments to even
% 'high' for a highpass filter with cutoff frequency Wn.
% 'stop' for a bandstop filter, if Wn = [w1 w2]. The stopband frequency range is specified by this interval. 
% 'DC-1' to make the first band of a multiband filter a passband.
% 'DC-0' to make the first band of a multiband filter a stopband

b=fir1(n,fn,'high');

% freqz returns the frequency response based on the current filter coefficients. 
freqz(b);