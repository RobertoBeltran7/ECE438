function [Y] = Uquant(X,N)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
delta = (max(max(X))-min(min(X)))./(N-1);

sub_min = (X - min(min(X)))./delta;
Y = round(sub_min).*delta + min(min(X));

end

