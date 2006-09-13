function newtontest1 (x0)

%takes only one starting parameter

%initialize the variable to the parameter
xprev = x0;

%initialize x to some variant of the parameter
x = xprev + 1;

k = 0;
while abs(x - xprev) > eps*abs(x)
    xprev = x;
    %the following line will be printed as it is narrowed down
    x = x - f(x)/fprime(x)
    k = k + 1;
end
