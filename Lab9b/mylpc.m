function [coef] = mylpc(x,P)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

r=xcorr(x,P);

r_ss=r(floor(length(r)/2)+1:length(r)-1);

r_s=r(floor(length(r)/2+1)+1:length(r))';

R_s=toeplitz(r_ss);

coef=R_s^(-1)*r_s;

end
