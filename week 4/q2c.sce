s = poly(0, 's');
G = 10/(s*(s+2)*(s+4));
G = syslin('c',G);
evans(G, 100); 
sgrid('red');  
// obtained the point by zooming in near the cut of imaginary axis, we get critical K = 4.7999 
