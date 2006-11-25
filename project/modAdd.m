function k = modAdd(a, b, n)
% This is a function for modular arithmetic that adds a and b and if needed
% "wraps" the result around (where n is a bound) and returns the result
k = mod(a+b, n);

