% clear all;
close all;

% Create inputs
x = 0:0.01:100;

% Create Outputs
y = x.^2

% Lets design the Neural Network itself
net = newff(minmax(x), [24 1], {'logsig', 'purelin'},'trainlm');

% Lets train the Neural Network with data

net.trainparam.epochs    = 8000;
