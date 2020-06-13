function [y] = averagevalue_2(daily_vals)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
n=length(daily_vals);
y=zeros(1,n);

for i=1:n
   y(i) = 0.6.*y(i-1)+0.4.*daily_vals(i); 
end
end

