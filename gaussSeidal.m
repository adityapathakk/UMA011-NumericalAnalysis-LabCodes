% Aditya Pathak | 102115044 | Gauss Seidal | 6.07.2023

clc; clear all;

A = [1 0.5 0.5; 0.5 1 0.5; 0.5 0.5 1];
B = [1 1 1]';

oldX = [0 0 0]';
D = diag(diag(A));
L = tril(A) - D;
U = triu(A) - D;

error = 100;
tol = 0.0000000001;
while(error > tol)
    % newX = inv(D) * B - inv(D) * (L + U) * oldX; <- Gauss Jacobi
    newX = (D + L) \ B - ((D + L) \ U) * oldX; % <- Gauss Seidal
    error = norm(newX - oldX, inf);
    oldX = newX;
end

newX
error