function alpha = alphan(V,VT)
    alpha = (-0.032*(V-VT-15))/(exp(-(V-VT-15)/5)-1);
end