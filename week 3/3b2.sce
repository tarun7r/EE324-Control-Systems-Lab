G4 = 180/((s^2+2*s+9)*(s+20))
sysb = syslin('c',G4)
disp("zeros of G4:")
disp(roots(sysb.num))
disp("poles of G4:")
disp(roots(sysb.den))
y2 = csim('step',t,sysb)
ss2 =1;
t10 = t(find(y2>0.1*ss2)(1));
t90 = t(find(y2>0.9*ss2)(1));
tr = t90-t10;
printf("Rise Time = %.2f s\n",tr);
pov4 = (max(y2)-ss2)*100/ss2;
printf("Percentage overshoot = %3.2f\n",pov4);
figure;plot(t,y1,t,y2,t,y)

h1=legend(['Step response additonal pole at s = -0.5','Step response with additional pole at s = -20', 'Step Response with no additional poles'],pos="ur")
