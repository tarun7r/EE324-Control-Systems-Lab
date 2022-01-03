s = poly(0,'s');
t=0:0.01:10;
G1 = 9/(s^2+2*s+9);
sysa = syslin('c',G1);


//plzr(sysa);
disp("zeros of G1:");
disp(roots(sysa.num));

disp("poles of G1:");
disp(roots(sysa.den));

y1 = csim('step',t,sysa);
ss1 = 1;
t10 = t(find(y1>0.1*ss1)(1));
t90 = t(find(y1>0.9*ss1)(1));
tr = t90-t10;
printf("Rise Time = %.2f s\n",tr);
pov1 = (max(y1)-ss1)*100/ss1;
printf("Percentage overshoot = %3.2f\n",pov1);

