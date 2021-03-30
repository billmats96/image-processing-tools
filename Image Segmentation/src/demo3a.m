%% Demo 3a : Demonstration of Non-Recursive NCuts

% Clear workspace
clear
close all

%% Load demo data
load('dip_hw_3.mat','d2a','d2b');

rng(1); % for k means control
warning off; % turn off warnings (may arise on eigenvalue computation)

%% Non-Recursive NCuts on image d2a 

affinity1=Image2Graph(d2a);

labels2a=myNCuts(affinity1,2); 
labels3a=myNCuts(affinity1,3);
labels4a=myNCuts(affinity1,4);


Seg2_d2a=myLabels2Seg(d2a,labels2a,2); 
clust_images2_d2a=myImClusters(d2a,Seg2_d2a); 

Seg3_d2a=myLabels2Seg(d2a,labels3a,3);
clust_images3_d2a=myImClusters(d2a,Seg3_d2a);

Seg4_d2a=myLabels2Seg(d2a,labels4a,4);
clust_images4_d2a=myImClusters(d2a,Seg4_d2a);


figure(1) 
g=suptitle('Non-Recursive NCuts Clustering(k=2) on d2a');
set(g,'FontSize',12,'FontWeight','normal');
subplot(131); imshow(d2a); title('Original Image'); 
subplot(132); imshow(clust_images2_d2a(:,:,:,1)); title('Cluster k=1');
subplot(133); imshow(clust_images2_d2a(:,:,:,2)); title('Cluster k=2');

figure(2) 
g=suptitle('Non-Recursive NCuts Clustering(k=3) on d2a');
set(g,'FontSize',12,'FontWeight','normal');
subplot(221); imshow(d2a); title('Original Image'); 
subplot(222); imshow(clust_images3_d2a(:,:,:,1)); title('Cluster k=1');
subplot(223); imshow(clust_images3_d2a(:,:,:,2)); title('Cluster k=2');
subplot(224); imshow(clust_images3_d2a(:,:,:,3)); title('Cluster k=3');

figure(3) 
g=suptitle('Non-Recursive NCuts Clustering(k=4) on d2a');
set(g,'FontSize',12,'FontWeight','normal');
subplot(231); imshow(d2a); title('Original Image'); 
subplot(232); imshow(clust_images4_d2a(:,:,:,1)); title('Cluster k=1');
subplot(233); imshow(clust_images4_d2a(:,:,:,2)); title('Cluster k=2');
subplot(234); imshow(clust_images4_d2a(:,:,:,3)); title('Cluster k=3');
subplot(235); imshow(clust_images4_d2a(:,:,:,4)); title('Cluster k=4');

% affinity1=Image2Graph(d2a);
% labels1a=myNCuts(affinity1,2); 
% labels2a=myNCuts(affinity1,3);
% labels3a=myNCuts(affinity1,4);
% 
% figure(1)
% g=suptitle('Non-Recursive NCuts on d2a');
% set(g,'FontSize',12,'FontWeight','normal');
% 
% subplot(2,2,1);
% imshow(d2a,[]);
% title('Original Image');
% 
% matrix2D1 = reshape(labels1a, [50 50]);
% matrix2D1 = rot90(matrix2D1,1);
% matrix2D1=flipud(matrix2D1);
% subplot(2,2,2);
% imshow(matrix2D1,[]);
% title('k=2 Clusters');
% 
% 
% matrix2D2 = reshape(labels2a, [50 50]);
% matrix2D2 = rot90(matrix2D2,1);
% matrix2D2=flipud(matrix2D2);
% subplot(2,2,3);
% imshow(matrix2D2,[]);
% title('k=3 Clusters');
% 
% 
% matrix2D3 = reshape(labels3a, [50 50]);
% matrix2D3 = rot90(matrix2D3,1);
% matrix2D3=flipud(matrix2D3);
% subplot(2,2,4);
% imshow(matrix2D3,[]);
% title('k=4 Clusters');


%% Non-Recursive NCuts on image d2b 

affinity2=Image2Graph(d2b);

labels2b=myNCuts(affinity2,2);
labels3b=myNCuts(affinity2,3);
labels4b=myNCuts(affinity2,4);
 
Seg2_d2b=myLabels2Seg(d2b,labels2b,2);
clust_images2_d2b=myImClusters(d2b,Seg2_d2b);

Seg3_d2b=myLabels2Seg(d2b,labels3b,3);
clust_images3_d2b=myImClusters(d2b,Seg3_d2b);

Seg4_d2b=myLabels2Seg(d2b,labels4b,4);
clust_images4_d2b=myImClusters(d2b,Seg4_d2b);


figure(4) 
g=suptitle('Non-Recursive NCuts Clustering(k=2) on d2b');
set(g,'FontSize',12,'FontWeight','normal');
subplot(131); imshow(d2b); title('Original Image'); 
subplot(132); imshow(clust_images2_d2b(:,:,:,1)); title('Cluster k=1');
subplot(133); imshow(clust_images2_d2b(:,:,:,2)); title('Cluster k=2');

figure(5) 
g=suptitle('Non-Recursive NCuts Clustering(k=3) on d2b');
set(g,'FontSize',12,'FontWeight','normal');
subplot(221); imshow(d2b); title('Original Image'); 
subplot(222); imshow(clust_images3_d2b(:,:,:,1)); title('Cluster k=1');
subplot(223); imshow(clust_images3_d2b(:,:,:,2)); title('Cluster k=2');
subplot(224); imshow(clust_images3_d2b(:,:,:,3)); title('Cluster k=3');

figure(6) 
g=suptitle('Non-Recursive NCuts Clustering(k=4) on d2b');
set(g,'FontSize',12,'FontWeight','normal');
subplot(231); imshow(d2b); title('Original Image'); 
subplot(232); imshow(clust_images4_d2b(:,:,:,1)); title('Cluster k=1');
subplot(233); imshow(clust_images4_d2b(:,:,:,2)); title('Cluster k=2');
subplot(234); imshow(clust_images4_d2b(:,:,:,3)); title('Cluster k=3');
subplot(235); imshow(clust_images4_d2b(:,:,:,4)); title('Cluster k=4');


%% Compare Clustering Methods 
%% Non-Recursive NCuts VS Spectral Clustering on image d2a 

labels2a_S=mySpectralClustering(affinity1,2); 
labels3a_S=mySpectralClustering(affinity1,3);
labels4a_S=mySpectralClustering(affinity1,4);


Seg2_d2a_S=myLabels2Seg(d2a,labels2a_S,2); 
clust_images2_d2a_S=myImClusters(d2a,Seg2_d2a_S); 

Seg3_d2a_S=myLabels2Seg(d2a,labels3a_S,3);
clust_images3_d2a_S=myImClusters(d2a,Seg3_d2a_S);

Seg4_d2a_S=myLabels2Seg(d2a,labels4a_S,4);
clust_images4_d2a_S=myImClusters(d2a,Seg4_d2a_S);

figure(7) 
g=suptitle('Non-Recursive NCuts VS Spectral Clustering(k=2) on d2a');
set(g,'FontSize',12,'FontWeight','normal');
subplot(231); imshow(d2a); title('Original Image'); 
subplot(232); imshow(clust_images2_d2a(:,:,:,1)); title('Cluster k=1 (NCuts)');
subplot(233); imshow(clust_images2_d2a(:,:,:,2)); title('Cluster k=2 (NCuts)');
subplot(235); imshow(clust_images2_d2a_S(:,:,:,1)); title('Cluster k=1 (Spectral)');
subplot(236); imshow(clust_images2_d2a_S(:,:,:,2)); title('Cluster k=2 (Spectral)');


figure(8) 
g=suptitle('Non-Recursive NCuts VS Spectral Clustering Clustering(k=3) on d2a');
set(g,'FontSize',12,'FontWeight','normal');
subplot(241); imshow(d2a); title('Original Image'); 
subplot(242); imshow(clust_images3_d2a(:,:,:,1)); title('Cluster k=1 (NCuts)');
subplot(243); imshow(clust_images3_d2a(:,:,:,2)); title('Cluster k=2 (NCuts)');
subplot(244); imshow(clust_images3_d2a(:,:,:,3)); title('Cluster k=3 (NCuts)');
subplot(246); imshow(clust_images3_d2a_S(:,:,:,1)); title('Cluster k=1 (Spectral)');
subplot(247); imshow(clust_images3_d2a_S(:,:,:,2)); title('Cluster k=2 (Spectral)');
subplot(248); imshow(clust_images3_d2a_S(:,:,:,3)); title('Cluster k=3 (Spectral)');

figure(9) 
g=suptitle('Non-Recursive NCuts VS Spectral Clustering Clustering(k=4) on d2a');
set(g,'FontSize',12,'FontWeight','normal');
subplot(251); imshow(d2a); title('Original Image'); 
subplot(252); imshow(clust_images4_d2a(:,:,:,1)); title('Cluster k=1 (NCuts)');
subplot(253); imshow(clust_images4_d2a(:,:,:,2)); title('Cluster k=2 (NCuts)');
subplot(254); imshow(clust_images4_d2a(:,:,:,3)); title('Cluster k=3 (NCuts)');
subplot(255); imshow(clust_images4_d2a(:,:,:,4)); title('Cluster k=4 (NCuts)');
subplot(257); imshow(clust_images4_d2a_S(:,:,:,1)); title('Cluster k=1 (Spectral)');
subplot(258); imshow(clust_images4_d2a_S(:,:,:,2)); title('Cluster k=2 (Spectral)');
subplot(259); imshow(clust_images4_d2a_S(:,:,:,3)); title('Cluster k=3 (Spectral)');
subplot(2,5,10); imshow(clust_images4_d2a_S(:,:,:,4)); title('Cluster k=4 (Spectral)');

%% Non-Recursive NCuts VS Spectral Clustering on image d2b 
labels2b_S=mySpectralClustering(affinity2,2);
labels3b_S=mySpectralClustering(affinity2,3);
labels4b_S=mySpectralClustering(affinity2,4);
 
Seg2_d2b_S=myLabels2Seg(d2b,labels2b_S,2);
clust_images2_d2b_S=myImClusters(d2b,Seg2_d2b_S);

Seg3_d2b_S=myLabels2Seg(d2b,labels3b_S,3);
clust_images3_d2b_S=myImClusters(d2b,Seg3_d2b_S);

Seg4_d2b_S=myLabels2Seg(d2b,labels4b_S,4);
clust_images4_d2b_S=myImClusters(d2b,Seg4_d2b_S);


figure(10) 
g=suptitle('Non-Recursive NCuts VS Spectral Clustering(k=2) on d2b');
set(g,'FontSize',12,'FontWeight','normal');
subplot(231); imshow(d2b); title('Original Image'); 
subplot(232); imshow(clust_images2_d2b(:,:,:,1)); title('Cluster k=1 (NCuts)');
subplot(233); imshow(clust_images2_d2b(:,:,:,2)); title('Cluster k=2 (NCuts)');
subplot(235); imshow(clust_images2_d2b_S(:,:,:,1)); title('Cluster k=1 (Spectral)');
subplot(236); imshow(clust_images2_d2b_S(:,:,:,2)); title('Cluster k=2 (Spectral)');


figure(11) 
g=suptitle('Non-Recursive NCuts VS Spectral Clustering Clustering(k=3) on d2a');
set(g,'FontSize',12,'FontWeight','normal');
subplot(241); imshow(d2b); title('Original Image'); 
subplot(242); imshow(clust_images3_d2b(:,:,:,1)); title('Cluster k=1 (NCuts)');
subplot(243); imshow(clust_images3_d2b(:,:,:,2)); title('Cluster k=2 (NCuts)');
subplot(244); imshow(clust_images3_d2b(:,:,:,3)); title('Cluster k=3 (NCuts)');
subplot(246); imshow(clust_images3_d2b_S(:,:,:,1)); title('Cluster k=1 (Spectral)');
subplot(247); imshow(clust_images3_d2b_S(:,:,:,2)); title('Cluster k=2 (Spectral)');
subplot(248); imshow(clust_images3_d2b_S(:,:,:,3)); title('Cluster k=3 (Spectral)');

figure(12) 
g=suptitle('Non-Recursive NCuts VS Spectral Clustering Clustering(k=4) on d2a');
set(g,'FontSize',12,'FontWeight','normal');
subplot(251); imshow(d2b); title('Original Image'); 
subplot(252); imshow(clust_images4_d2b(:,:,:,1)); title('Cluster k=1 (NCuts)');
subplot(253); imshow(clust_images4_d2b(:,:,:,2)); title('Cluster k=2 (NCuts)');
subplot(254); imshow(clust_images4_d2b(:,:,:,3)); title('Cluster k=3 (NCuts)');
subplot(255); imshow(clust_images4_d2b(:,:,:,4)); title('Cluster k=4 (NCuts)');
subplot(257); imshow(clust_images4_d2b_S(:,:,:,1)); title('Cluster k=1 (Spectral)');
subplot(258); imshow(clust_images4_d2b_S(:,:,:,2)); title('Cluster k=2 (Spectral)');
subplot(259); imshow(clust_images4_d2b_S(:,:,:,3)); title('Cluster k=3 (Spectral)');
subplot(2,5,10); imshow(clust_images4_d2b_S(:,:,:,4)); title('Cluster k=4 (Spectral)');


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
