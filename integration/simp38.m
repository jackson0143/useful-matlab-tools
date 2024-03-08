function I = simp38(f, a, b, n)
%Simpsons 3/8 rule 

%Inputs:
% - f: function handle of equation
% - a: starting integral limit
% - b: ending integral limit
% - n: number of points
%Outputs:
% - I: integral value

%error checking 
if (n < 4)||(rem(n-1,3) ~= 0)
    error('Inappropriate number of points for integration')
end

%creating x vector and determining width
h = (b-a)/(n-1);
x = linspace(a,b,n);

%evaluating integral

sum_1 = 3* sum(f(x(2:3:end-2)));
sum_2 = 3*sum(f(x(3:3:end-1)));
sum_3 = 2*sum(f(x(4:3:end-3)));
I = 3*h/8*(f(a) + sum_1 + sum_2 + sum_3 + f(b));
