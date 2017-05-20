clc
clear all
close all

n=input('Enter order (even) of filter : ');
f=input('Enter frequency vector : ');
m=input('Enter vector magnitude : ');
b=fir2(n,f,m);
[h,w]=freqz(b);
plot(f,m,w/pi,abs(h));                       %ideal filter (w/pi)             %fir2 (f)
figure
freqz(b);

% Low pass filter m=[1 1 0 0]
% High pass filter m=[0 0 1 1]
% Band pass filter m=[0 0 1 1 0 0]
% Band stop filter m=[1 1 0 0 1 1]

% [h,w] = freqz(hs,Name,Value) returns a frequency response with additional options specified by one or more Name,Value pair arguments.

% b = fir2(n,f,m) returns row vector b containing the n+1 coefficients of an order n FIR filter. 
% The frequency-magnitude characteristics of this filter match those given by vectors f and m:
% f is a vector of frequency points in the range from 0 to 1, where 1 corresponds to the Nyquist frequency. 
% The first point of f must be 0 and the last point 1. 
% The frequency points must be in increasing order.
% m is a vector containing the desired magnitude response at the points specified in f.
% f and m must be the same length.
% Duplicate frequency points are allowed, corresponding to steps in the frequency response.

% h - Complex, n-element frequency response vector. 
% If hfilt is a vector of filters, h is a complex, length(hfilt)-by-n matrix of frequency response vectors corresponding to each filter in hfilt. 
% If n is not specified, the function uses a default value of 8192. For adaptive filters, h is the instantaneous frequency response.

% w - Frequency vector of length n, in radians/sample.
% w consists of n points equally spaced around the upper half of the unit circle (from 0 to ? radians/sample). 
% If n is not specified, the function uses a default value of 8192.
