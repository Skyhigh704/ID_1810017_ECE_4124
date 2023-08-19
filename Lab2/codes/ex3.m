clc;
clear all;
t = (-1:0.01:5);
unitstep1 = zeros(size(t)); 
unitstep2 = unitstep1; 
unitstep1(t>=0) = 1; 
unitstep2(t>=1) = 1; 

plot(t,unitstep1-unitstep2)


