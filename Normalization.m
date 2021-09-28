function [normPoints, T] = Normalization( points )
% returns a transform for column vectors to normalize the points 

% themethod in class

mu = sum(points(:,1:2)) / size(points,1);
centeredPoints = points(:,1:2) - repmat(mu,size(points,1),1);
averageDistance = sum(sqrt(centeredPoints(:,1).^2 + centeredPoints( :,2).^2)) / size(points,1);
s = sqrt(2) / averageDistance;
T = diag([s s 1]) * [eye(3,2) [-mu 1]'];
normPoints = points;
normPoints(:,3) = 1;
normPoints = normPoints * T';
normPoints = normPoints ./ repmat( normPoints(:,3), 1, 3);
normPoints(:,3) = [];
