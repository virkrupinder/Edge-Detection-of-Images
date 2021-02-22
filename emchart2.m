%2.2 Filtering Images via Convolution
% Rupinderjit Virk 11/30/19 EE 112
('echart.mat'); % Load the file echart,mat into echart varuable.
bdiffh = [1 -1] %First order difference Filter
yy1 = conv (echart(m, :), bdiffh) % output y[n] as convolution of x[n] and difference filter
m = 65  % Randomly picked row number
xx1 = echart (m,:); % The values of row 65 stored in xx1
subplot(211), stem (xx1) % stem plot of x[n]
subplot(212), stem (yy1) % stem plot of y[n]
find(yy1) % Locations of y[n] where there is a transition

