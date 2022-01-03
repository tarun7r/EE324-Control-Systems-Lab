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

Bval = b:b:100*b;
rise_time2= (1./(Bval)).*(log(10/1)-log(10/9));
scf();
plot(Bval , rise_time2);
xlabel("b", 'fontsize', 2.5 );
ylabel("Rise_time" ,'fontsize', 2.5 );
