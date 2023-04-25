%% Test Script 1221
clear
clc


% Acceleration for when steering angle is 45 degrees.
try
    assert(acceleration_values(5, 0, 100000, 80000, 1.5, 1.3, 1700, 2000, 45) > 0);
catch
    fprintf('assertion failure in acceleration_values 1')
end


% Acceleration for when steering angle is -45 degrees.
try
    assert(acceleration_values(5, 0, 100000, 80000, 1.5, 1.3, 1700, 2000, 45) < 0);
catch
    fprintf('assertion failure in acceleration_values 2')
end


% Acceleration for when steering angle is 0 degrees - acceleration should be 0 in this circumstance.
try
    assert(acceleration_values(5, 0, 100000, 80000, 1.5, 1.3, 1700, 2000, 0) == 0)
catch
    fprintf('assertion failure in acceleration_values 3')
end



















