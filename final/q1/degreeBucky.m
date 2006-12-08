% mark mckelvy
% cmps352 - final
% december 8, 2006

function [di, do] = degreeBucky(i)
% This function is given a vertex i, and determines what is the in-degree
% of the vertex (di) and what is the out degree of the vertex (do)

% this is a vertex array of 60 nodes.
B = bucky;

di = 0;
do = 0;

for x=1:60
    % this represents a node's outgoing pointers
    if(B(i,x) == 1)
        do = do + 1;
    end
    % this represents a node's incoming pointers
    if(B(x,i) == 1)
        di = di + 1;
    end
end
