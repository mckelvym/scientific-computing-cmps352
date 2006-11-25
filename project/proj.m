function X = proj( input_string )
%proj Summary of this function goes here
%   Detailed explanation goes here

%choosing to encode the entire character set, which consists of 95
%characters, means you need a prime number that is larger than  the number
%of characters.
prime = 127;

%convert the input string into an integer vector
chararray = double(input_string);

%find how long the vector is, used for resizing
[a,s] = size(chararray);

%if there are an even number of characters, no problem
%otherwise, we need to add something on the end (say, a space) so that
%we can evenly chop up the array into a 2xn matrix
if(mod(s,2) == 0)
    chararray = reshape(chararray, 2, []);
else
    chararray(s+1) = 32;
    chararray = reshape(chararray, 2, []);
end

%reshape back into a long vector
chararray = reshape(chararray, 1, []);
%convert numbers back into characters
chararray = char(chararray);
%return the array
X = chararray;