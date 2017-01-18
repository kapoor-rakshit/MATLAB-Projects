function derivintegfunc(n)
syms x;                                 %wrt symbol

display(n);

d=diff(n);                              %derivative
i=int(n);                               %indefinite integral
id=int(n,0,4);                          %definite integral
rts=solve(n);                           %roots of equation

display(d);
display(i);
display(id);
display(rts);

end