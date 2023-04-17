function clamped_val = clamp(input, limit)

    if (input <= (-1 * limit))
        clamped_val = -1 * limit;
    elseif (input >= limit)
        clamped_val = limit;
    else
        clamped_val = input;
    end

end

