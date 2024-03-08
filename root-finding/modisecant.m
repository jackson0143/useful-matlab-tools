%modified secant method to find root
function [x_i, iterations] = modisecant(x_i, pertubation, f, precision)


%iteration starts at 0
iterations = 0;
while abs(f(x_i)) > precision
    %iteration count increases by 1
    iterations = iterations + 1;
    %calculating x_i
    x_i = x_i-pertubation*f(x_i)/(f(x_i+pertubation)-f(x_i));

    %determining numerator and denominator
    denominator = (f(x_i+pertubation)-f(x_i));
    numerator = pertubation*f(x_i);
end