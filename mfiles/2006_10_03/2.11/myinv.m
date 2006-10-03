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

% BSLASHTX  Solve linear system (backslash)
% x = bslashtx(A,b) solves A*x = b

[n,n] = size(A);
X = eye(n);

if isequal(triu(A,1),zeros(n,n))
   % Lower triangular
   x = forward(A,b);
   return
elseif isequal(tril(A,-1),zeros(n,n))
   % Upper triangular
   x = backsubs(A,b);
   return
elseif isequal(A,A')
   [R,fail] = chol(A);
   if ~fail
      % Positive definite
      y = forward(R',b);
      x = backsubs(R,y);
      return
   end
end

% Triangular factorization
[L,U,p] = lutx(A);
b = eye(n);
for c = 1:n
    X(:,c) = backsubs(U,forward(L,b(p, c)));    
end

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
