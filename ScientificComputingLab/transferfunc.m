clc
clear all
close all
syms t;
a=input('Output\n');
la=laplace(a);
b=input('Input\n');
lb=laplace(b);
transf=(la/lb);
display(transf);

sp=solve(lb);
sz=solve(la);

plot(sp,'*');
hold on;
plot(sz,'O');
hold on;
y=-3:0.01:3;
plot(0,y)
hold on;
x=-3:0.01:3;
plot(x,0);
legend('Poles','Zeros');
