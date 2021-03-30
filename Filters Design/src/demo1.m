%% Demo1 - Presentation of myFiltFreq

% Clear workspace
clear
close all

%% Load demo data

load ('dip_hw_2.mat','demo1Im','someFreqFilt');

%% Filter Application

imOut = myFiltFreq(demo1Im, someFreqFilt); 
figure('name','demo1Im and someFreqFilt');
g=suptitle('someFreqFilt filter applied on demo1Im image');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,2,1);
imshow(demo1Im); 
title('Original Image');
subplot(1,2,2);
imshow(imOut); 
title('Filtered Image');

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