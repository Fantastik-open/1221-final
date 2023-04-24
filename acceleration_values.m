function alpha = acceleration_values(v, w, c1, c2, a, b, m, J, u)
    % v - velocity
    % w - angular velocity
    % c1 - front wheel cornering stiffness
    % c2 - rear wheel cornering stiffness
    % a - distance from front wheel to center of gravity
    % b - distance from front rear to center of gravity
    % m - mass of car + contents
    % J - mass moment of inertia around z axis
    % u - steering input

    %angular acceleration
    vn = v * sind(u);
    vt = v * cosd(u);
    alpha = ((-1 * (a * c1 + a * c2) * vn) - ((((a^2) * c1) + ((b^2) * c2)) * w))/(J * vt) + (a * c1 * u)/J;

end