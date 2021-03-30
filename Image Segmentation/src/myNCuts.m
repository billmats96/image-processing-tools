function [clusterIdx, EigVecs] = myNCuts(anAffinityMat , k)
%myNCuts - Segments the input graph in k clusters with non recursive  
%          normalized cuts method and returns a vector with the labels
%          of clusters in which nodes belong and a matrix with the 
%          k smallest eigenvectors
%
% SYNTAX
%
%   [clusterIdx, EigVecs] = myNCuts(anAffinityMat, k)
%   
% INPUT
%
%   anAffinityMat   square and symmetric matrix that describes the graph    [M by M]   
%   k               the number of desired clusters to be created            [scalar]
%
% OUTPUT
%
%   clusterIdx      contains the label of the clusters in which nodes belong [M by 1] 
%   EigVecs         a matrix with the k smallest eigenvectors                [n by k]   
%
% DESCRIPTION
%
% myNCuts takes as input an affinity matrix and generates the
% non-normalized Laplacean matrix L. It calculates the k smallest
% eigenvalues and eigenvectors by solving the generalized eigenvalue system
% L*x=lamda*D*x.Equivalently we solve the [D^-1/2*(D-W)*D^-1/2 ]*x
% =lambda*x. Using the eigenvectors and k-means algorithm the function
% generates the clusterIdx vector with the labels of clusters
% in which nodes belong.
%

W = anAffinityMat;
D = sum(W,2);   
D = diag(D); % diagonal D the elements of which, are the sums of each row of W.
L = D-W; % non-normalized Laplacean
[EigVecs,EigVals]=eigs((D^-(1/2))*L*(D^-(1/2)),k,'smallestabs'); % equivalent to generalized eigenvalue system problem

clusterIdx=kmeans(EigVecs,k);


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