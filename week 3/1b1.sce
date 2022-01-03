s = poly(0,'s');
sys1 = syslin('c', 1/(s^2 - s - 6));
t = 0 : 0.01 : 3;
y = csim('step', t, sys1);
plot(t', y);
xlabel("t (s)")
ylabel("Step response, y(t)")
title("Step Response for unstable system");





