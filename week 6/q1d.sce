   clear;
clc;
s=poly(0,'s');

G = 1/((s+3)*(s+4)*(s+12));
sysG = syslin('c',G);
t = 0 : 0.01 : 7;
k = 0 : 0.2 : 1;
y = zeros(length(t),length(k))
figure;
i=1;
for k1 = k
    sys = syslin('c', ((k1*G)/(k1*G+1)));
    y(:,i) = csim('step', t, sys);
    i=i+1;
end
plot(t, y)
h1=legend(string(k),4);
xlabel("t (s)")
ylabel("Step response, y(t)")
title("Step Response for k = 0.1 to 1"); 
f = gcf();
f.background = 8;
