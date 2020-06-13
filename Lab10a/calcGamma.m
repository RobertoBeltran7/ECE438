function [output] = calcGamma(input,gamma)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

output=exp((log(input/255)/gamma)+log(255));
end

