nx=input('Enter no. of elements in first signal\n');
ny=input('Enter no. of elements in second signal\n');
x=[];
y=[];
for i=1:1:(nx+ny-1)-nx
    x(i)=0;
end

for i=1:1:(nx+ny-1)-ny
    y(i)=0;
end


nnx=input('Enter elements of signal 1\n');
nny=input('Enter elements of signal 2\n');

x=[x nnx];
y=[y nny];

% Convolution
newy=fliplr(y);                                              % make last column first and vice versa

display(x);                                     
display(newy);

t=[];
for i=1:1:nx+ny-1
    s=0;
for j=1:1:ny+nx-1
    s=s+(x(j)*newy(j));
end
t(i)=s;
for k=ny+nx-1:-1:i+1
    newy(k)=newy(k-1);
end
newy(i)=0;
end

display(t);

% Correlation
%Correlation determines how much two signals or vectors are similar or different in phase and magnitude. There are two types auto correlation and cross correlation. correlation is maximum when two signals are similar. correlation is equivalent to multiplying the complex conjugate of frequency spectrum of one signal by the frequency spectrum of the other.
% In auto correlation same is correlated to itself or with shifted version of it. In cross correlation two different time series signals are correlated.The example below is for cross correlation. If one set both in1 and in2 as same vectors ( or append zeros initially in one) then it becomes auto correlation.
% correlation output z[n] = sum(X[k] * Y[n+k])

% clc;
% clear all;
% close all;
% 
% x=input('Enter the first Sequence : ');
% h=input('Enter the second sequence : ');
% 
% n=length(x);
% m=length(h); signal
% 
% k=n+m-1;
% x=[x zeros(1,k-n)]';                                    %append 0 and transpose
% h=wrev(h);                                              %reverse h
% h=[h zeros(1,k-m)]';                                    %append 0 and transpose
% 
% for i=1:k
% c(:,i)=circshift(x,i-1);                                %circular shift the elements by (array,size)
% end
% y=c*h;
% disp('Correlation of the sequences')
% disp(y');