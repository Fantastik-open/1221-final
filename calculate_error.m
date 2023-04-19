function error = calculate_error(y, y1)

    % calculate error by finding root-mean-square of delta_s values. Substitute
    % delta_s for y and y1

    error = sqrt((y+y1).^2);

end