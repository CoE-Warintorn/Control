s = poly(0, 's');
t = 0:0.01:20;
Gs = (s+3)/(s*(s+1)*(s+2)*(s+4))
Gs1 = syslin('c', Gs)
//K = 1/abs(horner(Gs,-4+%i*0.4))
//K1 = 1/abs(horner(Gs,-3.5+%i*0.61))
K1 = 0.94
K = 1.2
Ts = K*Gs1/(1+K*Gs1)
Ts1 = K1*Gs1/(1+K1*Gs1)
//den1 = denom(Ts)
//roots(den1)
evans(Gs1)
sgrid([0.2,0.5,0.7],1)
//sgrid([0.59],1)
//plot(t,csim('step', t, Ts),t,csim('step', t, Ts1))
xgrid()
