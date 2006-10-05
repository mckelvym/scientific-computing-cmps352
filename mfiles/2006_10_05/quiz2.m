function quiz2;

sprintf('Mark McKelvy\nCMPS352\nOctober 5, 2006\nQuiz 2')
sprintf('Here are the answers for quiz2:\nSuppose L1 looks like this:')
L1 = eye(4);
for i = 2:4
    L1(i,1) = round(rand()*10);
end    
L1
sprintf('We can see that the inverse of L1 \nwill have the terms below the diagonal \nin the corresponding column negated:')
inv(L1)
sprintf('Watch for a similar thing in L2 and L3:')
L2 = eye(4);
for i = 3:4
    L2(i,2) = round(rand()*10);
end    
L2
sprintf('Inverse of L2:')
inv(L2)
L3 = eye(4);
L3(i,3) = round(rand()*10);
L3
sprintf('Inverse of L3:')
inv(L3)
sprintf('Thus, it is easy to see that to obtain any \ninv(L_i) that we just negate the nondiagonal \nterms in the corresponding L_i matrix')
sprintf('For part2\nThe algorithm does not need any extra space \nbecause once the diagonal has entries of 1, \nwe can simply find the inverse easily by observing \nwhat happened in the previous problem:\nWe simply negate the terms in the \ncorresponding column that are below the \ndiagonal in order to find the inverse, \nno extra space is needed.')