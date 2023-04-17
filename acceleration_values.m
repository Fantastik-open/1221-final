function [an, alpha] = acceleration_values(vn,vt,w,c1,c2,a,b,m,J,u)

% vn - normal velocity
% vt - tangential velocity
% w - angular velocity
% c1 - front wheel cornering stiffness
% c2 - rear wheel cornering stiffness
% a - distance from front wheel to center of gravity
% b - distance from front rear to center of gravity
% m - mass of car + contents
% J - mass moment of inertia around z axis
% u - steering input


%transverse acceleration
an = ((-(c1+c2)*vn) + ((-a*c1)+((b*c2))*w))/(m*vt) + (c1*u)/m ;

%angular acceleration
alpha = ((-(a*c1 + a*c2)*vn) - (((a.^2)*c1) + (((b.^2)*c2))*w))/(J*vt) + (a*c1*u)/J ;


end