%convolution using tabular method
x=input('Enter x: ');
h=input('Enter h: ');
len=length(x);
A=[];
y=[];
for n=1:len
    g=h(n).*x;
    A=[A;g];
end
n=1;
%adding left diagonal
while(n<=len)
    y(n)=0;i=1;j=n;
    while(i<=n && j>=1)
        y(n) = y(n)+A(i,j);
        i=i+1;
        j=j-1;
    end
    
    n=n+1;
end
%adding right diagonal

n=len;
while(n>=2)
    y(n+len-1)=0;i=n;j=len;
    while(i<=4 && j>=n)
        y(n+len-1) = y(n+len-1)+A(i,j);
        i=i+1;
        j=j-1;
    end
    
    n=n-1;
end
len,A,y
n=1:1:(2*len)-1;
stem(n,y)
    