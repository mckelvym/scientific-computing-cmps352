%mark mckelvy
%cmps352
%lab 6
function AnimationBezier

Pa = [0;0];
Pb = [1;1];
Pc = [2;0];


nframes = 36*10;
Frames = moviein(nframes);
c = linspace(0, 1, nframes);

for i=1:nframes

    
counter = 1;
for t=0:.01:1
    B(1,counter) = t;%2*t*(1 - t)*1 + t^2*2;
    B(2,counter) = 2*t*(1 - t)*cos(2*pi*c(i)) + t^2*sin(2*pi*c(i));
    counter = counter + 1;
end
plot(B(1,:), B(2,:));
ylim([-1 1]);

Frames(:,i) = getframe;
end

movie(Frames,1)
title('Bezier Curves');