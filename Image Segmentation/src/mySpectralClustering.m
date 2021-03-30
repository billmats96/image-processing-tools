function clusterIdx = mySpectralClustering(anAffinityMat, k)
%mySpectralClustering - Segments the input graph in k clusters with spectral  
%                       clustering method and returns a vector with the labels
%                       of clusters in which nodes belong
%
% SYNTAX
%
%   clusterIdx = mySpectralClustering(anAffinityMat, k)
%   
% INPUT
%
%   anAffinityMat   square and symmetric matrix that describes the graph    [M by M]   
%   k               the number of desired clusters to be created            [scalar]
%
% OUTPUT
%
%   clusterIdx      contains the label of the clusters in which nodes belong [M by 1] 
%
% DESCRIPTION
%
% mySpectralClustering takes as input an affinity matrix and generates the
% non-normalized Laplacean matrix L. It calculates the k smallest
% eigenvalues and eigenvectors of L using eigs. Using the eigenvectors and
% k-means algorithm it generates the clusterIdx vector with the labels of
% clusters in which nodes belong.
%

W = anAffinityMat;
D = sum(W,2);   
D = diag(D); % diagonal D the elements of which, are the sums of each row of W.
L = D-W; % non-normalized Laplacean
[EigVecs,EigVals]=eigs(L,k,'smallestabs');
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