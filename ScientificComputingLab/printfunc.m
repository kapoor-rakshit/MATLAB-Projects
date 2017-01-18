clc
clear all
close all

%n=input('Enter no. of fibonacci numbers to dispaly\n');
%fibofunc(n);


% n=input('Enter no. to check for prime\n');
% for i=1:1:10000
%     a(i)=1;
% end
% a(1)=0;
% for i=2:1:100
%     if a(i)==1
%         for j=i*i:i:10000
%             a(j)=0;
%         end
%     end
% end
% primefunc(n,a);


%n=input('Enter 0 for square\nEnter 1 for rectangle\nEnter 2 for circle\n');
%areafunc(n);

syms x;
n=input('Enter expression\n');
derivintegfunc(n);

