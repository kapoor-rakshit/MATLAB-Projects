function fibofunc(n)
an='';
a=0;
b=1;
an=[an num2str(a) ' '];
an=[an num2str(b) ' '];
for i=1:1:n-2
    c=a+b;
    a=b;
    b=c;
    an=[an num2str(c) ' '];
    
end
if n==1
    display(0);
else
    display(an);
end

end
