% Note 1
% all the following commands can be run in Command window.

% Note 2
% Writing the Semicolon in command window will prevent displaying of the
% output but still run the command anyway and save data as per command
% executed

% Note 3
% Including ; in command window prevents display of data

% Clears the command Window
clc;

% Clears/Purges all the variables/arrays/images/data in workspace
clear;

% Lets begin by a proper Hello World
disp('Hello World!');

% Created an array to plot
x = [2 3 4];
plot(x);

% To clear the plot X, enable the following line
% clf;

% To close all windows (i.e. the plot you just created and cleared, enable
% following command)
%close all;