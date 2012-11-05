% Run sdtest for m = 50, 100, 200, 1000, 2000 for Averaging matrix:

m  = [50, 100, 200, 1000, 2000];
for i=1:5
    m(i)
    K = sdtest(m(i), 1/9, 5/18, 1e-8, 100000)
    
end

