s = poly(0, 's');
G = 10/(s*(s+2)*(s+4));
G = syslin('c',G);
evans(G, 100);  // constructing root locus 
sgrid('red');  
