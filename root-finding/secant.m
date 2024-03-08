function [root, iter] = secant(f, xi, xi_1, precision)


%estimate first iteration of xi1 and initialise iteration count
iter = 1;
xi1 = xi - f(xi)*(xi-xi_1)/(f(xi)-f(xi_1));

%iteration for secant method starts
while abs(f(xi1)) > precision
    %iteration count increase
    iter = iter + 1;

    %updating variables
    xi_1 = xi;
    xi = xi1;

    %recalculating xi1
    xi1 = xi - f(xi)*(xi-xi_1)/(f(xi)-f(xi_1));
end

%final value is the root
root = xi1;