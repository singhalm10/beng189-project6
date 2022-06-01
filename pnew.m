function newp = pnew(V,p,tmax,dt)
    pinf = 1/(1+exp(-(V+35)/10));
    tp = tmax/(3.3*exp((V+35)/20)+exp(-(V+35)/20));
    dp = (pinf-p)/tp;
    newp = p + dp*dt;
end
