function output = method6(input)
   output(1) = 0.4 * input(1);
   for i = 2:length(input)
        output(i) = 0.6 * output(i-1) + 0.4 * input(i);
   end
end

