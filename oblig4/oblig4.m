% Script for finding U and x=vec(U)

m = 3;
F = ones(m,m);
U = simplefastbiharmonic(F)

b = h^4*F(:);
T = tridiag(-1,2,-1,m);
I = diag(ones(1,m));
A = kron(T^2, I) + 2*kron(T,T) + kron(I,T^2);
x = A\b;
xv = reshape(x,m,m)
diff = U - xv
