clc
clear all
close all

c=0;

for i=0:10:30
    k=i:0.05:i+10;
    c=c+1;
    
    if mod(c,2)==0
        tp=cos(2*pi*k);
        plot(k,tp,'r');
        xlabel('Time(s)');
        ylabel('Amplitude');
        hold on;
    else
        tp=sin(2*pi*k);
        plot(k,tp,'b');
        xlabel('Time(s)');
        ylabel('Amplitude');
        hold on;
    end
    
    
end