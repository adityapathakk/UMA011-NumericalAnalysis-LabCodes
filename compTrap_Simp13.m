clc; clear all;

f = @(x) sin(x);
a = 0;
b = pi / 4;
n = 6;

% Composite Trapezoidal
xvec = linspace(a, b, n+1);
h = (b - a) / n;
A = sum(f(xvec(2 : end - 1)))
compTrap = (h / 2) * (f(a) + 2 * A + f(b))

% Composite Simpson 1/3
if(rem(n, 2) == 0)
    xvec = linspace(a, b, n + 1);
    h = (b - a) / n;
    A = sum(f(xvec(2: 2: end - 1)));
    B = sum(f(xvec(3: 2: end - 1)));
    compSimp13 = (h / 3) * (f(a) + 4 * A + 2 * B + f(b))
end
