function [y] = averagevalue_1(daily_vals)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
n=length(daily_vals);
y=zeros(1,n);

for i=1:n
   y(i) = (1/3).*(daily_vals(i) + daily_vals(i-1) +daily_vals(i-2)); 
end
end

