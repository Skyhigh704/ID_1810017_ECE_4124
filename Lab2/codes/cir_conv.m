a=[1 2 3 4]
b=[]
c=[zeros(1,4)]
d=[zeros(1,4)]
k=4;
b(1)=a(k);
for i=1:1:3
    b(i+1)=a(i);
end
c(1)=b(k);
for i=1:1:3
    c(i+1)=b(i);
end
d(1)=c(k);
for i=1:1:3
    d(i+1)=c(i);
end
A=[a;b;c;d]
A=A.'
h=[1 1 1 1]
conv=h*A
stem(conv);
xlabel("Output sequence, y(n)")
ylabel("Time")