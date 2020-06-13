function [output] = calcY(x,T1,T2)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
%y=255/(T2-T1)*T

output=(255/(T2-T1))*(x-T1);
end

