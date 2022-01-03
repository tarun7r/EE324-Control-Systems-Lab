t=0:0.1:10;
y1 = csim('step',t,sys1);
sys2 = syslin('c',17/(s^2+2*s+17));
y2 = csim('step',t,sys2);
figure;plot(t,y1,t,y2);
h=legend(['original system';'second order approx'])
