s = poly(0,'s')
t=0:0.01:10;
G=9/((s^2+2*s+9));
y=csim('step',t,(syslin('c',G)));
G3 = 4.5/((s^2+2*s+9)*(s+0.5))
sysa = syslin('c',G3)
disp("zeros of G3:")
disp(roots(sysa.num))
disp("poles of G3:")
disp(roots(sysa.den))
y1 = csim('step',t,sysa)
ss1 = 1;
t10 = t(find(y1>0.1*ss1)(1));
t90 = t(find(y1>0.9*ss1)(1));
tr = t90-t10;
printf("Rise Time = %.2f s\n",tr);
pov3 = (max(y1)-ss1)*100/ss1; // is 0 here in this case
printf("Percentage overshoot = %3.2f\n",pov3);


