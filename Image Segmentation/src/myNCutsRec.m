function [Seg, Id, Ncut]= myNCutsRec(anAffinityMat,T1,T2)
%myNCutsRec - Segments the input graph in a number of clusters with recursive  
%             normalized cuts method according to thresholds T1,T2.It returns 
%             a cell vector the elements of which are the pixels of each cluster, 
%             an Id with the binary tree structure of segmentation, and the
%             leaves' values of ncut of binary tree to ensure that the process
%             ended up correctly.
% SYNTAX
%
%   [Seg, Id, Ncut]= myNCutsRec(anAffinityMat,T1,T2)
%   
% INPUT
%
%   anAffinityMat   square and symmetric matrix that describes the graph     [M by M]   
%   T1              threshold 1: minimum number of nodes in a graph          [scalar]
%   T2              threshold 2: maximum value of ncut                       [scalar]
%
%
% OUTPUT
%
%   Seg             a cell vector containing vectors with pixels of each cluster [1 by number of clusters] 
%   Id              an identity of the binary tree that the algorithm constructs [string]                  
%   Ncut            the ncut values of the leaves of the binary tree             [1 by number of clusters] 
%   
%
% DESCRIPTION
%
% myNCutsRec takes as input an affinity matrix and recursively segments its
% nodes into a number of clusters according to thresholds T1,T2. The
% procedure constructs a binary tree by using myNCuts for k=2 clusters. The
% clusters are recursively concatened in variable Seg. The variable Id
% tracks the procedure of binary tree starting by the 'ROOT' and creating
% children 'A' and 'B' each time a partition is made. The partition
% function is myNCutsPartition. The Ncut variable holds the ncut values of
% the leaves of the binary tree to ensure that process ended up correctly.
%
%% Execute 1st partition 
W=anAffinityMat;
N=length(W);
Seg=(1:N)'; %the initial segment-cluster contains all nodes (pixels)                           
id='ROOT';  %the root of the "binary tree" of recursion 

[clusterIdx,U]=myNCuts(W,2); %first partition into two clusters
A=find(clusterIdx==1); %separate nodes (pixels) into two segments based on myNCuts
B=find(clusterIdx==2);
U2=U(:,2); %use the second smallest egeinvector to calcute the minimum cut
ncut = calculateNcut(W,U2); %calculate ncut value

SegA={Seg(A)}; % create the first two clusters
SegB={Seg(B)};

%% Check thresholds to either continue or stop partioning
if  (ncut>T2 || (length(A)<T1 || length(B)<T1)) 
    Seg={SegA{1},SegB{1}};
    Id={id};   
    Ncut={ncut};    
    return;
end

%% Execute Ncuts partition 
% Segments of child node A
[SegA,IdA,NcutA] = myNCutsPartition(Seg(A),W(A,A),T1,T2,[id '-A']);
% Segments of child node B
[SegB,IdB,NcutB] = myNCutsPartition(Seg(B),W(B,B),T1,T2,[id '-B']);

% Concatenate 
Seg=[SegA SegB];
Id=[IdA IdB];
Ncut=[NcutA NcutB];


end