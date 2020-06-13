function [outputRGB] = toRGB(A)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
outputRGB=zeros(size(A));
R=length(A);
G=length(A);
B=length(A);

    R=A(:,:,1)+1.4025.*(A(:,:,3)-128);
    G=A(:,:,1)-0.3443.*(A(:,:,2)-128)-0.7144.*(A(:,:,3)-128);
    B=A(:,:,1)+1.7730.*(A(:,:,2)-128);


outputRGB=cat(3,R,G,B);

