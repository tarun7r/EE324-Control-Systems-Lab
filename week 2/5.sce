tau1 = 0 : 0.1 : 10 ;
tau2 = 0 : 0.5 : 10 ;
tau3 = 0 : 1 : 10 ;
s= poly ( 0 , 's') ;
G1 = (s+5)/(( s+4)*(s+2));
G2 = (s+5)/(s+4);
G3 = 1/(s+2);
sys1 = syslin( 'c' , G1 ) ;
sys2 = syslin( 'c' , G2 ) ;
sys3 = syslin( 'c' , G3 ) ;

resp1 = csim ( 'step' , tau1 , sys1) ;
resp21 = csim ( 'step', tau1 , sys2) ;
resp22 = csim ( resp21, tau1 , sys3) ;
resp31 = csim ( 'step', tau1 , sys3) ;
resp32 = csim ( resp31, tau1 , sys2) ;
scf( );

subplot(131),plot( tau1, resp1 ,'b') ;
subplot(131),plot( tau1 , resp22 ,'r') ;
subplot(131),plot( tau1 , resp32,'g') ;
legend( [ "type1" ,"type2" ,"type3" ] , 4 ) ;

title ( [ "tau1= 0.1" ] , 'fontsize', 2.5 ) ;
xlabel( 't' , 'fontsize', 2.5 ) ;
ylabel( 'Resopnse' , 'fontsize', 2.5 ) ;


resp1 = csim ( 'step' , tau2 , sys1) ;
resp21 = csim ( 'step', tau2 , sys2) ;
resp22 = csim ( resp21, tau2 , sys3) ;
resp31 = csim ( 'step', tau2 , sys3) ;
resp32 = csim ( resp31, tau2 , sys2) ;

subplot(132),plot( tau2, resp1 ,'b') ;
subplot(132),plot( tau2 , resp22 ,'r') ;
subplot(132),plot( tau2 , resp32,'g') ;
legend( [ "type1" ,"type2" ,"type3" ] , 4 ) ;

title ( [ "tau2= 0.5" ] , 'fontsize', 2.5 ) ;
xlabel( 't' , 'fontsize', 2.5 ) ;
ylabel( 'Resopnse' , 'fontsize', 2.5 ) ;



resp1 = csim ( 'step' , tau3 , sys1) ;
resp21 = csim ( 'step', tau3 , sys2) ;
resp22 = csim ( resp21, tau3 , sys3) ;
resp31 = csim ( 'step', tau3 , sys3) ;
resp32 = csim ( resp31, tau3 , sys2) ;

subplot(133),plot( tau3, resp1 ,'b') ;
subplot(133),plot( tau3 , resp22 ,'r') ;
subplot(133),plot( tau3 , resp32,'g') ;
legend( [ "type1" ,"type2" ,"type3" ] , 4 ) ;

title ( [ "tau3= 1" ] , 'fontsize', 2.5 ) ;
xlabel( 't' , 'fontsize', 2.5 ) ;
ylabel( 'Resopnse' , 'fontsize', 2.5 ) ;


