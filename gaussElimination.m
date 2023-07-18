% Aditya Pathak | 102115044 | Gauss Elimination | 22.06.2023

clc; clear all;

A = [2 3 4 19; 4 11 14 55; 2 8 17 50];
[n,m] = size(A);
for i = 1: n - 1
    for k = i + 1: n
        multi = A(k,i) / A(i,i);
        A(k, :) = -multi * A(i, :) + A(k, :);
    end
end

A

x = zeros(1,n);
for i = n: -1: 1
    x(i) = ((A(i,m) - sum(A(i,1:n) .* x)) / (A(i,i)));
end

x