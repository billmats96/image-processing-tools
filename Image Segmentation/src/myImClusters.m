function cluster_images = myImClusters(I,Seg)
%myImClusters -  Generates the images of the clusters of image I
%
% SYNTAX
%
%   cluster_images = myImClusters(I,Seg)
%   
% INPUT
%
%   I               input image I                                                [M by N by n]                               
%   Seg             a cell vector containing vectors with pixels of each cluster [1 by number of clusters]  
%
% OUTPUT
%
%   cluster_images  images that represent the clusters of image I                [M by N by n by number of clusters]
%
% DESCRIPTION
%
% myImClusters takes as input an image I and a cell vector Seg that
% contains the pixels of each cluster. The function generates and returns
% the images that represent these clusters.
% 
%

I=rot90(I,-1); %a rotation and a flip necessary to process the image correctly 
I=fliplr(I);

[M,N,c]=size(I); % extract image's dimensions            
dim=M*N;
V=reshape(I, dim, c); % a reshaped array with each row representing the pixel i of image I

nClust=length(Seg); % number of clusters
cluster_images=zeros([size(I) nClust],'double'); % hold an image for each cluster. initialize to "black" (zero)

for k=1:nClust
    [r, c]=ind2sub(size(I),Seg{k}); % extract the row and the column (==pixel id) of each pixel contained in Seg{k}
    for i=1:length(r)
        cluster_images(r(i),c(i),:,k)=V(Seg{k}(i),:); % fill in the correct pixels in cluster image
    end
end


for i=1:nClust 
    cluster_images(:,:,:,i)=rot90(cluster_images(:,:,:,i),-1); % necessary rotation and flip for correct output
    cluster_images(:,:,:,i)=fliplr(cluster_images(:,:,:,i));
end


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