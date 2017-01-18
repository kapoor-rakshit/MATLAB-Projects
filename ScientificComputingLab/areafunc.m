function areafunc(n)
if n==0
    s=input('Enter side\n');
    display(s*s);
elseif n==1
     s=input('Enter side\n');
     s2=input('Enter side\n');
    display(s*s2);
else 
     s=input('Enter radius\n');
     display(pi*s*s);
end
end