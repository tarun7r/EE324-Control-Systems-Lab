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

Aval = a:a:100*a;
rise_time = ones(Aval)*(r_timehigh-r_timelow);
scf( ) ;
plot(Aval , rise_time);
xlabel("a", 'fontsize', 2.5 );
ylabel("Rise_time" ,'fontsize', 2.5 );
