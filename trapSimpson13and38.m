% Aditya Pathak | 102115044 | 13.07.2023

clc; clear all;

f = @(x) sin(x);
a = 0;
b = pi / 4;
n = 1;

% Trapezoidal Rule
iTrap = ((b - a) / (2)) * (f(a) + f(b))

% Simpsons 1/3 Rule
n = 2;
iSimp13 = ((b - a) / (2 * 3)) * (f(a) + 4 * f((a + b) / 2) + f(b))

% Simpsons 3/8 Rule
n = 3;
h = (b - a) / 3;
iSimp38 = (3 * (h / 8)) * (f(a) + 3 * f(a + h) + 3 * f(a + (2 * h)) + f(b))