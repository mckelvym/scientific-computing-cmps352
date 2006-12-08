% mark mckelvy
% cmps352 - final
% december 8, 2006

%question 2
function plotit(a,b,c,mytitle);

plot(a,b,'x',c(1,:), c(2,:));
title(mytitle);
xlabel('x');
ylabel('y');