% Aditya Pathak | 102115044 | Gauss Elimination | 13.07.2023
% used as a function for Least Squares Method

function x = GE(A)

% clc; clear all;

[n,m] = size(A);
for i = 1: n - 1
    for k = i + 1: n
        multi = A(k,i) / A(i,i);
        A(k, :) = -multi * A(i, :) + A(k, :);
    end
end

x = zeros(1,n);
for i = n: -1: 1
    x(i) = ((A(i,m) - sum(A(i,1:n) .* x)) / (A(i,i)));
end

x
end
