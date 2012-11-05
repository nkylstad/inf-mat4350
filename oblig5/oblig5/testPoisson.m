% Run sdtest for m = 10, 20, 40, 50 and Poisson matrix:

m  = [10, 20, 40, 50];
for i=1:4
    m(i)
    K = sdtest(m(i), -1, 2, 1e-8, 10000)
    
end
