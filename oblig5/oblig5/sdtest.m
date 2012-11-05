
function K = sdtest(m, a, d, tol, itmax)
R = ones(m)/(m+1)^2; 
rho = sum(sum(R.*R)); 
rho0 =rho;
V = zeros(m,m); 
T2 = sparse(tridiag(a,d,a,m));
    
for k = 1:itmax
    if sqrt(sum(sum(R.*R))/rho0) <= tol
        K = k;
        return 
    end
    T = T2*R + R*T2;
    a = sum(sum(R.*R))/sum(sum(R.*T));
    V = V + a*R;
    R = R - a*T;
    %rho = sum(sum(R.*R));
end
K = itmax + 1;