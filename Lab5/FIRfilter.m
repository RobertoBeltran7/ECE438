function [FIRoutput] = FIRfilter(x)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
n = length(x);
FIRoutput = zeros(n,1);
FIRoutput(1) = x(1);
FIRoutput(2) = x(2)-2*cos(1.325)*x(1);

for i = 3:n
    FIRoutput(i) = x(i)-2*cos(1.325)*x(i-1)+x(i-2);
end

