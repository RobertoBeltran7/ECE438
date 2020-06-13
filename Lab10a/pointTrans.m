function [output] = pointTrans(input,T1,T2)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
%linear equation
%y=255/(T2-T1)*(input-T1)

output=zeros(1,length(input));

for i=1:length(input)
    if input(i) <= T1
        output(i)=0;
    elseif input(i) >=T2
        output(i)=255;
    else
        output(i)=calcY(input(i),T1,T2);
    end
end






