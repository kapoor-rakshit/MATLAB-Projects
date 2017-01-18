n=input('Enter addition slice\n');
m=input('Enter no. of elements\n');
a=[];
i=1;
while i<n
    a(i)=0;
    i=i+1;
end
an=0;
while m>0
    s=0;
    v=input('Enter filter element\n');
    a(i)=v;
    j=i;
    for k=0:1:n-1
        s=s+a(j);
        j=j-1;
    end
    i=i+1;
    an=[an num2str(s/n) '  '];
    m=m-1;
end
display(an);
