% Secant Method

clc; clear all;

f = @(x) x^3 + 2 * x^2 - 3 * x - 1;
current = 2;
old = 1;

error = 10;
tol = 10^(-12);
count = 1;

while (error >= tol)
    new = current - ((f(current) * (current - old)) / (f(current) - f(old)));
    error = abs(new - current);
    old = current;
    current = new;
    count = count + 1;
end

current
old
new
count
