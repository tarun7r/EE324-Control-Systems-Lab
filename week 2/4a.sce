G4 = 1/ s ;
S4 = syslin('c' , G4 ) ;
scf();
resp4 = csim ( 'step', t , S4 ) ;
plot( t , resp4 ) ;
xlabel( 't' , 'fontsize', 2.5 ) ;
ylabel( 'Resopnse' , 'fontsize', 2.5 ) ;
title ( [ "Step response plot" ] , 'fontsize', 2 ) ;
