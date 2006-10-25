%mark mckelvy
function X = myinv(A);

% the inverse of a matrix A can be defined
% as the matrix X whose columns x_j
% solve the equations Ax_j = e_j
% where e_j is the jth column of the identity
% matrix

% computes the inverse of A.
% calls lutx once and doesn't use
% the built in MATLAB backslash operator
% of the inv function

% test this function by comparing the inverses it
% computes with the inverses obtained from the 
% built in inv(A) on a few test matrices

[n,n] = size(A);
n = n/2;
L = A(1:n, 1:n);
R = A(1:n, n+1:2*n);
U = A(n+1:2*n, n+1:2*n);
O = zeros(n, n);
x1 = eye(n);
x2 = zeros(n);
x3 = zeros(n);
x4 = eye(n);

% Triangular factorization
%solve L, this will just negate all values below diagonal
[l,u,p] = lutx(L);
b = eye(n);
for c = 1:n
    x1(:,c) = backsubs(u,forward(l,b(p, c)));
end

%solve U
[l,u,p] = lutx(U);
b = eye(n);
for c = 1:n
    x4(:,c) = backsubs(u,forward(l,b(p, c)));
end

%solve R
[l,u,p] = lutx(A);
b = eye(n*2);
%compute only a portion of the inverse, but still include the values
%in the matrix that we need
for c = (n+1):n*2
    X(:,c) = backsubs(u,forward(l,b(p, c)));
end

%just a filler
x2 = X(1:2,3:4);

X = [x1 x2; x3 x4];
%compare result
A_inv = inv(A)

% ------------------------------

function x = forward(L,x)
% FORWARD. Forward elimination.
% For lower triangular L, x = forward(L,b) solves L*x = b.
[n,n] = size(L);
x(1) = x(1)/L(1,1);
for k = 2:n
   j = 1:k-1;
   x(k) = (x(k) - L(k,j)*x(j))/L(k,k);
end

% ------------------------------

function x = backsubs(U,x)
% BACKSUBS.  Back substitution.
% For upper triangular U, x = backsubs(U,b) solves U*x = b.
[n,n] = size(U);
x(n) = x(n)/U(n,n);
for k = n-1:-1:1
   j = k+1:n;
   x(k) = (x(k) - U(k,j)*x(j))/U(k,k);
end
