% Aditya Pathak | 102115044 | Least Squares Method | 13.07.2023

clc; clear all;

xvec = [1 2 3 4 5 6 7 8 9 10]; [~, n] = size(xvec);
yvec = [1.3 3.5 4.2 5.0 7.0 8.8 10.1 12.5 13.0 15.6];

degree = 1;
X = zeros(degree + 1, n);
for i = 1: degree + 1
    X(i, :) = xvec .^(i - 1);
end

A = X * X';
b = X * yvec';
A = [A b];
x = GE(A);
scatter(xvec, yvec)
hold on;
x = flip(x);
poly2sym(x);
Approx = polyval(x, xvec);
Error = sum((Approx - yvec) .^ 2, 2)
plot(xvec, Approx)
hold off;
