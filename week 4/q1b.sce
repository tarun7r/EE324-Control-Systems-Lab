clear;
clc;
s = poly(0, 's');
G = (s+1)/((s^2)*(s+3.6));
G = syslin('c',G);
poles = roots(G.den);
evans(G);  // constructing root locus 
sgrid('red');  
