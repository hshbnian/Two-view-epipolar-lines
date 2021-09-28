function [ F ] = EightPointAlgorithm( points1, points2)
% getting Essential matrix by 8 pont algorithm
points1=points1(1:8,:);
points2=points2(1:8,:);
[normPoints1,T1] = Normalization( points1);
[normPoints2,T2] = Normalization( points2);
X1= normPoints1(:,1);
Y1= normPoints1(:,2);
X2= normPoints2(:,1);
Y2= normPoints2(:,2);

A = [ X2.*X1 X2.*Y1 X2 Y2.*X1 Y2.*Y1 Y2 X1 Y1 ones(8,1)];
[~,~,V] = svd(A,0);
temp = V(:,end);
F = reshape( temp,[3 3])';
% make it rank two
[U,L,V] = svd(F);
L(3,3) = 0;             
L = L / L(1,1);         
F = U * L * V';

F = T2' * F * T1;
end