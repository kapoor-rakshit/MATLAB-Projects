clc;
clear all;
close all;
x=input('Enter first signal : ');
newy=input('Enter second signal : ');
nx=length(x);
ny=length(newy);
k=nx+ny-1;
newy=[newy zeros(1,k-ny)];
nn=length(newy);
t=[];
for i=1:1:nx+ny-1
    s=0;
for j=nx:-1:1
    s=s+(x(j)*newy(j+abs(nx-nn)));
end
t(i)=s;
for k=ny+nx-1:-1:i+1
    newy(k)=newy(k-1);
end
newy(i)=0;
end

display(t);
stem(t);

%xcorr(a,b) inbuilt command