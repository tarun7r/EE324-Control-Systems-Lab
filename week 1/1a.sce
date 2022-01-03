s=poly(0,'s')
g1 = 10/(s^2+2*s+10)
g2 = 5/(s+5)
g = g1*g2
sys = syslin('c',g)
