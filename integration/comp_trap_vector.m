function I = comp_trap_vector(x,y)
%Inputs:
% - x: independent variable
% - y: dependent variable

%Outputs:
% - I: integral value

I = 0;

for i = 2:length(x)
    h = (x(i) - x(i-1));
    I = I + h/2*(y(i-1) + y(i));
end