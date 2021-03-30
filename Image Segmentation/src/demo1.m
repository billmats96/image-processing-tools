%% Demo Script 1 : Demonstration of mySpectralClustering

% Clear workspace
clear 
close all

%% Load demo data
load('dip_hw_3.mat','d1a');

rng(1); % for k-means control

labels2=mySpectralClustering(d1a,2);
labels3=mySpectralClustering(d1a,3);
labels4=mySpectralClustering(d1a,4);

figure(1)
suptitle('Spectral Clustering on d1a - Labels'); 

subplot(1,3,1);
plot(labels2);
ylim([0.5 2.5]);
xlabel('k=2 clusters');
grid on 
grid minor

subplot(1,3,2);
plot(labels3);
ylim([0.5 3.5]);
xlabel('k=3 clusters');
grid on 
grid minor

subplot(1,3,3);
plot(labels4);
ylim([0.5 4.5]);
xlabel('k=4 clusters');
grid on 
grid minor


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

