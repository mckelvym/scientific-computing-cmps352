%mark mckelvy
function simple (a, b, M, k)
%a and b are endpoints of interval I
%M is a constant used in the formula
%k is a maximum number of iterations to perform
%takes two starting parameters to help narrow it down

%initialize counter
count = 0;
%bounds checking, see if range is less than specified epsilon
while ((abs(b-a) > eps*abs(b)) && (count < k))
    c = a;
    a = b;
    b = b - f(c)/M
    count = count + 1;
end
%print result