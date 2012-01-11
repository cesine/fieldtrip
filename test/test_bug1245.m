function test_bug1245

% TEST test_bug_1245
% TEST ft_multiplotER

% The issue: when inputting data where the corresponding layout consists of
% more channels than the to-be-plotted channels (specified in cfg.channel),
% and where those channels may have a different order of magnitude, the
% automatic scaling of the y-axis is incorrect, because the scale
% determination algorithm includes the channels that are excluded from the
% plotting

load test_bug1245
figure;ft_multiplotER(cfg, data);