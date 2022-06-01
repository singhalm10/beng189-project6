function current = INa(gbarNa,m,h,V,ENa)
    current = gbarNa*(m^3)*h*(V-ENa);
end