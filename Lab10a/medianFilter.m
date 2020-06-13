function Y = medianFilter(X)

[r, c] = size(X);
for i = 1:r
    for j = 1:c
       if i == 1 | j == 1 | i == r | j == c
           Y(i, j) = X(i, j);
       else
           Y(i, j) = median([X(i-1, j-1), X(i-1, j), X(i-1, j+1), X(i, j-1), X(i, j+1), X(i+1, j-1), X(i+1, j), X(i+1, j+1)]);
       end
    end
end

