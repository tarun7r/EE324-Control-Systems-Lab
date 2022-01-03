s=poly(0,'s')
G = 400/(s^2+20*s+400);
sys = syslin('c',G )
t = 0:0.002:5
response = csim('step',t,sys)
scf();
plot(t,response,'LineWidth',2);
xlabel("Time",'fontsize', 2.5 );
ylabel ("Step Response ",'fontsize', 2.5) ;
title (" Response plot for the above transfer function" , 'fontsize' , 2.5 ) ;
