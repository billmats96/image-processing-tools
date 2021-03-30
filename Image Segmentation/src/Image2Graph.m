function myAffinityMat = Image2Graph(imIn)
%Image2Graph - Constructs the affinity matrix that describes the 
%              non-directional graph for image imIn 
%
% SYNTAX
%
%   myAffinityMat = Image2Graph(imIn)
%   
% INPUT
%
%   imIn             multi-channel Input Image             [M by N by n]
%
% OUTPUT
%
%   myAffinityMat    affinity matrix describing the graph  [M*N by M*N] 
%
% DESCRIPTION
%
% Image2Graph takes as input a multi-channel image and calculates the
% affinity matrix that describes the graph. Each pixel is considered to be
% a node of the non-directional graph. For each n-channel pixel i the
% function  calculates the euclidean distance with every other pixel j of
% the image (including i). The affinity matrix is of size M*NxM*N where
% each row i represents the distance of pixel i from every pixel j.
%

[M, N, ~] = size(imIn); % extract image dimensions

myAffinityMat=zeros(M*N,M*N); % initialize affinity matrix

for i=1:M
    for j=1:N
        pixel_const=squeeze(imIn(i,j,:)); % select a constant pixel  
        % compare it with every pixel
        for k=1:M
            for m=1:N
                pixel_temp=squeeze(imIn(k,m,:)); % select a temp pixel to compare with
                F=1/exp(norm(pixel_const-pixel_temp)); % calculate vertice weight
                myAffinityMat((i-1)*N+j,(k-1)*N+m)=F; % store it in the affinity matrix
            end
        end
    end
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