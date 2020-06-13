function output = method5(input)
    output = [];
    for i = 1:length(input)
        if i == 1
            output(i) = 1/3 * input(i);
        elseif i == 2
            output(i) = 1/3 * (input(i) + input(i-1)); 
        else
            output(i) = 1/3 * (input(i) + input(i-1) + input(i-2)); 
        end
    end
end
