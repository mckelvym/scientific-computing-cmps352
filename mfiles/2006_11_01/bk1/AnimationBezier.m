function AnimationBezier

Pa = [0;0];
Pb = [1;1];
Pc = [2;0];


nframes = 36*10;
Frames = moviein(nframes);
t = linspace(0, 1, nframes);
for i=1:nframes

[s,sizet] = size(t);
for c=1:sizet
Bx(c) = 2*t(i)*(1 - t(i))*1 + t(i)^2*2;
By(c) = 2*t(i)*(1 - t(i))*cos(2*pi*t(i)) + t(i)^2*sin(2*pi*t(i));
end
Bx
By
plot(Bx, By);

Frames(:,i) = getframe;
end

movie(Frames,1)
title('Bezier Curves');