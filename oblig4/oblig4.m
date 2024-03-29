% Script for finding U and x=vec(U), and comparing them

m = 50
F = ones(m,m);
U = simplefastbiharmonic(F);

h = 1/(m+1);
% Finding difference:
b = h^4*F(:);
T = tridiag(-1,2,-1,m);
I = diag(ones(1,m));
A = kron(T^2, I) + 2*kron(T,T) + kron(I,T^2);
x = A\b;
xv = reshape(x,m,m);
diff = U - xv;

% Plotting u
figure(1)
surf(U)
title('Surface plot of U, m=50')
figure(2)
surf(xv)
title('Surface plot of U, m=50 (Ax=b)')