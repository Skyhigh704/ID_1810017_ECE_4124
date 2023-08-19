x=input('Enter x: ');
h=input('Enter h: ');
xl=length(x);
hl=length(h);
X=[x,zeros(1,xl)];
H=[h,zeros(1,hl)];
for n=1:xl+hl-1
    y(n)=0;
    for k=1:xl
        if n-k+1>0
          y(n)=y(n)+X(k)*H(n-k+1);
        end
    end
end
a=[1:1:xl];
b=[1:1:hl];
c=[1:1:xl+hl-1];
subplot(2,2,1);
stem(a,x);
xlabel('n');
ylabel('x(n)');
title('Input sequence')
subplot(2,2,2);
stem(b,h);
xlabel('n');
ylabel('H(n)');
title('Impulse Response')
subplot(2,2,[3,4]);
stem(y);
xlabel('n');
ylabel('y(n)');
title('Output sequence)')


        