function I = simp38_vector(x,y)
%single simpsons 3/8 rule for vectors x y

%Inputs:
% - x: independent variable
% - x: dependent variable
%Outputs: 
% - I: integral value

%creating x vector and determining width
h = x(2) - x(1);

I = 3*h/8*(y(1) + 3*sum(y(2:3)) + y(end));