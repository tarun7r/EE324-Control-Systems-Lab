G2 = 9*(s+2)/(s^2+2*s+9);
sysb = syslin('c',G2);
disp("zeros of G2:");
disp(roots(sysb.num));
disp("poles of G2:");
disp(roots(sysb.den));

y2 = csim('step',t,sysb);
ss2 = 2;
t10 = t(find(y2>0.1*ss2)(1));
t90 = t(find(y2>0.9*ss2)(1));
tr = t90-t10;
printf("Rise Time = %.2f s\n",tr);
pov2 = (max(y2)-ss2)*100/ss2;
printf("Percentage overshoot = %3.2f\n",pov2);
plot(t,y1,t,y2);

h1=legend(['Original step response (G_1)','Step Response with zero added (G_2)'],pos="ur");
