function [output] = Hist(A)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

sz=size(A);
row_vec=sz(1)*sz(2);
x=reshape(A,1,row_vec);
hist(x,0:255);


end

