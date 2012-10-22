% Oblig 4, exercise 5.12

function U = simplefastbiharmonic(F)
    m = length(F); h = 1/(m+1); hv = pi*h*(1:m)';
    sigma = sin(hv/2).^2;
    S = sin(hv*(1:m));
    G = S*F*S;
    X = h^6*G./(4*(sigma*ones(1,m) + ones(m,1)*sigma').^2);
    %U = zeros(m+2, m+2);
    U = S*X*S;
end
