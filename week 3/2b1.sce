s=poly(0,'s');
sys1 = syslin('c',(s+0.01)/(s^3+101/50*s^2+126/25*s+0.1));
figure;plzr(sys1);
f = gcf()
f.background = 8;
title('pz plot of third order system');
disp('poles of sys1 are\n');
disp(roots(sys1.den));
disp('zeros of sys1 are\n');
disp(roots(sys1.num));
