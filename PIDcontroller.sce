s = poly(0, 's');
K = 1;
Kp2 = 0.1;
Kd1 = 0.0025;
t = 0:0.0001:0.1;
Gp = syslin('c', (K*2.718e9)/(s*(s+400.260)*(s+3008)))
Gs = syslin('c', (K*2.718e9*(1+Kd1*s))/(s*(s+400.260)*(s+3008)))
Gopen =syslin('c', (2.718e9*s)/(s^3+3408.3*s^2+120400*s+2.718e9))
Gint = syslin('c', (Kp2*5.436e6*(s+500)*(s+15))/(s^2+(s+400.26)*(s+3008)))

bode([Gp;Gs],1,1000)
figure();
plot(t,csim('step', t, Gp/(1+Gp)),t,csim('step', t, Gs/(1+Gs)))
xgrid()
