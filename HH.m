clear
clc

global neuron 
neuron = 1;

HH_params
init_mhnpqr

for klok=1:klokmax
    t=klok*dt;                      %note time
    
    m = snew(alpham(v,VT),m,betam(v,VT),dt);
    h = snew(alphah(v,VT),h,betah(v,VT),dt);
    n = snew(alphan(v,VT),n,betan(v,VT),dt);
    q = snew(alphaq(v),q,betaq(v),dt);
    r = snew(alphar(v),r,betar(v),dt);
    p = pnew(v,p,tmax,dt);
    
    Ina = INa(gbarNa,m,h,v,ENa);
    Ikd = IKd(gbarKd,n,v,EKd);
    Im = IM(gbarM,p,v,EKd);
    Il = IL(gbarL,q,r,v,ECa);
    
%     if t>t2p
%         t1p = t1p+50;
%         t2p = t1p+1;
%         ip = 1;
%     end
    dv = (-gleak*(v-EL)-Ina-Ikd+izero(t))/Cm;
    v_old = v;
    v = v + dv*dt;
    
    mhn_plot(:,klok)=[m h n]';
    v_plot(klok)= v;
    t_plot(klok)= t;
end

subplot(2,1,1),plot(t_plot,v_plot),title("Action Potential"),xlabel("Time (ms)"),ylabel("Voltage (mV)"),ylim([-80,70]),hold on
subplot(2,1,2),plot(t_plot,mhn_plot),title("Activation Variables"),xlabel("Time (ms)"),ylabel("Fraction of Open Gates"),legend(["m","h","n"])
