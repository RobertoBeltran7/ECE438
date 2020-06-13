function [y] = S_1(x)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
n = length(x);
y = zeros(1,n);
y(1) = x(1);
%y(2) = 2.*x(2);

for i=2:n
    y(i) = x(i)-x(i-1);
end

end

