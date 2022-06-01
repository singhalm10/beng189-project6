global neuron t1p t2p ip

Cm = 1; %(uF/cm^2)
tstart = 0; %(ms)
tend = 50; %(ms)
dt = 0.1; %(ms)
klokmax=ceil(tend/dt);

mhn_plot=zeros(3,klokmax);
v_plot=zeros(1,klokmax);
t_plot=zeros(1,klokmax);

vhold = -70; %(mV)
vstart = -55; %(mV)

t1p=0;       %starting time (ms)
t2p=tend;       %stopping time (ms)
ip=5;        %current applied (muA)


if neuron == 1 % Normal Spiking

    gleak = 0.1; %(mS/cm^2)
    gbarL = 0; %(mS/cm^2)
    gbarNa = 50; %(mS/cm^2)
    gbarKd = 5; %(mS/cm^2)
    gbarM = 0.07; %(mS/cm^2)

    EL = -70; %(mV)
    ENa = 50; %(mV)
    EKd = -90; %(mV)
    ECa = 120; %(mV)

    tmax = 4; %(s)
    VT = -61.5; %(mV)

elseif neuron == 2 % Fast Spiking

    gleak = 0.00015; %(S/cm^2)
    gbarL = 0; %(S/cm^2)
    gbarNa = 0.05; %(S/cm^2)
    gbarKd = 0.01; %(S/cm^2)
    gbarM = 0; %(S/cm^2)

    EL = -70; %(mV)
    ENa = 50; %(mV)
    EKd = -90; %(mV)
    ECa = 120; %(mV)

    tmax = 4; %(s)
    VT = -61.5; %(mV)

elseif neuron == 3 % Burst Spiking

    gleak = 0.00001; %(S/cm^2)
    gbarL = 0.0001; %(S/cm^2)
    gbarNa = 0.05; %(S/cm^2)
    gbarKd = 0.005; %(S/cm^2)
    gbarM = 0.00003; %(S/cm^2)

    EL = -70; %(mV)
    ENa = 50; %(mV)
    EKd = -90; %(mV)
    ECa = 120; %(mV)

    tmax = 4; %(s)
    VT = -61.5; %(mV)

elseif neuron == 4 % Custom Neuron

    gleak = 0.0001; %(S/cm^2)
    gbarL = 0; %(S/cm^2)
    gbarNa = 0.01; %(S/cm^2)
    gbarKd = 0.005; %(S/cm^2)
    gbarM = 0.00007; %(S/cm^2)

    EL = -70; %(mV)
    ENa = 50; %(mV)
    EKd = -90; %(mV)
    ECa = 120; %(mV)

    tmax = 4; %(s)
    VT = -61.5; %(mV)

end
