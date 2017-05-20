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