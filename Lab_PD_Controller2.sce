s = poly(0, 's');
t = 0:0.01:10;
//Gs = syslin('c', (s+2)/(s+3));
Gs = (s + 2) / (s + 5);
Out = csim('step', t, Gs);
plot(t, Out)
xtitle('Time response of (s+2)/(s+5)', 'time(s)', 'Output');
xgrid();
