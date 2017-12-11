clc
clear all
close all
x=load('C:\Users\ANIL KAPOOR\Desktop\BSP\100m.mat');
subplot(511);
plot(x.val(2,1:3600));                                   %ECG signal
title('Original ECG signal');
xlabel('time');
ylabel('amplitude');

a=diff(x.val(2,1:3600));
subplot(512);
plot(a);                                                 %Differentiated signal
xlabel('time');
ylabel('amplitude');

b=a.*a;
subplot(513);
plot(b);                                                 %Square 
xlabel('time');
ylabel('amplitude');

n=length(b);
for i=1:n
    c(i)=(sum(b(i)))/n;
end
subplot(514);
plot(c);                                                %average
xlabel('time');
ylabel('amplitude');

[b,a]=butter(21,0.5,'low');
z=filter(b,a,c);
subplot(515);
plot(z);                                               %threshhold 
xlabel('time');
ylabel('amplitude');

title('Filtered ECG signal');