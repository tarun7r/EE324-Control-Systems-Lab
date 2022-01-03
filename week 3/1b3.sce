a = -0.003 : 0.001 : 0.003;
y = zeros(length(t),length(a))
i=1;
for a1 = a
 sys = syslin('c', (s - 3 + a1)/(s^2 - s - 6));
 y(:,i) = csim('step', t, sys);
 i=i+1;
end
plot(t, y)
h1=legend(string(a),4);
xlabel("t (s)")
ylabel("Step response, y(t)")
title("Step Response for a = -0.003 to 0.003");

