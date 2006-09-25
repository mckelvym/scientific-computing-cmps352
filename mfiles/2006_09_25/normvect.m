function D = normVect(p)

x1 = -1:0.01:1;
x2 = [(1 - abs(x1.^p)).^(1/p); -(1 - abs(x1.^p)).^(1/p)];
plot(x1, x2)
