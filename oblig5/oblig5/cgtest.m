function [V,K] = cgtest(m,a,d,tol,itmax)
R = ones(m)/(m+1)^2; rho = sum(sum(R.*R)); rho0 = rho; P = R;
V = zeros(m,m); T1 = sparse(tridiag(a,d,a,m));
for k=1:itmax
    if sqrt(rho/rho0) <= tol
        K = k;
        return 
    end
    T = T1*P + P*T1;
    a = rho/sum(sum(P.*T)); V = V + a*P; R = R - a*T;
    rhos = rho; rho = sum(sum(R.*R)); P = R + (rho/rhos)*P;
end
K = itmax + 1;