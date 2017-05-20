clc;
clear all;
close all;
x=0:0.001:10;
y=5;
subplot(2,4,1);
plot(x,y,'b');
title('y=5');
y=x;
subplot(2,4,2);
plot(x,y);
title('x=y');
y=5*sin(2*pi*0.1*x);
subplot(2,4,3);
plot(x,y);
title('A sin(wt)');
y=5*cos(2*pi*0.1*x);
subplot(2,4,4);
plot(x,y);
title('A cos(wt)');
y=exp(x);
subplot(2,4,5);
plot(x,y);
title('y=e^x');
subplot(2,4,6);
for x=-2:1:2
    if x==0
        y=5;
        stem(x,y);
    else
        y=0;
         plot(x,y);
    end
    hold on;
end
title('unit impulse');
subplot(2,4,7);
x=-10:0.001:0;
y=5*exp(x);
plot(x,y);
hold on;
x=0:0.001:10;
y=5*exp(-x);
plot(x,y);
title('y=e^x+e^(-x)');

subplot(2,4,8);
x=-10:0.001:0;
y=-1;
plot(x,y,'*');
hold on;
x=0:0.001:10;
y=1;
plot(x,y,'*');
hold on;
y=-1:0.01:1;
x=0;
plot(x,y);
title('y=sgn(x)');