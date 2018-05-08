s = poly(0, 's');
t = 0:0.01:10;
Gs = 20/(s * (s+3) * (s+5));
Gs1 = syslin('c', Gs);
K = 0.7;
Ts = (K * Gs1)/(1 + K * Gs1);
theta = -log(0.05)/sqrt((%pi)^2 + (log(0.05))^2)

evans(Gs)
sgrid(theta,1)
//plot(t, csim('step',t,Ts))
xgrid()
