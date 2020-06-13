function [B] = gammCorr(A,gamma)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

B=zeros(size(A));
sz=size(A);
row=sz(1)*sz(2);
A_reshape=reshape(A,1,row);

for i=1:length(A_reshape)
    B(i)=calcGamma(A_reshape(i),gamma);
end

