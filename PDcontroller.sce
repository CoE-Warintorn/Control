s = poly(0, 's');
K = 20;
Kp = 20;
Kd = 10;
t = 0:0.001:10;
Gs = syslin('c', (K*(s+3))/(s*(s+1)*(s+2)))
Gopen = syslin('c',(s^2+3*s)/(s^3+3*s^2+12*s+30))
Gs1 = syslin('c', ((s+3)*(Kp+Kd*s))/(s*(s+1)*(s+2)))

/*evans(Gopen, 10)
sgrid(0.7, 1)
sgrid(0.8, 1)
sgrid(0.9, 1)*/

bode(Gs, 0.01, 10)
figure();
plot(t,csim('step', t, Gs/(1+Gs)),t,csim('step', t, Gs1/(1+Gs1)))
xgrid()
