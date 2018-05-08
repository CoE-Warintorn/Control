S = poly(0, 's');
K = 1;
K1= 10^(6/20);
t = 0:0.01:10;
Gs = syslin('c',K/((s)*(s+2)));
Gs1 = Gs * K1;
bode([Gs;Gs1],0.001,10)
figure()
plot(t,csim('step',t,Gs/(1+Gs)),t,csim('step',t,Gs1/(1+Gs1)))
xgrid()
