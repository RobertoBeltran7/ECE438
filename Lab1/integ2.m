%Function to calculate integral of exp(t)
function I = integ2(N)

t=0:1/N:1;
x=exp(t);
area=x.*(1/N);
I=sum(area);
end

