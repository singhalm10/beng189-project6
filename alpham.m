function alpha = alpham(V,VT)
    alpha = (-0.32*(V-VT-13))/(exp(-(V-VT-13)/4)-1);
end