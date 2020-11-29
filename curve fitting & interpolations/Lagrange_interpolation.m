clc;
clear;
close all;

x = [2 3 4];
y = [0.5 0.3333 0.25];
sum = 0;
for i = 1:length(x)
    p=1;
    for j=1:length(x)
        if j~=i
            c = poly((x-x(j)))/(x(i)-x(j)) ;
            p = conv(c, p);
        end
    end
    sum = sum + y(i)*p;
end
