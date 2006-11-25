function Z = dhm( beta, your_secret, their_public )
% An implementation of the Diffie-Hellman (-Merkle) algorithm

%initialization phase:
% choose a random generator, beta
% a: person a selects a secret number, s_a
%    person a calculates a public number, p_a = beta^s_a;
% b: person b selects a secret number, s_b
%    person b calculates a public number, p_b = beta^s_b;

%protocol
% 1. exchange public numbers between persons a & b
% 2. a can calculate Z = p_b^(s_a), which is the same as beta^(s_b*s_a)
%    b can calculate Z = p_a^(s_b), which is the same as beta^(s_b*s_a)
% 3. a&b now share the same secret Z. Z becomes a session key for
% symmetrical key cryptography, such as the caesar cypher

Z = power(their_public, your_secret)