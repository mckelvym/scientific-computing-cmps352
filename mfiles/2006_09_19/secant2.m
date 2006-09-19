function secant2 (x0, x1, center)

%takes two starting parameters to help narrow it down

a = x0;
b = x1;

k = 0;
while abs(b-a) > eps*abs(b)
    c = a;
    a = b;
    b = b + (b - c)/(f(c, center)/f(b, center)-1)
    k = k + 1;
end
%print result