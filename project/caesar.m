function X = caesar(x, Z, isDecrypt)
%implements a caesar cipher, described in "Cryptography and E-Commerce" by
%Jon C. Graff
%x is the string to encrypt/decrypt
%Z is any value
%isDecrypt is the flag to decrypt (pass '1'), any other value encrypts


%make sure they key is within acceptable range
key = mod(Z, 96)

%convert to integer representation, base at 0
if(isDecrypt==1)
    X = real(x-32) - key;
else
    X = real(x-32) + key;
end

%convert back to character string
X = char(X+32);

