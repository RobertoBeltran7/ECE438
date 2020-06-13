function h = gaussFilter(N, var)
    r = -(N-1)/2:1:(N-1)/2;
    c = -(N-1)/2:1:(N-1)/2;
    for i = 1:N
        for j = 1:N
            h(i, j) = exp(-(r(i)^2 + c(j)^2) / (2 * var));
        end
    end
    C = sum(sum(h));
    h = h./C;
end

