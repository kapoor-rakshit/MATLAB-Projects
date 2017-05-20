%unipolar Z transform from 0 to INF

clc
clear all
close all
syms z;
a=input('Enter signal components ');
l=length(a);
s=0;
t=0;
for i=1:1:l
    t=t+(a(i)/(z^i));
end
display(t);
ezplot(t);                     %ezplot(fun) plots the expression fun(x) over the default domain -2? < x < 2?, where fun(x) is an explicit function of only x.
figure();                      %fun can be a function handle or a string.
                 
 
                 
syms x;
f=5*x^3+4*x^2+7*x^1+8;              
f2=collect(f);                          %R = collect(S) returns an array of collected polynomials for each polynomial in the array S of polynomials.
[num,den]=numden(f2);
ts=0.1;
h=tf(sym2poly(num),sym2poly(den),ts);   %c = sym2poly(s) returns a row vector containing the numeric coefficients of a symbolic polynomial. 
pzmap(h);                               %The coefficients are ordered in descending powers of the polynomial's independent variable.
                                        %In other words, the vector's first entry contains the coefficient of the polynomial's highest term; 
                                        %the second entry, the coefficient of the second highest term; and so on.
