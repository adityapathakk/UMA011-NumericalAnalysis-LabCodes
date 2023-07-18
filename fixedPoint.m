% Aditya Pathak | 102115044 | Fixed Point Iteration Method | 15.06.2023

clc; clear all;

%f = @(x) (x^3 + x^2 - 3) / 3;
%f = @(x) (3 + 3 * x - x^2)^(1/3);
f = @(x) -1 + (3 * x + 3) / x^2;

tol = 0.01;
old = 1; % Assuming 1st point..
error = 10;
while (error > tol)
    new = f(old);
    error = abs(old - new);
    old = new;
end

new
