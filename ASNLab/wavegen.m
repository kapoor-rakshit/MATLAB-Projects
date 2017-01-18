function[]=wavegen(~)
a=input('Enter 0 for sine\nEnter 1 for cos\nEnter 2 for unit ramp\nEnter 3 for unit impulse\nEnter 4 for unit step\nEnter 5 for exponential\n');
t=0:0.001:1;
k=0;
if a==0
    y=sin(2*pi*t);
elseif a==1
    y=cos(2*pi*t);
elseif a==2
    y=t;
elseif a==3
    y=0;
    plot(y,t);
    k=1;
elseif a==4
    y=1;
elseif a==5
    y=exp(t);
else
    display('Enter correct no.\n');
end
if(k==0)
    plot(t,y);
    title('Plot');
    xlabel('Time');
    ylabel('f(x)');
end