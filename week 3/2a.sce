s=poly(0,'s');
sys1 = syslin('c',85/(s^3+7*s^2+27*s+85));
plzr(sys1); //plots the pole zero of the system
title('pz plot of third order system');
disp('poles of sysg1 are\n');
disp(roots(sys1.den));

