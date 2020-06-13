function output = method7(input)

    output = [];
    output(1) = 1/3 * input(1);
    for i = 2:length(input)
        if i <= 3
            output(i) = output(i-1) + 1/3 * input(i);
        else
            output(i) = output(i-1) + 1/3 * (input(i) - input(i-3));
        end
    end
end

