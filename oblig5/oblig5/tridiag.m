function A = tridiag(l,d,u,n)
    A = l*diag(ones(1,n-1),-1) + d*diag(ones(1,n)) + u*diag(ones(1,n-1),1);
end