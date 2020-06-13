%Plot for I(N) of sin^2(7t)

for M=1:100
result(M) = integ1(M);
end

M=1:100;
subplot(2,1,1)
plot(M,result)
title('Step 4.4 I(N)')
ylabel('I(N)')
xlabel('N')

%Plot of J(N) of exp(t)

for N=1:100
result2(N) = integ2(N);
end

N=1:100;
subplot(2,1,2)
plot(N,result2)
title('Step 4.4 J(N)')
ylabel('J(N)')
xlabel('N')