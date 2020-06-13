function [Tot_crossing] = zero_cross(x)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
Tot_crossing = 0;
prev_x = x(1);

for i=2:length(x)
    if (prev_x > 0 && x(i) < 0)
        Tot_crossing = Tot_crossing + 1;
        prev_x=x(i);
    elseif (prev_x < 0 && x(i) > 0)
        Tot_crossing = Tot_crossing + 1;
        prev_x=x(i);
    end        
end

