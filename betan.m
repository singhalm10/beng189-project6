function beta = betan(V,VT)
    beta = 0.5*exp(-(V-VT-10)/40);
end