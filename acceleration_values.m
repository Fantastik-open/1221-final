function [an, alpha] = acceleration_values(vn,vt,w,c1,c2,a,b,m,J,u)

%transverse acceleration
an = ((-(c1+c2)*vn) + ((-a*c1)+((b*c2))*w))/(m*vt) + (c1*u)/m ;

%angular acceleration
alpha = ((-(a*c1 + a*c2)*vn) - (((a.^2)*c1) + (((b.^2)*c2))*w))/(J*vt) + (a*c1*u)/J ;


end