function news = snew(alphas,s,betas,dt)
    news =(s+dt*alphas)/(1+dt*(alphas+betas));
end