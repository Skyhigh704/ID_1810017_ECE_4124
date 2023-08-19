clc;
clear all;
y=sym('z');syms n;
%f=exp(-2*n);
f=2^-n;
F=ztrans(f)
t=iztrans(F);
t=simplify(t);
disp(t);z=[0];
%p=poles(F);
%zplane(z,p);
%grid
b = [1];
a = [1 -1/2];

[b,a] = eqtflength(b,a);
[z,p,k] = tf2zp(b,a)
zplane(b,a)
text(real(z)+0.1,imag(z),"Zero")
text(real(p)+0.1,imag(p),"Pole")