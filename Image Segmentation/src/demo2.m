%% Demo 2 : Demonstration of mySpectralClustering & Image2Graph

% Clear workspace
clear
close all

%% Load demo data
load('dip_hw_3.mat','d2a','d2b');

rng(1); % for k means control


%% Spectral Clustering on image d2a 

affinity1=Image2Graph(d2a);

labels2a=mySpectralClustering(affinity1,2); 
labels3a=mySpectralClustering(affinity1,3);
labels4a=mySpectralClustering(affinity1,4);


Seg2_d2a=myLabels2Seg(d2a,labels2a,2); 
clust_images2_d2a=myImClusters(d2a,Seg2_d2a); 

Seg3_d2a=myLabels2Seg(d2a,labels3a,3);
clust_images3_d2a=myImClusters(d2a,Seg3_d2a);

Seg4_d2a=myLabels2Seg(d2a,labels4a,4);
clust_images4_d2a=myImClusters(d2a,Seg4_d2a);


figure(1) 
g=suptitle('Spectral Clustering on d2a(k=2)');
set(g,'FontSize',12,'FontWeight','normal');
subplot(131); imshow(d2a); title('Original Image'); 
subplot(132); imshow(clust_images2_d2a(:,:,:,1)); title('Cluster k=1');
subplot(133); imshow(clust_images2_d2a(:,:,:,2)); title('Cluster k=2');

figure(2) 
g=suptitle('Spectral Clustering on d2a(k=3)');
set(g,'FontSize',12,'FontWeight','normal');
subplot(221); imshow(d2a); title('Original Image'); 
subplot(222); imshow(clust_images3_d2a(:,:,:,1)); title('Cluster k=1');
subplot(223); imshow(clust_images3_d2a(:,:,:,2)); title('Cluster k=2');
subplot(224); imshow(clust_images3_d2a(:,:,:,3)); title('Cluster k=3');

figure(3) 
g=suptitle('Spectral Clustering on d2a(k=4)');
set(g,'FontSize',12,'FontWeight','normal');
subplot(231); imshow(d2a); title('Original Image'); 
subplot(232); imshow(clust_images4_d2a(:,:,:,1)); title('Cluster k=1');
subplot(233); imshow(clust_images4_d2a(:,:,:,2)); title('Cluster k=2');
subplot(234); imshow(clust_images4_d2a(:,:,:,3)); title('Cluster k=3');
subplot(235); imshow(clust_images4_d2a(:,:,:,4)); title('Cluster k=4');


%% Spectral Clustering on image d2b

affinity2=Image2Graph(d2b);

labels2b=mySpectralClustering(affinity2,2);
labels3b=mySpectralClustering(affinity2,3);
labels4b=mySpectralClustering(affinity2,4);
 
Seg2_d2b=myLabels2Seg(d2b,labels2b,2);
clust_images2_d2b=myImClusters(d2b,Seg2_d2b);

Seg3_d2b=myLabels2Seg(d2b,labels3b,3);
clust_images3_d2b=myImClusters(d2b,Seg3_d2b);

Seg4_d2b=myLabels2Seg(d2b,labels4b,4);
clust_images4_d2b=myImClusters(d2b,Seg4_d2b);


figure(4) 
g=suptitle('Spectral Clustering on d2b(k=2)');
set(g,'FontSize',12,'FontWeight','normal');
subplot(131); imshow(d2b); title('Original Image'); 
subplot(132); imshow(clust_images2_d2b(:,:,:,1)); title('Cluster k=1');
subplot(133); imshow(clust_images2_d2b(:,:,:,2)); title('Cluster k=2');

figure(5) 
g=suptitle('Spectral Clustering on d2b(k=3)');
set(g,'FontSize',12,'FontWeight','normal');
subplot(221); imshow(d2b); title('Original Image'); 
subplot(222); imshow(clust_images3_d2b(:,:,:,1)); title('Cluster k=1');
subplot(223); imshow(clust_images3_d2b(:,:,:,2)); title('Cluster k=2');
subplot(224); imshow(clust_images3_d2b(:,:,:,3)); title('Cluster k=3');

figure(6) 
g=suptitle('Spectral Clustering on d2b(k=4)');
set(g,'FontSize',12,'FontWeight','normal');
subplot(231); imshow(d2b); title('Original Image'); 
subplot(232); imshow(clust_images4_d2b(:,:,:,1)); title('Cluster k=1');
subplot(233); imshow(clust_images4_d2b(:,:,:,2)); title('Cluster k=2');
subplot(234); imshow(clust_images4_d2b(:,:,:,3)); title('Cluster k=3');
subplot(235); imshow(clust_images4_d2b(:,:,:,4)); title('Cluster k=4');



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



