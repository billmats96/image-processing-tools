function [Seg, Id, Ncut] = myNCutsPartition(I, W, T1, T2, id)
% myNCutsPartition - Executes the partition in the recursive version of
%                    normalized ncuts.
% SYNTAX
%
%   [Seg, Id, Ncut] = myNCutsPartition(I, W, T1, T2, id)
%   
% INPUT
%
%   I     the nodes (pixels) of the input graph
%   W     square and symmetric matrix that describes the graph     [M by M]   
%   T1    threshold 1: minimum number of nodes in a graph          [scalar]
%   T2    threshold 2: maximum value of ncut                       [scalar]
%   id    the identity of the input graph in the binary tree       [string]
%
% OUTPUT
%
%   Seg   a cell vector containing vectors with pixels of each cluster [1 by number of clusters] 
%   Id    an identity of the binary tree that the algorithm constructs [string]                  
%   Ncut  the ncut values of the leaves of the binary tree             [1 by number of clusters] 
%   
%
% DESCRIPTION
%
% myNCutsPartition takes as input an affinity matrix (W) and the nodes (I)
% of the affinity matrix and decides to either continue or stop
% partitioning by checking the thresholds T1,T2. The function also takes
% the id of the caller to help visualize the binary tree of the clustering
% procedure.
%
%% Execute Ncuts partition
[clusterIdx,U]=myNCuts(W,2); %use myNCuts for k=2
U2 = U(:, 2); %use the second smallest egeinvector to calcute the minimum cut
A=find(clusterIdx==1); %separate nodes (pixels) into two segments based on myNCuts
B=find(clusterIdx==2);
ncut=calculateNcut(W,U2); %calculate ncut value

%% Check thresholds to either continue or stop partioning
if  (ncut>T2 || (length(A)<T1 || length(B)<T1)) 
    Seg{1} = I;
    Id{1}  = id;         
    Ncut{1}= ncut;       
    return;
end

%% Execute recursive Ncuts partition 
% Segments of child node A
[SegA, IdA, NcutA] = myNCutsPartition(I(A),W(A,A),T1,T2,[id '-A']);
% Segments of child node B
[SegB, IdB, NcutB] = myNCutsPartition(I(B),W(B,B),T1,T2,[id '-B']);

% Concatenate 
Seg=[SegA SegB];
Id=[IdA IdB];
Ncut=[NcutA NcutB];


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