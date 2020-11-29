clear ;
clc ;
close all ;

A=[10 -7 0;5 -1 5;-3 2 6];
B=[7 6 4]';
n=length(B);
X=zeros(n);
C=[A B];

%Gauss:
for i=1:n-1
    for j=i+1:n
        m=C(j,i)/C(i,i);
        C(j,:)=C(j,:)-m*C(i,:);
    end
    vpa(C)
end

%back_substitution:
X(n)=C(n,n+1)/C(n,n);
for i=n-1:-1:1
    for j=n:-1:i+1
        C(i,n+1)=C(i,n+1)-C(i,j).*X(i+1);
        C(i,j)=0;
        X(i)=C(i,n+1)/C(i,i);
    end
    vpa(C,4)
end

%Jordan:
for i=n:-1:1
    C(i,:)=C(i,:)/C(i,i);
end
vpa(C,4)

