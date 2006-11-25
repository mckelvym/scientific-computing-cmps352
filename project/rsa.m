function [ output_args ] = rsa( prime, secretkey )
%An attempt at looking at rsa algorithm

%Select a secret key and a public key such that S*P = 1 mod n, n is a prime
%number.

publickey = rsapublickey(prime, secretkey);
