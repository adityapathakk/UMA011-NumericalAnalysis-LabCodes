% Aditya Pathak | 102115044 | Lagrange Interpolation | 7.07.2023

clc; clear all;

xvec = [0 1 2 3];
yvec = [1 3 3 3];
[~, n] = size(xvec);
p = zeros(n, n);
num = zeros(n, 4);
den = zeros(4, 1);

for i = 1: n
    roots = xvec;
    roots(i) = [];
    num(i, :) = poly(roots);
    den(i) = polyval(num(i, :), xvec(i));
    p(i, :) = num(i, :) / den(i) * yvec(i);
end

finalCoeff = sum(p, 1);
lagrangePoly = poly2sym(finalCoeff)
polyval(finalCoeff, 0.3)