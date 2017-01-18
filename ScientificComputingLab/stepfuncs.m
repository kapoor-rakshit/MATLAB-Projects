clc
clear all
close all
for i=-5:1:5
    if i<0
        y=0;
        stem(i,y);
        hold on;
    else
        y=1;
        stem(i,y);                                 %%%  unit step 
        hold on;
    end
end
title('Unit Step Function')
xlabel('Argument,t')
ylabel('Amplitude')
figure();
for i=-5:1:5
    if i==0
        y=1;
        stem(i,y);
        hold on;
    else
        y=0;
        stem(i,y);                                 %%%  unit impulse 
        hold on;
    end
end
title('Unit Impulse Function')
xlabel('Argument,t')
ylabel('Amplitude')
figure();
for i=-5:1:5
    if i>=0
        y=i;
        stem(i,y);
        hold on;
    else
        y=0;
        stem(i,y);                                 %%%  unit ramp
        hold on;
    end
end
title('Unit Ramp Function')
xlabel('Argument,t')
ylabel('Amplitude')
