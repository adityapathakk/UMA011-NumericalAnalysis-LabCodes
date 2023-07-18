% Aditya Pathak | 102115044 | Newton's Method | 22.06.2023

clc; clear all;

%f = @(x) x^3 + 2 * x^2 - 3 * x - 1;
%fdashx = @(x) 3 * x^2 + 4 * x - 3;
f = @(x) sin(x);
fdashx = @(x) cos(x);

old = 5;
error = 10;
tol = 10^(-11);
count = 1;

while (error >= tol)
    new = old - (f(old) / fdashx(old));
    error = abs(new - old);
    old = new;
    count = count + 1;
end

old
new
error