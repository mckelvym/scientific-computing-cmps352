function key = rsapublickey( prime, secretkey)
%Generates an rsa public key such that P*S = 1 mod n, n is prime

publickey = 1;
while(not(modMult(secretkey, publickey, prime)) == 1)
    publickey = publickey + 1;
end
key = publickey;