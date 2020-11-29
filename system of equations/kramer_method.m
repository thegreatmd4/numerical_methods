clc;
clear;
close all;

A=[1 1 1;1 2 4;1 3 9]
B=[0;-1;2]
X=zeros(length(B),1)

for i=1:length(B)
    C=A;
    C(:,i)=B(:,1)
    X(i)=det(C)/det(A);
end

X