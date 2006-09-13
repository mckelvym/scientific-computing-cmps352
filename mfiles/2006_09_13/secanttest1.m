function secanttest1 (x0, x1)

%takes two starting parameters to help narrow it down

a = x0;
b = x1;

k = 0;
while abs(b-a) > eps*abs(b)
    c = a;
    a = b;
    b = b + (b - c)/(f(c)/f(b)-1);
    k = k + 1;
end
%print result
b