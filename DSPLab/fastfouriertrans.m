f=10;                   %frequency of sine wave
overSampRate=30;        %oversampling rate
fs=overSampRate*f;      %sampling frequency
phase = 1/3*pi;         %desired phase shift in radians
nCyl = 5;               %to generate five cycles of sine wave

t=0:1/fs:nCyl*1/f;      %time base

x=sin(2*pi*f*t + phase);  %signal

NFFT=1024;             %NFFT-point DFT	 	 
X=fft(x,NFFT);         %compute DFT using FFT	 	 
nVals=0:NFFT-1;        %DFT Sample points	 	 
plot(nVals,abs(X));	 	 
title('Double Sided FFT - without FFTShift');	 	 
xlabel('Sample points (N-point DFT)')	 	 
ylabel('DFT Values');
	 	 
X=fftshift(fft(x,NFFT));          %fftshift	 	 shifts zero point frequency to center
fVals=(-NFFT/2:NFFT/2-1)/NFFT;    %DFT Sample points
figure
plot(fVals,abs(X));	 	 
title('Double Sided FFT - with FFTShift');	 	 
xlabel('Normalized Frequency')	 	 
ylabel('DFT Values');