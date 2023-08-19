clc;
clear all;
n1=[0 0 0 2 2 2 1 1 1 0 2];
n2=[2 2 0 1 1 1 0 0 0 0 3];
m=length(n1);
subplot(4,1,1)
stem(n1)
title('n1')
subplot(4,1,2)
stem(n2)
title('n2')
subplot(4,1,3)
stem(n1+n2)
title('n3')
subplot(4,1,4)
stem(n1-n2)
title('n4')
