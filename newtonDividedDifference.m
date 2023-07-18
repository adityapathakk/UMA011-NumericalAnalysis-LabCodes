% Aditya Pathak | 102115044 | Newton's Divided Difference | 7.07.2023

clc; clear all;

xvec = [0 1 3 4 7];
yvec = [1 3 49 129 813];
[~, n] = size(xvec);
yNaught = yvec(1);
top = zeros(1, n - 1);
for i = 1: n - 1
    yvec = diff(yvec);
    a = xvec(i + 1: end) - xvec(1: end - i);
    yvec = yvec ./ a;
    top(i) = yvec(1);
end

ddp = zeros(1, n);
for i = 1: n - 1
    roots = xvec;
    roots(i + 1: end) = [];
    ddp = ddp + [zeros(1, n - i - 1) poly(roots) * top(i)];
end
constant = [zeros(1, n - 1) yNaught];
finalddp = ddp + constant;
polynomial = poly2sym(finalddp)
polyval(finalddp, 0.3)