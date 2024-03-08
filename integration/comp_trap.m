function I = comp_trap(f, a, b, n)
%composite trapezoidal rule


%Inputs:
% - f: function handle of equation
% - a: starting integral limit
% - b: ending integral limit
% - n: number of points
%Outputs:
% - I: integral value

h = (b-a)/(n-1);
x = linspace(a, b, n);


%evaluating integrals
I = h/2*(f(a) + 2*sum(f(x(2:end-1))) + f(b));