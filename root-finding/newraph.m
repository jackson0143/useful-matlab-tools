%newton raphson method function
function [x_i, iterations] = newraph(x_i, f, fd, precision);

iterations = 0;

%while loop to count iterations and find root
while abs(f(x_i)) > precision;

    %iteration count increase by one
    iterations = iterations + 1;
    x_i = (x_i)-f(x_i)/fd(x_i);
  
end
