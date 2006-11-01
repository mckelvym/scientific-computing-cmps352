function AnimationDiskP (p,n)

nframes = 36;
Frames = moviein(nframes);
for i=1:nframes
    
t = linspace(0, pi/2, n);
x = cos(t);
y = sin(t);
x = x.^2;
y = y.^2;
% x = x.^(1/p + i/nframes);
% y = y.^(1/p + i/nframes);
x = x.^(1/(p + i*0.2));
y = y.^(1/(p + i*0.2));
plot(x,y,'b',-x,y,'b',-x,-y,'b',x,-y,'b');

Frames(:,i) = getframe;
end
movie(Frames,5)

% axis ('equal');

% titleString = sprintf('The Unit Disk D_p where p= %d',p);
% title(titleString);