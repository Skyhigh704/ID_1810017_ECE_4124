clc;
clear all;
x=input('array: ');b=0;
y=sym('z');
n=length(x);
for i=1:n
   b=b+x(i)*y^(1-i); 
    
end
z=[];
p=[0]
zplane(z,p)

grid
title('Z-plane for Causal Signal');
