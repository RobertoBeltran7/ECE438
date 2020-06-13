function [A] = DFTmatrix(N)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
j = sqrt(-1);
A = zeros(N);
sz = [N N];

for k=1:N
    for n=1:N
        A(k,n) = exp(-j*2*pi*(k-1)*(n-1)/N);
    end

end
end
