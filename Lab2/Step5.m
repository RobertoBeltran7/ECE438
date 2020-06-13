clc
clear
rng(1)
for i = 1:40
    x1(i) = randi(40);
end
for i = 1:40
    x2(i) = randi(40);
end
a1 = 3;
a2 = 4;
input = a1 .* x1 + a2 .* x2;
y1_bbox1 = bbox1(x1);
y2_bbox1 = bbox1(x2);
y1_bbox2 = bbox2(x1);
y2_bbox2 = bbox2(x2);
y1_bbox3 = bbox3(x1);
y2_bbox3 = bbox3(x2);
output1 = bbox1(input);
output2 = bbox2(input);
output3 = bbox3(input);
orient("tall")
figure(1)
subplot(6, 1, 1)
plot(a1 * y1_bbox1 + a2 * y2_bbox1)
title('bbox1 input')
xlabel('t')
subplot(6, 1, 2)
plot(output1)
title('bbox1 output')
xlabel('t')

subplot(6, 1, 3)
plot(a1 * y1_bbox2 + a2 * y2_bbox2)
title('bbox2 input')
xlabel('t')

subplot(6, 1, 4)
plot(output2)
title('bbox2 output')
xlabel('t')

subplot(6, 1, 5)
plot(a1 * y1_bbox3 + a2 * y2_bbox3)
title('bbox3 input')
xlabel('t')
subplot(6, 1, 6)
plot(output3)
title('bbox3 output')
xlabel('t')

sgtitle('Linearity Test')

figure(2)
orient("tall")
x1 = [x1 0 0 0];
x3 = [0 0 0 x1];
y1 = bbox1(x1);
y2 = bbox2(x1);
y3 = bbox3(x1);
output1 = bbox1(x3);
output2 = bbox2(x3);
output3 = bbox3(x3);
subplot(6, 1, 1)
plot(y1)
title('bbox1 input')
xlabel('t')
subplot(6, 1, 2)
plot(output1)
title('bbox1 output')
xlabel('t')

subplot(6, 1, 3)
plot(y2)
title('bbox2 input')
xlabel('t')
subplot(6, 1, 4)
plot(output2)
title('bbox2 output')
xlabel('t')

subplot(6, 1, 5)
plot(y3)
title('bbox3 input')
xlabel('t')
subplot(6, 1, 6)
plot(output3)
title('bbox3 output')
xlabel('t')

sgtitle('Time Invariance Test')