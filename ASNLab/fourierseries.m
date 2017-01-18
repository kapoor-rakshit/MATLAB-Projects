function [] = FourierSeriesComp(~)
%Function FourierSeriesComp is not able to handle complex computations due
%to the use of 'symengine' and 'ezplot' but they make the function a lot
%simple.
n = input('Enter the no. of terms - ');      
syms x k L ;
evalin(symengine,'assume(k,Type::Integer)');
f = input('Enter the function - ');
L = input('Enter the peroid of the fuction - ');
a = @(f,x,k,L) int(f*cos(k*pi*x/L)/L,x,-L,L);
b = @(f,x,k,L) int(f*sin(k*pi*x/L)/L,x,-L,L);
fs = @(f,x,n,L) a(f,x,0,L)/2 + symsum(a(f,x,k,L)*cos(k*pi*x/L) + b(f,x,k,L)*sin(k*pi*x/L),k,1,n);

%pretty(fs(f,x,n,L));

ezplot(f,-L,L);
hold on;
for i = 1:n
    ezplot(fs(f,x,i,L),[-L,L]);
    hold on;
end
%grid on;
%axis on;
title('Partial Sums upto n');

