function bisection_rt2
%this function attempts to find the value of sqrt(2) using bisection method

%when no semicolon is present, print out value

M = 2
a = 1
b = 2
k = 0;

%format the representation of the numbers to be shown
format long;

while b-a > eps
    x = (a+b)/2;
    if x^2 > M
        b = x
    else
        a = x
    end
    k = k + 1;
end

%re-format the representation of the numbers to be shown
format short;
