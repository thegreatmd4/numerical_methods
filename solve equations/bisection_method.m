clc;
clear;
close all;

syms x
f(x)=x^3+x-1;
bisection(f,0,1)

function Xr = bisection(f,Xl,Xu)
% provide the equation you want to solve with R.H.S = 0 form.
% Write the L.H.S by using inline function
% Give initial guesses.
% Solves it by method of bisection.
% A very simple code. But may come handy
    if f(Xl)*f(Xu)>0
        disp('Wrong choice bro')
    else
        Xl
        Xu
        Xr = (Xl + Xu)/2
        err = abs(f(Xr))
        while err > 1e-2
            if f(Xl)*f(Xr)<0
                Xl
                Xu = Xr
            else
                Xl = Xr
                Xu
            end
            Xr = (Xl + Xu)/2
            err = abs(f(Xr))
        end
    end
end

    
    
