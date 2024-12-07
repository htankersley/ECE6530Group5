%% Clean Workspace
% Use this file to run the hearing test.
clear;
close all;
clc;
%% Run Hearing Test
% Set test inputs
samplingRate = 44100; % Hz
duration = 1; % sec

% Run test - check hearing_test.m for detailed test notes.
hearing_test_func(samplingRate, duration);

%% Plot Audiogram Hearing Threshold

% Parameters for plot
frequencies = [250, 500, 1000, 2000, 4000, 8000]; % Octave frequencies in Hz
left_ear_thresholds = [40, 35, 30, 45, 55, 70]; % dB HL for the left ear
right_ear_thresholds = [50, 40, 35, 50, 60, 80]; % dB HL for the right ear

figure(2);
plot(frequencies, left_ear_thresholds, '-ro', 'LineWidth', 2, 'MarkerSize', 8); % Left ear with red circles
hold on;
plot(frequencies, right_ear_thresholds, '-bx', 'LineWidth', 2, 'MarkerSize', 8); % Right ear with blue crosses

set(gca, 'XScale', 'log');
set(gca, 'XTick', frequencies, 'XTickLabel', {'250', '500', '1k', '2k', '4k', '8k'});
set(gca, 'YDir', 'reverse'); 
ylim([-10, 110]); % Threshold levels [-10 dB to 110 dB]
xlim([200, 10000]); % range
grid on; 
xlabel('Frequency in Hertz', 'FontSize', 12);
ylabel('Hearing Threshold Level in dB HL', 'FontSize', 12);
title('Audiogram: Hearing Thresholds', 'FontSize', 14);
legend({'Left Ear', 'Right Ear'}, 'Location', 'SouthEast');
 
 
 