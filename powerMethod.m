% Power Method

clc; clear all;

A = [-2 -2 3; -10 -1 6; 10 -2 -9];
oldX = [1 0 0]';
errVec = 10;
errEig = 10;
eigOld = 10;
tol = 5 * 10^(-6);

while(errEig > tol || errVec > tol)
    Y = A * oldX;
    [~, index] = max(abs(Y(:)));
    eigNew = Y(index);
    errEig = abs(eigNew - eigOld);
    eigOld = eigNew;
    newX = Y./ Y(index);
    errVec = norm(newX - oldX, inf);
    oldX = newX;
end

newX'
eigNew
