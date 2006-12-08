% mark mckelvy
% cmps352 - final
% december 8, 2006

% question 3
function plotit(x,y);

mytitle = 'Q3';
[min,max,a] = newtonlike(x,y)

counter = 1;
for i=min:0.1:max
    c(1,counter) = i;
    c(2,counter) = a(1) + a(2)*(i-x(1)) + a(3)*(i-x(1))*(i-x(2));
    counter = counter + 1;
end    
    
plot(c(1,:), c(2,:));
title(mytitle);
xlabel('x');
ylabel('y');