function [B] = IDFTmatrix(N)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
j = sqrt(-1);
B = zeros(N);
sz = [N N];

for k=1:N
    for n=1:N
        B(k,n) = (1/N)*exp(j*2*pi*(k-1)*(n-1)/N);
    end

end
end

