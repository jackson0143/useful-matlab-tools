function [a0, a1, r2] = linreg(x,y)
%[a0, a1, r2] = linreg(x,y)

%function performs linear regression on linear x and y data set

%outputs
%-a0 : constant in y = ax1*x + a0
%-a1 : gradient 
%-r2 : coefficient of determination

%regression coefficients
n = length(x);
Sx = sum(x);
Sy = sum(y);
Sxx = sum(x.*x);
Sxy = sum(x.*y);
a1 = (n*Sxy-Sx*Sy)/(n*Sxx-Sx^2);
a0 = mean(y)-a1*mean(x);

%r2 value
St = sum((y-mean(y)).^2);
Sr = sum((y-a0-a1*x).^2);
r2 = (St-Sr)/St;