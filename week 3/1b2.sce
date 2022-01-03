t = 0 : 0.01 :3 ;
sys2 = syslin('c', (s-3)/(s^2 - s - 6));
y2 = csim('step', t, sys2);
plot(t,y2);
xlabel("t (s)")
ylabel("Step response, y(t)")
title("Step Response for stabilised system");
