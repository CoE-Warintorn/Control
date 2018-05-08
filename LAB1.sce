s = poly(0, 's');
t =  0:0.01:10;
Km = 10^-3;
Kb = 5.5*10^-2;
La = 10*10^-6;
Ra = 0.2;
Jm = 1*10^-3;
Dm = 1*10^-2;

//Gs = Km/((La*s + Ra)*(Jm*s^2 + Dm*s) + Km*Kb*s)
Gs = Km/((Ra)*(Jm*s^2 + Dm*s) + Km*Kb*s)
Gs1 = syslin('c', Gs);
Ts = Gs1/(1+Gs1);
den1 = denom(Ts);
routh_t(den1);
//plot(t,csim('step', t, Ts))

Wn = sqrt(5);
Theta = 10.275/(2*Wn);

Theta1 = -log(0.1)/sqrt(%pi^2 + log(0.1)^2)
Theta2 = -log(0.2)/sqrt(%pi^2 + log(0.2)^2)

evans(Gs1)
sgrid([Theta1,Theta2],1)
K = 2055
K1 = 15.1
K2 = 25.43
Ts = K*Gs1/(1+K*Gs1) 
Ts1 = K1*Gs1/(1+K1*Gs1) 
Ts2 = K2*Gs1/(1+K2*Gs1)
//plot(t,csim('step', t, Ts),t,csim('step', t, Ts1),t,csim('step', t, Ts2))
xgrid()
