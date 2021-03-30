function ncut = calculateNcut(anAffinityMat,U2)
%calculateNcut - Calculates the ncut measure
%
% SYNTAX
%
%   ncut = calculateNcut(anAffinityMat,U2)
%   
% INPUT
%
%   anAffinityMat   square and symmetric matrix that describes the graph       [M by M]   
%   U2              the second smallest eigenvector of the generalized system  [n by 1]
%
% OUTPUT
%
%   ncut            the calculated ncut value                                  [scalar]
%  
% DESCRIPTION
%
% calculateNcut takes as input the affinity matrix and the second smallest
% eigenvector of the generalized eigenvalue system produced by  myNCuts.
% Calculates the optimal ncut value in the way presented in the paper (page
% 5 - page 6).
%

W=anAffinityMat;
D=sum(W,2);   
D=diag(D); % diagonal D the elements of which, are the sums of each row of W.
y=U2;
ncut=(y'*(D-W)*y)/(y'*D*y);

end


%%-------------------------------------------------------------------------
%
% AUTHOR
%
%   Matsoukas Vasileios,
%   Undergraduate Student, Department of Electrical and Computer Engineering 
%   Aristotle University of Thessaloniki, Greece
%   AEM:8743
%   email: vmatsouk@auth.gr
%
% -------------------------------------------------------------------------