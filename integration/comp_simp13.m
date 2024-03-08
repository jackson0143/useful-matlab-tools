function I = comp_simp13(f, a, b, n)

%Simpsons 1/3 rule

%Inputs:
% - f: function handle of equation
% - a: starting integral limit
% - b: ending integral limit
% - n: number of points
%Outputs:
% - I: integral value

%error checking
if (n < 3) || (rem(n,2) == 0)
    error('Inappropiate number of points for integration')
end

%creating x vector and determining width
h = (b-a)/(n-1);
x = linspace(a, b, n); 

%evaluating integral
even_sum = 4*sum(f(x(2:2:end-1)));
odd_sum = 2*sum(f(x(3:2:end-2)));
I = h/3*(f(a) + even_sum + odd_sum + f(b));