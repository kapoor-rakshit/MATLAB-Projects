clc
close all
clear all;
t=0:0.001:1;
am=5;                
ac=10;
fm=5;
fc=50;
m=am*cos(2*pi*fm*t);       
c=ac*cos(2*pi*fc*t);       
%k=am/ac;                  %k<1
s=(1+m/ac).*c;             %DSBFC

subplot(611)
plot(t,m,'r');             %message signal
subplot(612)
plot(t,c,'b');             %carrier signal
subplot(613)
plot(t,s,'b');             %DSBFC modulated signal
       
[pk,lc]=findpeaks(s);
a=max(pk);
b=min(pk);
display((a-b)/(a+b));
display(am/ac);
k=length(s);
v=zeros(1,k);
%v(1)=0;
for i=2:k
    if s(i)>v(i-1)
       v(i)=s(i);
    else
        v(i)=v(i-1)-0.023*v(i-1);
    end
end
subplot(614);
plot(t,v);                     %DSBFC demodulated signal
f=2*fm;
rc=1/(2*pi*f);
lpf=(exp(-t/rc))/rc;
subplot(615);
plot(conv(v,lpf));             %To enhance smoothness of DSBFC demodulated signal by Designing of Low pass filter using conv...time domain 

flpf=fft(lpf);                 %frequency domain
fv=fft(v);                     %frequency domain
z=flpf.*fv;
subplot(616);
plot(t,ifft(z));               %To enhance smoothness of DSBFC demodulated signal using fourier transform...time domain


figure();
subplot(511)
plot(t,m,'r');             %message signal
subplot(512)
plot(t,c,'b');             %carrier signal
dd=m.*c;                      
subplot(513);
plot(t,dd);                   %DSBSC modulated
q=dd.*cos(2*pi*fc*t);         
subplot(514);
plot(t,q);                     %DSBSC demodulated
fq=fft(q);  
subplot(515);
plot(t,ifft(flpf.*fq));        %To enhance smoothness of DSBSC demodulated signal using fourier transform...time domain
