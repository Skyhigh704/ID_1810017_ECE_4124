% both for auto & cross correlation
clc;
clear all;
x=input('X ');
y=input('Y ');
m1=length(x);
m2=length(y);
len=m1+m2-1;
y=[y,zeros(1,(m1-1))];
n=len;
while(n>=1)
    r(len-n+1)=0;j=n;i=m1;
    while(i>=1 && j>=1)
        r(len-n+1) = r(len-n+1)+x(i)*y(j);
        j=j-1;  i=i-1; 
    end
   n=n-1;
end
p=linspace(0,7,7);
x=[x,zeros(1,3)]
subplot(2,2,1)
stem(p,x);
title('Input signal 1')
subplot(2,2,2)
stem(y)
title('Input signal 2')
subplot(2,2,(3:4))
stem(r)
title('Output of cross correlation')