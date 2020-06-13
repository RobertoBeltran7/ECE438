%Function to calculate integral of sin^2(7t)
function I = integ1(N)

t=0:(2*pi)/N:2*pi;
x=sin(7*t).^2;
area=x.*((2*pi)/N);
I=sum(area);
end

