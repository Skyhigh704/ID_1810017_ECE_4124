clc;
clear all;
t=1:1:20;
x=2*t;
m1=length(x);
len=2*m1-1;
delay=input('delay: ');
y=[zeros(1,m1-1-delay), x ,zeros(1,delay)];
n=len;
while(n>=1)
    r(len-n+1)=0;j=n;i=m1;
    while(i>=1 && j>=1)
        r(len-n+1) = r(len-n+1)+x(i)*y(j);
        j=j-1;  i=i-1; 
    end
   n=n-1;
end
% potting here
p=linspace(1,40,40);
x(1:20)=[2*t];
x(21:40)=[zeros(1,20)];
subplot(2,2,1)
stem(p,x);
title('Input signal')
subplot(2,2,2)
stem(y)
title('Delayed signal')
subplot(2,2,(3:4))
stem(r)
title('Output at delay=5')
for i=1:39
   if(r(i)==max(r))
       dl=i-1;
       break;
   end
    
end   