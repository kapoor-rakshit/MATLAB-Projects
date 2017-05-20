 clc
 clear all
 close all
 
%  n is order
%  R is ripples allowed
%  Wp is cutoff freq
% [b,a] = cheby1(n,R,Wp) designs an order n Chebyshev lowpass digital Chebyshev filter with normalized passband edge frequency Wp and R dB of peak-to-peak ripple in the passband. 
% It returns the filter coefficients in the length n+1 row vectors b and a, with coefficients in descending powers of z.
% [b,a] = cheby1(n,R,Wp,'ftype') designs a highpass, lowpass, or bandstop filter, where the string 'ftype' is 'high', 'low', or 'stop', as described above.
% Chebyshev Type I filters are equiripple in the passband and monotonic in the stopband. 
% Type I filters roll off faster than type II filters, but at the expense of greater deviation from unity in the passband.

% [b,a] = cheby2(n,R,Wst) designs an order n lowpass digital Chebyshev Type II filter with normalized stopband edge frequency Wst and stopband ripple R dB down from the peak passband value. 
% It returns the filter coefficients in the length n+1 row vectors b and a, with coefficients in descending powers of z.
% Chebyshev Type II filters are monotonic in the passband and equiripple in the stopband. 
% Type II filters do not roll off as fast as type I filters, but are free of passband ripple.

 n=input('Enetr Order of filter : ');
 fs=input('Enter sampling frequency : ');
 r=input('Enetr ripples : ');                    %40
 fc=input('Enter cutoff freq. : ');
 
 f=fc/(fs/2);
 [b,a]=cheby2(n,r,f,'stop');
 %[b,a]=cheby1(n,r,f,'stop');

freqz(b,a);
title('Chebyshev 2 Bandstop');
figure

[h,w]=freqz(b,a);
plot(w/pi,20*log(abs(h))); 
title('Chebyshev 2 Bandstop');
 
 
