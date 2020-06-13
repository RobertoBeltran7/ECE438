function [y] = S_2(x)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
n = length(x);
y = zeros(1,n);
y(1) = x(1);

for i=2:n
    y(i) = 0.5*y(i-1)+x(i);
end

end

