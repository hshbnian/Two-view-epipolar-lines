function [ omega, tauCross ] = DecomposeEssential( E )
% Decomposses Essential matrix to rotation and translation matrix
W=[0 -1 0; 1 0 0; 0 0 1];
[U,L,V]=svd(E);

if L(3,3)> 0.00001
    L=diag([1 1 0]);
end

tauCross=U*L*W*(U');
omega=U*(inv(W))*V;

%normalizations
%tau=tau./sqrt((tau*tau'));
end

