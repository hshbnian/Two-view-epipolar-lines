function [ lines ] = GenerateEpipolarLines(F,points)

homoPoints=[points,ones(size(points,1),1)];
lines=homoPoints*F';
end

