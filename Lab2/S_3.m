function [y] = S_3(x)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
n = length(x);
y = zeros(1,n);
y(1) = x(1);

for i=2:n
    y(i) = -0.5*x(i-1)+x(i);
end

end
