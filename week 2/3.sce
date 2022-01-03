first_order_tf = 10/(s+10);
s_first = syslin( 'c' , first_order_tf);
second_order_tf = 100/(s^2 + 36*s + 100 ) ;
s_second = syslin( 'c', second_order_tf) ;
t = 0:0.02 :10 ;
resp1 = csim ( 'step' , t , s_first) ;
resp2 = csim ( 'step' , t , s_second ) ;
scf( ) ;
subplot (131) , plot( t , resp1 ) ;
xlabel( 't' , 'fontsize', 2.5 ) ;
ylabel( 'stepresopnse' , 'fontsize', 2.5 ) ;
title ( [ " Transfer function" , "$\ frac {10}{s+10}$ " ] , 'fontsize', 2 ) ;
subplot (132) , plot( t , resp2 ) ;
xlabel( 't' , 'fontsize', 2.5 ) ;
ylabel( 'stepresopnse' , 'fontsize', 2.5 ) ;
title ( [ " Transfer function" , "$\ frac {100}{s^2+36*s+100}$ " ] , 'fontsize', 2 ) ;

