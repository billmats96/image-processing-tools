%% Demo 3c : Demonstration of Recursive NCuts (complete)
% Clear workspace
clear
close all

%% Load demo data
load('dip_hw_3.mat','d2a','d2b');

rng(1); % for k means control
warning off; % turn off warnings (may arise on eigenvalue computation)

%% Recursive NCuts on image d2a 

affinity1=Image2Graph(d2a);
[Seg, Id, Ncut]= myNCutsRec(affinity1,5,0.51); %thresholds T1:5 T2:0.51
clust_images_d2a=myImClusters(d2a,Seg);

figure(1);
suptitle('Recursive NCuts Clustering (complete) on d2a');
subplot(221); imshow(d2a); title('Original Image'); 
subplot(222); imshow(clust_images_d2a(:,:,:,1)); title('Cluster k=1');
subplot(223); imshow(clust_images_d2a(:,:,:,2)); title('Cluster k=2');
subplot(224); imshow(clust_images_d2a(:,:,:,3)); title('Cluster k=3');

%% Recursive NCuts on image d2b 

affinity2=Image2Graph(d2b);
[Seg, Id, Ncut]= myNCutsRec(affinity2,5,0.80); % thresholds T1:5 T2:0.80
clust_images_d2b=myImClusters(d2b,Seg);

figure(2);
suptitle('Recursive NCuts Clustering (complete) on d2b');
subplot(221); imshow(d2b); title('Original Image'); 
subplot(222); imshow(clust_images_d2b(:,:,:,1)); title('Cluster k=1');
subplot(223); imshow(clust_images_d2b(:,:,:,2)); title('Cluster k=2');
subplot(224); imshow(clust_images_d2b(:,:,:,3)); title('Cluster k=3');


%% Compare Clustering Methods 
%% Recursive NCuts VS Spectral Clustering on image d2a 
rng(1);
labels2a_S=mySpectralClustering(affinity1,2); 
labels3a_S=mySpectralClustering(affinity1,3);

Seg2_d2a_S=myLabels2Seg(d2a,labels2a_S,2); 
clust_images2_d2a_S=myImClusters(d2a,Seg2_d2a_S); 

Seg3_d2a_S=myLabels2Seg(d2a,labels3a_S,3);
clust_images3_d2a_S=myImClusters(d2a,Seg3_d2a_S);

figure(3)
g=suptitle('Recursive NCuts(complete) VS Spectral Clustering(k=2) on d2a');
set(g,'FontSize',12,'FontWeight','normal');
subplot(241); imshow(d2a); title('Original Image'); 
subplot(242); imshow(clust_images_d2a(:,:,:,1)); title('Cluster k=1 (NCuts)');
subplot(243); imshow(clust_images_d2a(:,:,:,2)); title('Cluster k=2 (NCuts)');
subplot(244); imshow(clust_images_d2a(:,:,:,3)); title('Cluster k=3 (NCuts)');
subplot(246); imshow(clust_images2_d2a_S(:,:,:,1)); title('Cluster k=1 (Spectral)');
subplot(247); imshow(clust_images2_d2a_S(:,:,:,2)); title('Cluster k=2 (Spectral)');


figure(4) 
g=suptitle('Recursive NCuts(complete) VS Spectral Clustering(k=3) on d2a');
set(g,'FontSize',12,'FontWeight','normal');
subplot(241); imshow(d2a); title('Original Image'); 
subplot(242); imshow(clust_images_d2a(:,:,:,1)); title('Cluster k=1 (NCuts)');
subplot(243); imshow(clust_images_d2a(:,:,:,2)); title('Cluster k=2 (NCuts)');
subplot(244); imshow(clust_images_d2a(:,:,:,3)); title('Cluster k=3 (NCuts)');
subplot(246); imshow(clust_images3_d2a_S(:,:,:,1)); title('Cluster k=1 (Spectral)');
subplot(247); imshow(clust_images3_d2a_S(:,:,:,2)); title('Cluster k=2 (Spectral)');
subplot(248); imshow(clust_images3_d2a_S(:,:,:,3)); title('Cluster k=3 (Spectral)');


%% Recursive NCuts vs Spectral Clustering on image d2b
labels2b_S=mySpectralClustering(affinity2,2);
labels3b_S=mySpectralClustering(affinity2,3);
 
Seg2_d2b_S=myLabels2Seg(d2b,labels2b_S,2);
clust_images2_d2b_S=myImClusters(d2b,Seg2_d2b_S);

Seg3_d2b_S=myLabels2Seg(d2b,labels3b_S,3);
clust_images3_d2b_S=myImClusters(d2b,Seg3_d2b_S);


figure(5)
g=suptitle('Recursive NCuts(complete) VS Spectral Clustering(k=2) on d2b');
set(g,'FontSize',12,'FontWeight','normal');
subplot(241); imshow(d2b); title('Original Image'); 
subplot(242); imshow(clust_images_d2b(:,:,:,1)); title('Cluster k=1 (NCuts)');
subplot(243); imshow(clust_images_d2b(:,:,:,2)); title('Cluster k=2 (NCuts)');
subplot(244); imshow(clust_images_d2b(:,:,:,3)); title('Cluster k=3 (NCuts)');
subplot(246); imshow(clust_images2_d2b_S(:,:,:,1)); title('Cluster k=1 (Spectral)');
subplot(247); imshow(clust_images2_d2b_S(:,:,:,2)); title('Cluster k=2 (Spectral)');


figure(6) 
g=suptitle('Recursive NCuts(complete) VS Spectral Clustering(k=3) on d2b');
set(g,'FontSize',12,'FontWeight','normal');
subplot(241); imshow(d2b); title('Original Image'); 
subplot(242); imshow(clust_images_d2b(:,:,:,1)); title('Cluster k=1 (NCuts)');
subplot(243); imshow(clust_images_d2b(:,:,:,2)); title('Cluster k=2 (NCuts)');
subplot(244); imshow(clust_images_d2b(:,:,:,3)); title('Cluster k=3 (NCuts)');
subplot(246); imshow(clust_images3_d2b_S(:,:,:,1)); title('Cluster k=1 (Spectral)');
subplot(247); imshow(clust_images3_d2b_S(:,:,:,2)); title('Cluster k=2 (Spectral)');
subplot(248); imshow(clust_images3_d2b_S(:,:,:,3)); title('Cluster k=3 (Spectral)');


%% Recursive NCuts VS Non Recursive on Image d2a

labels2a_NR=myNCuts(affinity1,2); 
labels3a_NR=myNCuts(affinity1,3);

Seg2_d2a_NR=myLabels2Seg(d2a,labels2a_NR,2); 
clust_images2_d2a_NR=myImClusters(d2a,Seg2_d2a_NR); 

Seg3_d2a_NR=myLabels2Seg(d2a,labels3a_NR,3);
clust_images3_d2a_NR=myImClusters(d2a,Seg3_d2a_NR);


figure(7)
g=suptitle('Recursive NCuts(complete) VS Non Recursive(k=2) on d2a');
set(g,'FontSize',12,'FontWeight','normal');
subplot(241); imshow(d2a); title('Original Image'); 
subplot(242); imshow(clust_images_d2a(:,:,:,1)); title('Cluster k=1 (NCuts)');
subplot(243); imshow(clust_images_d2a(:,:,:,2)); title('Cluster k=2 (NCuts)');
subplot(244); imshow(clust_images_d2a(:,:,:,3)); title('Cluster k=3 (NCuts)');
subplot(246); imshow(clust_images2_d2a_NR(:,:,:,1)); title('Cluster k=1 (Non-Rec NCuts)');
subplot(247); imshow(clust_images2_d2a_NR(:,:,:,2)); title('Cluster k=2 (Non-Rec NCuts)');


figure(8) 
g=suptitle('Recursive NCuts(complete) VS Non Recursive(k=3) on d2a');
set(g,'FontSize',12,'FontWeight','normal');
subplot(241); imshow(d2a); title('Original Image'); 
subplot(242); imshow(clust_images_d2a(:,:,:,1)); title('Cluster k=1 (NCuts)');
subplot(243); imshow(clust_images_d2a(:,:,:,2)); title('Cluster k=2 (NCuts)');
subplot(244); imshow(clust_images_d2a(:,:,:,3)); title('Cluster k=3 (NCuts)');
subplot(246); imshow(clust_images3_d2a_NR(:,:,:,1)); title('Cluster k=1 (Non-Rec NCuts)');
subplot(247); imshow(clust_images3_d2a_NR(:,:,:,2)); title('Cluster k=2 (Non-Rec NCuts)');
subplot(248); imshow(clust_images3_d2a_NR(:,:,:,3)); title('Cluster k=3 (Non-Rec NCuts)');

%% Recursive NCuts VS Non Recursive on Image d2b
labels2b_NR=myNCuts(affinity2,2); 
labels3b_NR=myNCuts(affinity2,3);

Seg2_d2b_NR=myLabels2Seg(d2b,labels2b_NR,2); 
clust_images2_d2b_NR=myImClusters(d2b,Seg2_d2b_NR); 

Seg3_d2b_NR=myLabels2Seg(d2b,labels3b_NR,3);
clust_images3_d2b_NR=myImClusters(d2b,Seg3_d2b_NR);

figure(9)
g=suptitle('Recursive NCuts(complete) VS Non Recursive(k=2) on d2b');
set(g,'FontSize',12,'FontWeight','normal');
subplot(241); imshow(d2b); title('Original Image'); 
subplot(242); imshow(clust_images_d2b(:,:,:,1)); title('Cluster k=1 (NCuts)');
subplot(243); imshow(clust_images_d2b(:,:,:,2)); title('Cluster k=2 (NCuts)');
subplot(244); imshow(clust_images_d2b(:,:,:,3)); title('Cluster k=3 (NCuts)');
subplot(246); imshow(clust_images2_d2b_NR(:,:,:,1)); title('Cluster k=1 (Non-Rec NCuts)');
subplot(247); imshow(clust_images2_d2b_NR(:,:,:,2)); title('Cluster k=2 (Non-Rec NCuts)');


figure(10) 
g=suptitle('Recursive NCuts(complete) VS Non Recursive(k=3) d2b');
set(g,'FontSize',12,'FontWeight','normal');
subplot(241); imshow(d2b); title('Original Image'); 
subplot(242); imshow(clust_images_d2b(:,:,:,1)); title('Cluster k=1 (NCuts)');
subplot(243); imshow(clust_images_d2b(:,:,:,2)); title('Cluster k=2 (NCuts)');
subplot(244); imshow(clust_images_d2b(:,:,:,3)); title('Cluster k=3 (NCuts)');
subplot(246); imshow(clust_images3_d2b_NR(:,:,:,1)); title('Cluster k=1 (Non-Rec NCuts)');
subplot(247); imshow(clust_images3_d2b_NR(:,:,:,2)); title('Cluster k=2 (Non-Rec NCuts)');
subplot(248); imshow(clust_images3_d2b_NR(:,:,:,3)); title('Cluster k=3 (Non-Rec NCuts)');

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