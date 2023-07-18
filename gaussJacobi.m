% Aditya Pathak | 102115044 | Gauss Jacobi | 23.06.2023

clc; clear all;

% A = [8 3 4; 4 16 14; 2 8 17];
% B = [19 55 50]';
A = [5 1 2; -3 9 4; 1 2 -7];
B = [10 -14 -33]';

oldX = [0 0 0]';
D = diag(diag(A));
L = tril(A) - D;
U = triu(A) - D;

error = 100;
tol = 0.000000001;
while(error > tol)
    newX = inv(D) * B - inv(D) * (L + U) * oldX;
    error = norm(newX - oldX, inf);
    oldX = newX;
end

newX
error