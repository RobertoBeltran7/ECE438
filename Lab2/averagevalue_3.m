function [y] = averagevalue_3(daily_vals)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
n=length(daily_vals);
y=zeros(1,n);

for i=1:n
   y(i) = y(i-1)+(1/3).*(daily_vals(i)-daily_vals(i-3));
end
end

