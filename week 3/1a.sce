s = poly(0,'s');
t = 0:0.01:2;
for a = -1:0.01:1
    G = (s+5+a)/(s^2 + 11*s + 30)
    G_s = simp(G);
    y = csim('step',t,syslin('c', G_s))
    plot(t, y,'k-')
end

a = gca();
a.font_size = 3;
a.x_label.font_size = 3;
a.y_label.font_size = 3;
a.data_bounds = [0,0; 1.6,0.4];
a.title.font_size = 4;
xlabel("t(s)")
ylabel("Step response, y(t)")
title("Step response at various ''a'' : Observing pole-zero cancellation");


for a = -1:0.2:1
 G = (s+5+a)/(s^2 + 11*s + 30)
 G_s = simp(G)
 y1 = csim('step',t,syslin('c', G_s))
 plot(t, y1)
end

a = gca();
a.font_size = 3;
a.x_label.font_size = 3;
a.y_label.font_size = 3;
a.title.font_size = 4;
xlabel("t (s)")
ylabel("Step response, y(t)")
title("Step response at various ''a'' : Observing pole-zero cancellation")

