%this function calculates the total force generated by the external forces
function [TotalForce] = calcforce(numFM, magF)

% initialize values
Fx = 0;
Fy = 0;
Fz = 0;

%this loop cycles through the number of forces presented, makes a unit
%vector out of them, then multiplies by the force's magnitude to obtain the
%coordinate directions of the forces. To sum up the forces in x,y,z, we add 
%to the variables Fx, Fy, and Fz every time through the loop.
for i = 1:numFM(1,1)
    Vec = [magF(i,2),magF(i,3),magF(i,4)];
    UnitVec = Vec / sqrt((magF(i,2))^2+(magF(i,3)^2+(magF(i,4))^2));
    Fx = Fx + magF(i,1)*UnitVec(1);
    Fy = Fy + magF(i,1)*UnitVec(2);
    Fz = Fz + magF(i,1)*UnitVec(3);
end

%make the sum of the forces into a nice vector to be used in further
%calculations
TotalForce = [Fx, Fy, Fz];
    