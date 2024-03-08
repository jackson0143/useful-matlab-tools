%bisection method
function [root, iter] = bisection(f, xl, xu, precision)

%error message
if f(xl)*f(xu) > 0;
    error('Bounds not appropiate')
end

%Estimate first iteration of xr and initialise iteration count
xr = (xu+xl)/2;
iter = 1;

%check if f(xr) is close to zero
while abs(f(xr)) > precision
    %checking subinterval for root
    if f(xl)*f(xr) > 0
        xl = xr;
    else
        xu = xr;
    end

    %Recalculate xr and update iteration count
    iter = iter +1;
    xr = (xl+xu)/2;
end

%The final xr value is the root
root = xr;