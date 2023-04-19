% Takes location (2d array) and angle of bot, location (2d array) of next waypoint, and steering angle limit and outputs steering angle

function [steering_angle] = find_steering_angle(bot_location, bot_rotation, waypoint_location, steering_limit)

    % Read bot and waypoint locations
    bot_x = bot_location(1);
    bot_y = bot_location(2);
    waypoint_x = waypoint_location(1);
    waypoint_y = waypoint_location(2);

    % Find delta distances between bot and waypoint
    delta_x = waypoint_x - bot_x;
    delta_y = waypoint_y - bot_y;

    % Find angle between bot and waypoint with respect to the vertical
    delta_theta = atand(delta_y/delta_x);

    % Subtract angle between car and waypoint to find steering angle
    total_angle = delta_theta - bot_rotation;
    
    % Clamp steering angle and adjust to allow for out of bounds angles
    steering_angle = clamp(total_angle, steering_limit);
end