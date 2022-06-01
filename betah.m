function beta = betah(V,VT)
    beta = 4/(1+exp(-(V-VT-40)/5));
end
