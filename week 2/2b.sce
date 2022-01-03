d_ratio = 0:0.25:2;
wn = 20;
scf();
colors_p = [ "scilab blue4" ,"scilab green2" ,"scilab red2" ,"scilab magenta2","scilab cyan2" ,"scilab brown2" ,"scilab pink4" ,"black" , "royal blue" ] ;
for j =1: size(d_ratio , 2 )
    G = wn^2/( s^2 + 2*d_ratio(j)*wn*s + wn^2 );
    s_gen = syslin('c', G);
    resp_gen = csim ( 'step' , t , s_gen ) ;
    plot2d( t, resp_gen , style= [ color( colors_p(j))] ) ;
    end
xlabel("Time",'fontsize', 2.5 );
ylabel ("Response",'fontsize', 2.5) ;
title(" Step responses for varying damping ratio" , 'fontsize' , 3 ) ;

