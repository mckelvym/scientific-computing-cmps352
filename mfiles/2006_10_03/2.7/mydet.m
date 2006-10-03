function det = mydet(A);

%this function needs to find the determinant of matrix
% A using my modified lutx function and the expression
% prod(diag(U)), basically computing the determinant
% from the U matrix by multiplying along the diagonal,
% and using the value of 'sig' for the sign (based
% upon the number of swaps being even or odd)

[L, U, p, sig] = lutx(A);
det = sig*prod(diag(U));