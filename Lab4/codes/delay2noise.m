clc;
clear all;
A=0.3171;

t=-20:1:20;
x1=square(3*A*t);


noise=rand();
x2=square(3*A*(t+5))+noise;
[corr,t]=xcorr(x1,x2)
subplot(3,1,1)
plot(x1);
title('X1')
subplot(3,1,2)
plot(x2);
title('X2')
subplot(3,1,3)
plot(t,corr)
title('corr')
mag=max(corr(:))
delay=find(corr(:)==mag);
if delay>40
    k=delay-41;
end
if delay<40
    k=40-delay;
end

k


