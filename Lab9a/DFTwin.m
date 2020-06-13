function [X] = DFTwin(x,L,m,N)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

ham_window=hamming(L);
new_window=x(m:m+L-1).*ham_window;
X=fft(new_window,N);


end

