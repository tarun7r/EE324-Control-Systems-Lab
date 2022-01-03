t=0:0.1:100;
y1 = csim('step',t,sys1);
sys2 = syslin('c',0.5/(s^2+2*s+5));
y2 = csim('step',t,sys2);
sys3 = syslin('c',1/(s^2+2*s+5));
y3 = csim('step',t,sys3);
figure;plot(t,y1,t,y2,t,y3);

h=legend(['original system';'second order approx maintaing steady state value';'another second order approx'])
