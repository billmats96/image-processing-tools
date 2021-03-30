%% Demo 3b : Demonstration of Recursive NCuts (1 step)

% Clear workspace
clear
close all

%% Load demo data
load('dip_hw_3.mat','d2a','d2b');

rng(1); % for k means control
warning off; % turn off warnings (may arise on eigenvalue computation)

%% Recursive NCuts (1 step) on image d2a 

affinity1=Image2Graph(d2a);

[Seg, Id2a, Ncut2a]= myNCutsRec(affinity1,5,0.50); % T1=5. choose T2=0.5 to force only 1 step
clust_images2_d2a=myImClusters(d2a,Seg);

figure(1);
g=suptitle({'Recursive NCuts Clustering (1 step) on d2a',['Ncut value: ' num2str(cell2mat(Ncut2a))]});
set(g,'FontSize',12,'FontWeight','normal');
subplot(131); imshow(d2a); title('Original Image'); 
subplot(132); imshow(clust_images2_d2a(:,:,:,1)); title('Cluster k=1');
subplot(133); imshow(clust_images2_d2a(:,:,:,2)); title('Cluster k=2');

%% Recursive NCuts (1 step) on image d2b

affinity2=Image2Graph(d2b);

[Seg, Id2b, Ncut2b]= myNCutsRec(affinity2,5,0.7); % T1=5. choose T2=0.7 to force only 1 step
clust_images2_d2b=myImClusters(d2b,Seg);

figure(2);
g=suptitle({'Recursive NCuts Clustering (1 step) on d2b',['Ncut value: ' num2str(cell2mat(Ncut2b))]});
set(g,'FontSize',12,'FontWeight','normal');
subplot(131); imshow(d2b); title('Original Image'); 
subplot(132); imshow(clust_images2_d2b(:,:,:,1)); title('Cluster k=1');
subplot(133); imshow(clust_images2_d2b(:,:,:,2)); title('Cluster k=2');


%% Compare Clustering Methods
%% Recursive NCuts (1 step) VS Spectral Clustering(k=2) on image d2a 

labels2a_S=mySpectralClustering(affinity1,2); 

Seg2_d2a_S=myLabels2Seg(d2a,labels2a_S,2); 
clust_images2_d2a_S=myImClusters(d2a,Seg2_d2a_S); 

figure(3)
g=suptitle('Recursive NCuts(1 step) VS Spectral Clustering(k=2) on d2a');
set(g,'FontSize',12,'FontWeight','normal');
subplot(231); imshow(d2a); title('Original Image'); 
subplot(232); imshow(clust_images2_d2a(:,:,:,1)); title('Cluster k=1 (NCuts)');
subplot(233); imshow(clust_images2_d2a(:,:,:,2)); title('Cluster k=2 (NCuts)');
subplot(235); imshow(clust_images2_d2a_S(:,:,:,1)); title('Cluster k=1 (Spectral)');
subplot(236); imshow(clust_images2_d2a_S(:,:,:,2)); title('Cluster k=2 (Spectral)');

%% Recursive NCuts (1 step) VS Spectral Clustering(k=2) on image d2b 
labels2b_S=mySpectralClustering(affinity2,2);
 
Seg2_d2b_S=myLabels2Seg(d2b,labels2b_S,2);
clust_images2_d2b_S=myImClusters(d2b,Seg2_d2b_S);

figure(4) 
g=suptitle('Recursive NCuts(1 step) VS Spectral Clustering(k=2) on d2b');
set(g,'FontSize',12,'FontWeight','normal');
subplot(231); imshow(d2b); title('Original Image'); 
subplot(232); imshow(clust_images2_d2b(:,:,:,1)); title('Cluster k=1 (NCuts)');
subplot(233); imshow(clust_images2_d2b(:,:,:,2)); title('Cluster k=2 (NCuts)');
subplot(235); imshow(clust_images2_d2b_S(:,:,:,1)); title('Cluster k=1 (Spectral)');
subplot(236); imshow(clust_images2_d2b_S(:,:,:,2)); title('Cluster k=2 (Spectral)');


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