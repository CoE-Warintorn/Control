s = poly(0, 's');
t = 0:0.01:5;
K = 1;
Gs = ((s+3)*(s+4))/((s+1)*(s+2))
Gs1 = syslin('c', Gs)
//K = 1/abs(horner(Gs,-1.9+%i*0.6241))
Ts = K*Gs1/(1+K*Gs1)
den1 = denom(Ts)
roots(den1)
evans(Gs1)
//sgrid(0.95,1)
//plot(t,csim('step', t, Ts))
xgrid()
