s=poly(0,'s')
g1 = 10/(s^2+2*s+10)
t=0:0.01:10;
plot2d(t, csim('step',t,g1));
xlabel("Time [s]");
ylabel("C(s)");
title("Unit Step Response");
xgrid(1, 1, 10);   

