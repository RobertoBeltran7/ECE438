function [A] = Specgm(x,L,overlap,N)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here

matrix_indx=1;
column=1;

while(matrix_indx+L <= length(x))
    temp_var=DFTwin(x.',L,matrix_indx,N);
    A(:,column)=temp_var;
    column=column+1;
    matrix_indx=matrix_indx+L-overlap;
end
   
end



