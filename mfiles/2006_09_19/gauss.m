%mark mckelvy
function x = Gauss(A, b)
%We will try to solve the equation Ax = b
%This should reduce the system by recursion
%then use back-substitution to get the values.

%using notes from class:

[n, k1] = size(A);
[n1, k] = size(b);

x = zeros(n, k);

A
b

for i = 1:n-1
    m = -A(i+1:n, i) / A(i,i);    
    A(i+1:n,:) = A(i+1:n, :) + m*A(i,:);
    b(i+1:n,:) = b(i+1:n, :) + m*b(i,:);
    A
    b
end