s=poly(0,'s')
a = 24
b = 20
G = a/(s+b)
sys = syslin('c',G)
t1 = 1/b
t_r = 2.2/b
t_settling = 4/b
r_timelow = log(10/9)*(1/b)
r_timehigh = log(10/1)*(1/b)
t = 0:0.00002:0.2
resp1 = csim('step',t,sys)
plot2d(t,resp1)
k = drawaxis(x=(2*t_settling)/100, y =0:3, dir='l',tics='v')
k = drawaxis(x=t1, y =0:3, dir='l',tics='v')
k = drawaxis(x=t_r, y =0:3, dir='l',tics='v')

