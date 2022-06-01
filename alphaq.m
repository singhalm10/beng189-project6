function alpha = alphaq(V)
    alpha = (0.055*(-27-V))/(exp((-27-V)/3.8)-1);
end