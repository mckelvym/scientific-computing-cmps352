function [L,U,p,sig] = lutx(A)
%LUTX  Triangular factorization, my version
%   [L,U,p,sig] = lutx(A) computes a unit lower triangular
% matrix L, an upper triangular matrix U, a permutation vector
% p, and a scalar sig, so that L*U = A(p,:) and 
% sig = +1 or -1 if p is an even or odd permutation.

% write a function mydet(A) that uses your modified lutx to compute the
% determinant of A. In MATLAB, the product u_11 u_22 ... u_nn can be computed
% by the expression prod(diag(U)).
swaps = 0;

[n,n] = size(A);
p = (1:n)';

for k = 1:n-1

   % Find index of largest element below diagonal in k-th column
   [r,m] = max(abs(A(k:n,k)));
   m = m+k-1;

   % Skip elimination if column is zero
   if (A(m,k) ~= 0)
   
      % Swap pivot row
      if (m ~= k)
         A([k m],:) = A([m k],:);
         p([k m]) = p([m k]);
         swaps = swaps + 1;
      end

      % Compute multipliers
      i = k+1:n;
      A(i,k) = A(i,k)/A(k,k);

      % Update the remainder of the matrix
      j = k+1:n;
      A(i,j) = A(i,j) - A(i,k)*A(k,j); 
   end
end

% Separate result
L = tril(A,-1) + eye(n,n);
U = triu(A);

% set sig to -1 if the number of swaps is odd
sig = -1;
if(mod(swaps, 2) == 0)
    % the number of swaps is even, so change sig to +1
    sig = 1;
end
