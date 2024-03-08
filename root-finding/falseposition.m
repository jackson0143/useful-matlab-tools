%false position method
function [root, iter] = falseposition(f, xl, xu, precision)


%checking if bounds are appropiate
if f(xl)*f(xu) > 0
    error('bounds are inappropiate')
end

%Estimate first iteration of xr and initialise iteration count
iter = 1; 
xr = (f(xu)*xl - f(xl)*xu)/(f(xu)-f(xl));

%check if f(xr) is close enough to zero
while abs(f(xr)) > precision
    %checking subinterval for root
    if f(xl)*f(xr) <0
        xu = xr;
    else
        xl = xr;
    end

    %Recalculate xr and update iteration count
    iter = iter +1;
    xr = (f(xu)*xl - f(xl)*xu)/(f(xu)- f(xl));

end
%final xr value
root = xr;