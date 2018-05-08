s = poly(0,'s');
t = 0:0.01:5;
Gs1 = syslin('c', 9/(s^2+9*s+9));
Gs2 = syslin('c', 9/(s^2+2*s+9));
Gs3 = syslin('c', 9/(s^2+9));
Gs4 = syslin('c', 9/(s^2+6*s+9));

den1 = denom(Gs1);
den2 = denom(Gs2);
den3 = denom(Gs3);
den4 = denom(Gs4);

Poles1 = roots(den1)
Poles2 = roots(den2)
Poles3 = roots(den3)
Poles4 = roots(den4)

plot(t,csim('step',t,Gs1),t,csim('step',t,Gs2),t,csim('step',t,Gs3),t,csim('step',t,Gs4))

xtitle('Output Respose', 'time (s)', 'output(degree)')
xgrid()
