% LU Decemposition

clc; clear all;

A = [2 3 4; 4 11 14; 2 8 17];
B = [19; 55; 50];
L = eye(3);
[n,m] = size(A);
for i = 1: n - 1;
    for k = i + 1: n
        multi = A(k,i) / A(i,i);
        L(k, i) = multi;
        A(k, :) = -multi * A(i, :) + A(k, :);
    end
end

U = A;
L = [L B];
y = zeros(1, n);
[n, m] = size(L);
for i = 1: n
    y(i) = ((L(i, m) - sum(L(i, 1:n) .* y)) / (L(i,i)));
end

U = [U y.'];
x = zeros(1, n);
[n, m] = size(U);
for i = n: -1: 1
    x(i) = ((U(i, m) - sum(U(i, 1:n) .* x)) / (U(i,i)));
end
x'
