function m = modMult(a, b, n)
% This is a function for modular arithmetic that multiplies a and b and if
% needed "wraps" the result around (where n is a bound) and returns the
% result
m = mod(a*b, n);

