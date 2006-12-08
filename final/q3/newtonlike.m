% mark mckelvy
% cmps352 - final
% december 8, 2006

function [min,max,a] = newtonlike(x, y)
% Takes two vectors x and y as input (x = (x1,x2,x3) and y = (y1,y2,y3)).
% Returns the minimum and maximum value of the xi's and the vector a =
% (a0,a1,a2).


[dummy, n] = size(x);

min = x(1);
max = x(1);

% find the min x and the max x.
for i=1:n
    if(x(i) > max)
        max = x(i);
    end
    if(x(i) < min)
        min = x(i);
    end
end

% now calculate the newton differences
a0 = y(1);
a1 = (y(2)-y(1))/(x(2)-x(1));
a2 = (y(3)-y(2))/(x(3)-x(2));

a = [a0 a1 a2];


