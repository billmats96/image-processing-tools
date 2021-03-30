function Seg=myLabels2Seg(I,labels,k)
%myLabels2Seg -  Groups pixels into segments, given the vector with labels and
%                the number of clusters k.
%
% SYNTAX
%
%   Seg=myLabels2Seg(I,labels,k)
%   
% INPUT
%
%   I           input image I                                            [M by N by n]                               
%   labels      contains the label of the clusters in which nodes belong [M by 1]  
%   k           the number of clusters                                   [scalar]
%
% OUTPUT
%
%   Seg   a cell vector containing vectors with pixels of each cluster [1 by k]   
%
% DESCRIPTION
%
% myLabels2Seg takes as input an image I, a vector with the label of the
% clusters in which nodes (pixels) belong and creates a cell vector with k
% elements that represent the clusters(segments of pixels) of image I.
%

[M,N,~]=size(I); % extract image's dimensions to know the total number of pixels.

S=(1:M*N)'; % the initial segment with all the pixels 
Seg = cell(1,k);

for i=1:k % create k clusters (segments)
  A=find(labels==i); 
  Seg{1,i}=S(A); % group together pixels that have the same label in cluster i
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