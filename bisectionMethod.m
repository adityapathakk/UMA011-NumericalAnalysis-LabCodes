% Bisection Method

clc; clear all;

f = @(x) tan(pi * x) - x - 6;
tol = 0.00001;
a = 0.4;
b = 0.48;
count = 1;

while ((b - a) / 2 > tol)
    p = (a + b) / 2;
    fa = sign(f(a));
    fb = sign(f(b));
    fp = sign(f(p));
    if ((f(a) * f(p)) < 0)
        b = p;
    else
        a = p;
    end
    count = count + 1;
end
a
b
count
