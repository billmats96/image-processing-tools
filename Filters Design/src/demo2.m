%% Demo2 - Presentation of LowPass,HighPass,BandPass Filters : Ideal, Butterworth & Gauss

% Clear workspace
clear
close all

%% Load demo data

load ('dip_hw_2.mat','demo2Im1','demo2Im2');


%% Filter Apllication #1 : Ideal LowPass on demo2Im1 & demo2Im2
h1=myLowPassIdeal(50,500);
imOut1a=myFiltFreq(demo2Im1,h1);
imOut1b=myFiltFreq(demo2Im2,h1);

figure(1);
g=suptitle('Ideal Low Pass filter applied on demo2Im1 image');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,2,1);
imshow(demo2Im1);
title('Original Image');
subplot(1,2,2);
imshow(imOut1a);
title('Filtered Image');

figure(2);
g=suptitle('Ideal Low Pass filter applied on demo2Im2 image');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,2,1);
imshow(demo2Im2);
title('Original Image');
subplot(1,2,2);
imshow(imOut1b);
title('Filtered Image');

figure(3); 
mesh(h1);
title('Ideal Low Pass Filter');

%% Filter Apllication #2 : Butterworth LowPass on demo2Im1 & demo2Im2
h2=myLowPassButterworth(50,5,500);
imOut2a=myFiltFreq(demo2Im1,h2);
imOut2b=myFiltFreq(demo2Im2,h2);

figure(4);
g=suptitle('Butterworth Low Pass filter applied on demo2Im1 image');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,2,1);
imshow(demo2Im1);
title('Original Image');
subplot(1,2,2);
imshow(imOut2a);
title('Filtered Image');

figure(5);
g=suptitle('Butterworth Low Pass filter applied on demo2Im2 image');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,2,1);
imshow(demo2Im2);
title('Original Image');
subplot(1,2,2);
imshow(imOut2b);
title('Filtered Image');

figure(6); 
mesh(h2);
title('Butterworth Low Pass filter');

%% Filter Apllication #3 : Gauss LowPass on demo2Im1 & demo2Im2
h3=myLowPassGauss(50,500);
imOut3a=myFiltFreq(demo2Im1,h3);
imOut3b=myFiltFreq(demo2Im2,h3);

figure(7);
g=suptitle('Gauss Low Pass filter applied on demo2Im1 image');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,2,1);
imshow(demo2Im1);
title('Original Image');
subplot(1,2,2);
imshow(imOut3a);
title('Filtered Image');

figure(8);
g=suptitle('Gauss Low Pass filter applied on demo2Im2 image');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,2,1);
imshow(demo2Im2);
title('Original Image');
subplot(1,2,2);
imshow(imOut3b);
title('Filtered Image');

figure(9); 
mesh(h3);
title('Gauss Low Pass filter');

%% Filter Apllication #4 : Ideal HighPass on demo2Im1 & demo2Im2
h4=myHighPassIdeal(150,500);
imOut4a=myFiltFreq(demo2Im1,h4);
imOut4b=myFiltFreq(demo2Im2,h4);

figure(10);
g=suptitle('Ideal High Pass filter applied on demo2Im1 image');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,2,1);
imshow(demo2Im1);
title('Original Image');
subplot(1,2,2);
imshow(imOut4a);
title('Filtered Image');

figure(11);
g=suptitle('Ideal High Pass filter applied on demo2Im2 image');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,2,1);
imshow(demo2Im2);
title('Original Image');
subplot(1,2,2);
imshow(imOut4b);
title('Filtered Image');

figure(12); 
mesh(h4);
title('Ideal High Pass filter');

%% Filter Apllication #5 : Butterworth High Pass on demo2Im1 & demo2Im2
h5=myHighPassButterworth(150,5,500);
imOut5a=myFiltFreq(demo2Im1,h5);
imOut5b=myFiltFreq(demo2Im2,h5);

figure(13);
g=suptitle('Butterworth High Pass filter applied on demo2Im1 image');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,2,1);
imshow(demo2Im1);
title('Original Image');
subplot(1,2,2);
imshow(imOut5a);
title('Filtered Image');

figure(14);
g=suptitle('Butterworth High Pass filter applied on demo2Im2 image');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,2,1);
imshow(demo2Im2);
title('Original Image');
subplot(1,2,2);
imshow(imOut5b);
title('Filtered Image');

figure(15); 
mesh(h5);
title('Butterworth High Pass filter');

%% Filter Apllication #6 : Gauss HighPass on demo2Im1 & demo2Im2
h6=myHighPassGauss(150,500);
imOut6a=myFiltFreq(demo2Im1,h6);
imOut6b=myFiltFreq(demo2Im2,h6);

figure(16);
g=suptitle('Gauss High Pass filter applied on demo2Im1 image');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,2,1);
imshow(demo2Im1);
title('Original Image');
subplot(1,2,2);
imshow(imOut6a);
title('Filtered Image');

figure(17);
g=suptitle('Gauss High Pass filter applied on demo2Im2 image');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,2,1);
imshow(demo2Im2);
title('Original Image');
subplot(1,2,2);
imshow(imOut6b);
title('Filtered Image');

figure(18); 
mesh(h6);
title('Gauss High Pass filter');

%% Filter Apllication #7 : Ideal BandPass on demo2Im1 & demo2Im2
h7=myBandPassIdeal(50,150,500);
imOut7a=myFiltFreq(demo2Im1,h7);
imOut7b=myFiltFreq(demo2Im2,h7);

figure(19);
g=suptitle('Ideal Band Pass filter applied on demo2Im1 image');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,2,1);
imshow(demo2Im1);
title('Original Image');
subplot(1,2,2);
imshow(imOut7a);
title('Filtered Image');

figure(20);
g=suptitle('Ideal Band Pass filter applied on demo2Im2 image');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,2,1);
imshow(demo2Im2);
title('Original Image');
subplot(1,2,2);
imshow(imOut7b);
title('Filtered Image');

figure(21); 
mesh(h7);
title('Ideal Band Pass filter');

%% Filter Apllication #8 : Butterworth BandPass on demo2Im1 & demo2Im2
h8=myBandPassButterworth(50,150,5,500);
imOut8a=myFiltFreq(demo2Im1,h8);
imOut8b=myFiltFreq(demo2Im2,h8);

figure(22);
g=suptitle('Butterworth Band Pass filter applied on demo2Im1 image');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,2,1);
imshow(demo2Im1);
title('Original Image');
subplot(1,2,2);
imshow(imOut8a);
title('Filtered Image');

figure(23);
g=suptitle('Butterworth Band Pass filter applied on demo2Im2 image');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,2,1);
imshow(demo2Im2);
title('Original Image');
subplot(1,2,2);
imshow(imOut8b);
title('Filtered Image');

figure(24); 
mesh(h8);
title('Butterworth Band Pass filter');

%% Filter Apllication #9 : Gauss BandPass on demo2Im1 & demo2Im2
h9=myBandPassGauss(50,150,500);
imOut9a=myFiltFreq(demo2Im1,h9);
imOut9b=myFiltFreq(demo2Im2,h9);

figure(25);
g=suptitle('Gauss Band Pass filter applied on demo2Im1 image');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,2,1);
imshow(demo2Im1);
title('Original Image');
subplot(1,2,2);
imshow(imOut9a);
title('Filtered Image');

figure(26);
g=suptitle('Gauss Band Pass filter applied on demo2Im2 image');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,2,1);
imshow(demo2Im2);
title('Original Image');
subplot(1,2,2);
imshow(imOut9b);
title('Filtered Image');

figure(27); 
mesh(h9);
title('Gauss Band Pass filter');

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