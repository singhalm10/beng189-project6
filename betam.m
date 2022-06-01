function beta = betam(V,VT)
    beta = (0.28*(V-VT-40))/(exp((V-VT-40)/5)-1);
end