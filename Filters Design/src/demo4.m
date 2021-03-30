%% Demo4 - Presentation of Smooth Directional LowPass,HighPass,BandPass Filters : Ideal, Butterworth & Gauss

% Clear workspace
clear
close all

%% Load demo data

load ('dip_hw_2.mat','demo2Im1','demo2Im2');

%% Filter Apllication #0 : Ideal Directional LowPass on demo2Im1 & demo2Im2
d0=zeros(500,500,6);
D0=zeros(500,500);

for i=1:6
    d0(:,:,i)=myLowPassIdealDirSmooth(200,500,30*(i-1),30,'M',30); 
    D0=D0+d0(:,:,i);
end

h0=myLowPassIdeal(200,500);
D0=myDirCorrect(D0,h0,'L');


imOut0a=real(myFiltFreq(demo2Im1,D0));
imOut0b=myFiltFreq(demo2Im1,h0);
imOut0c=real(myFiltFreq(demo2Im2,D0));
imOut0d=myFiltFreq(demo2Im2,h0);

figure(1);
g=suptitle('Total Smooth Directional vs Original Ideal Low Pass filter applied on demo2Im1 image');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,3,1);
imshow(demo2Im1);
title('Original Image');
subplot(1,3,2);
imshow(imOut0a);
title('Filtered Image - Total Smooth Directional');
subplot(1,3,3);
imshow(imOut0b);
title('Filtered Image - Original'); 

figure(2);
g=suptitle('Total Smooth Directional vs Original Ideal Low Pass filter applied on demo2Im2 image');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,3,1);
imshow(demo2Im2);
title('Original Image');
subplot(1,3,2);
imshow(imOut0c);
title('Filtered Image - Total Smooth Directional');
subplot(1,3,3);
imshow(imOut0d);
title('Filtered Image - Original');

figure(3)
g=suptitle('Total Smooth Directional vs Original Ideal Low Pass filter');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,2,1);
mesh(D0);
title('Total Smooth Directional Filter ');
subplot(1,2,2);
mesh(h0);
title('Original Filter');

%% Filter Apllication #1 : Ideal Directional LowPass on demo2Im1 & demo2Im2
d1=zeros(500,500,6);
D1=zeros(500,500);

for i=1:6
    d1(:,:,i)=myLowPassIdealDirSmooth(50,500,30*(i-1),30,'M',30,5); 
    D1=D1+d1(:,:,i);
end
 
h1=myLowPassIdeal(50,500);
D1=myDirCorrect(D1,h1,'L');

imOut1a=real(myFiltFreq(demo2Im1,D1));
imOut1b=myFiltFreq(demo2Im1,h1);
imOut1c=real(myFiltFreq(demo2Im2,D1));
imOut1d=myFiltFreq(demo2Im2,h1);

figure(4);
g=suptitle('Total Smooth Directional vs Original Ideal Low Pass filter applied on demo2Im1 image');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,3,1);
imshow(demo2Im1);
title('Original Image');
subplot(1,3,2);
imshow(imOut1a);
title('Filtered Image - Total Smooth Directional');
subplot(1,3,3);
imshow(imOut1b);
title('Filtered Image - Original'); 

figure(5);
g=suptitle('Total Smooth Directional vs Original Ideal Low Pass filter applied on demo2Im2 image');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,3,1);
imshow(demo2Im2);
title('Original Image');
subplot(1,3,2);
imshow(imOut1c);
title('Filtered Image - Total Smooth Directional');
subplot(1,3,3);
imshow(imOut1d);
title('Filtered Image - Original');

figure(6)
g=suptitle('Total Smooth Directional vs Original Ideal Low Pass filter');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,2,1);
mesh(D1);
title('Total Smooth Directional Filter ');
subplot(1,2,2);
mesh(h1);
title('Original Filter');

%% Filter Apllication #2 : Butterworth Directional LowPass on demo2Im1 & demo2Im2
d2=zeros(500,500,6);
D2=zeros(500,500);

for i=1:6
    d2(:,:,i)=myLowPassButterworthDirSmooth(50,5,500,30*(i-1),30,'G',30,15);
    D2=D2+d2(:,:,i);
end
 
h2=myLowPassButterworth(50,5,500);
D2=myDirCorrect(D2,h2,'L');


imOut2a=real(myFiltFreq(demo2Im1,D2));
imOut2b=myFiltFreq(demo2Im1,h2);
imOut2c=real(myFiltFreq(demo2Im2,D2));
imOut2d=myFiltFreq(demo2Im2,h2);

figure(7);
g=suptitle('Total Smooth Directional vs Original Butterworth Low Pass filter applied on demo2Im1 image');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,3,1);
imshow(demo2Im1);
title('Original Image');
subplot(1,3,2);
imshow(imOut2a);
title('Filtered Image - Total Smooth Directional');
subplot(1,3,3);
imshow(imOut2b);
title('Filtered Image - Original'); 

figure(8);
g=suptitle('Total Smooth Directional vs Original Butterworth Low Pass filter applied on demo2Im2 image');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,3,1);
imshow(demo2Im2);
title('Original Image');
subplot(1,3,2);
imshow(imOut2c);
title('Filtered Image - Total Smooth Directional');
subplot(1,3,3);
imshow(imOut2d);
title('Filtered Image - Original');

figure(9)
g=suptitle('Total Smooth Directional vs Original Butterworth Low Pass filter');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,2,1);
mesh(D2);
zlim([0 1.02])
title('Total Smooth Directional Filter ');
subplot(1,2,2);
mesh(h2);
title('Original Filter');

%% Filter Apllication #3 : Gauss Directional LowPass on demo2Im1 & demo2Im2
d3=zeros(500,500,6);
D3=zeros(500,500);

for i=1:6
    d3(:,:,i)=myLowPassGaussDirSmooth(50,500,30*(i-1),30,'G',30,15);
    D3=D3+d3(:,:,i);
end

h3=myLowPassGauss(50,500);
D3=myDirCorrect(D3,h3,'L');

imOut3a=real(myFiltFreq(demo2Im1,D3));
imOut3b=myFiltFreq(demo2Im1,h3);
imOut3c=real(myFiltFreq(demo2Im2,D3));
imOut3d=myFiltFreq(demo2Im2,h3);

figure(10);
g=suptitle('Total Smooth Directional vs Original Gauss Low Pass filter applied on demo2Im1 image');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,3,1);
imshow(demo2Im1);
title('Original Image');
subplot(1,3,2);
imshow(imOut3a);
title('Filtered Image - Total Smooth Directional');
subplot(1,3,3);
imshow(imOut3b);
title('Filtered Image - Original'); 

figure(11);
g=suptitle('Total Smooth Directional vs Original Gauss Low Pass filter applied on demo2Im2 image');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,3,1);
imshow(demo2Im2);
title('Original Image');
subplot(1,3,2);
imshow(imOut3c);
title('Filtered Image - Total Smooth Directional');
subplot(1,3,3);
imshow(imOut3d);
title('Filtered Image - Original');

figure(12)
g=suptitle('Total Smooth Directional vs Original Gauss Low Pass filter');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,2,1);
mesh(D3);
title('Total Smooth Directional Filter ');
subplot(1,2,2);
mesh(h3);
title('Original Filter');

%% Filter Apllication #4 : Ideal Directional HighPass on demo2Im1 & demo2Im2
d4=zeros(500,500,6);
D4=zeros(500,500);

for i=1:6
    d4(:,:,i)=myHighPassIdealDirSmooth(150,500,30*(i-1),30,'G',30,15); 
    D4=D4+d4(:,:,i);
end

h4=myHighPassIdeal(150,500);
D4=myDirCorrect(D4,h4,'H');

imOut4a=real(myFiltFreq(demo2Im1,D4));
imOut4b=myFiltFreq(demo2Im1,h4);
imOut4c=real(myFiltFreq(demo2Im2,D4));
imOut4d=myFiltFreq(demo2Im2,h4);

figure(13);
g=suptitle('Total Smooth Directional vs Original Ideal High Pass filter applied on demo2Im1 image');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,3,1);
imshow(demo2Im1);
title('Original Image');
subplot(1,3,2);
imshow(imOut4a);
title('Filtered Image - Total Smooth Directional');
subplot(1,3,3);
imshow(imOut4b);
title('Filtered Image - Original'); 

figure(14);
g=suptitle('Total Smooth Directional vs Original Ideal High Pass filter applied on demo2Im2 image');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,3,1);
imshow(demo2Im2);
title('Original Image');
subplot(1,3,2);
imshow(imOut4c);
title('Filtered Image - Total Smooth Directional');
subplot(1,3,3);
imshow(imOut4d);
title('Filtered Image - Original');

figure(15)
g=suptitle('Total Smooth Directional vs Original Ideal Low Pass filter');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,2,1);
mesh(D4);
title('Total Smooth Directional Filter ');
subplot(1,2,2);
mesh(h4);
title('Original Filter');

%% Filter Apllication #5 : Butterworth Directional HighPass on demo2Im1 & demo2Im2
d5=zeros(500,500,6);
D5=zeros(500,500);

for i=1:6
    d5(:,:,i)=myHighPassButterworthDirSmooth(150,5,500,30*(i-1),30,'G',30,15);
    D5=D5+d5(:,:,i);
end

h5=myHighPassButterworth(150,5,500);
D5=myDirCorrect(D5,h5,'H');

imOut5a=real(myFiltFreq(demo2Im1,D5));
imOut5b=myFiltFreq(demo2Im1,h5);
imOut5c=real(myFiltFreq(demo2Im2,D5));
imOut5d=myFiltFreq(demo2Im2,h5);

figure(16);
g=suptitle('Total Smooth Directional vs Original Butterworth High Pass filter applied on demo2Im1 image');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,3,1);
imshow(demo2Im1);
title('Original Image');
subplot(1,3,2);
imshow(imOut5a);
title('Filtered Image - Total Smooth Directional');
subplot(1,3,3);
imshow(imOut5b);
title('Filtered Image - Original');

figure(17);
g=suptitle('Total Directional vs Original Butterworth High Pass filter applied on demo2Im2 image');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,3,1);
imshow(demo2Im2);
title('Original Image');
subplot(1,3,2);
imshow(imOut5c);
title('Filtered Image - Total Smooth Directional');
subplot(1,3,3);
imshow(imOut5d);
title('Filtered Image - Original');

figure(18)
g=suptitle('Total Smooth Directional vs Original Butterworth High Pass filter');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,2,1);
mesh(D5);
title('Total Smooth Directional Filter ');
subplot(1,2,2);
mesh(h5);
title('Original Filter');

%% Filter Apllication #6 : Gauss Directional HighPass on demo2Im1 & demo2Im2
d6=zeros(500,500,6);
D6=zeros(500,500);

for i=1:6
    d6(:,:,i)=myHighPassGaussDirSmooth(150,500,30*(i-1),30,'G',30,15);
    D6=D6+d6(:,:,i);
end

h6=myHighPassGauss(150,500);
D6=myDirCorrect(D6,h6,'H');

imOut6a=real(myFiltFreq(demo2Im1,D6));
imOut6b=myFiltFreq(demo2Im1,h6);
imOut6c=real(myFiltFreq(demo2Im2,D6));
imOut6d=myFiltFreq(demo2Im2,h6);

figure(19);
g=suptitle('Total Smooth Directional vs Original Gauss High Pass filter applied on demo2Im1 image');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,3,1);
imshow(demo2Im1);
title('Original Image');
subplot(1,3,2);
imshow(imOut6a);
title('Filtered Image - Total Smooth Directional');
subplot(1,3,3);
imshow(imOut6b);
title('Filtered Image - Original'); 

figure(20);
g=suptitle('Total Smooth Directional vs Original Gauss High Pass filter applied on demo2Im2 image');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,3,1);
imshow(demo2Im2);
title('Original Image');
subplot(1,3,2);
imshow(imOut6c);
title('Filtered Image - Total Directional');
subplot(1,3,3);
imshow(imOut6d);
title('Filtered Image - Original');

figure(21)
g=suptitle('Total Smooth Directional vs Original  Gauss High Pass filter');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,2,1);
mesh(D6);
title('Total Smooth Directional Filter ');
subplot(1,2,2);
mesh(h6);
title('Original Filter');

%% Filter Apllication #7 : Ideal Directional BandPass on demo2Im1 & demo2Im2
d7=zeros(500,500,6);
D7=zeros(500,500);

for i=1:6
    d7(:,:,i)=myBandPassIdealDirSmooth(50,150,500,30*(i-1),30,'G',30,15); 
    D7=D7+d7(:,:,i);
end

h7=myBandPassIdeal(50,150,500);
D7=myDirCorrect(D7,h7,'B');

imOut7a=real(myFiltFreq(demo2Im1,D7));
imOut7b=myFiltFreq(demo2Im1,h7);
imOut7c=real(myFiltFreq(demo2Im2,D7));
imOut7d=myFiltFreq(demo2Im2,h7);

figure(22);
g=suptitle('Total Smooth Directional vs Original Ideal Band Pass filter applied on demo2Im1 image');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,3,1);
imshow(demo2Im1);
title('Original Image');
subplot(1,3,2);
imshow(imOut7a);
title('Filtered Image - Total Smooth Directional');
subplot(1,3,3);
imshow(imOut7b);
title('Filtered Image - Original'); 


figure(23);
g=suptitle('Total Smooth Directional vs Original Ideal Band Pass filter applied on demo2Im2 image');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,3,1);
imshow(demo2Im2);
title('Original Image');
subplot(1,3,2);
imshow(imOut7c);
title('Filtered Image - Total Smooth Directional');
subplot(1,3,3);
imshow(imOut7d);
title('Filtered Image - Original');

figure(24)
g=suptitle('Total Smooth Directional vs Original Ideal Band Pass filter');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,2,1);
mesh(D7);
title('Total Smooth Directional Filter ');
subplot(1,2,2);
mesh(h7);
title('Original Filter');

%% Filter Apllication #8 : Butterworth Directional BandPass on demo2Im1 & demo2Im2
d8=zeros(500,500,6);
D8=zeros(500,500);

for i=1:6
    d8(:,:,i)=myBandPassButterworthDirSmooth(50,150,5,500,30*(i-1),30,'G',30,15);
    D8=D8+d8(:,:,i);
end

h8=myBandPassButterworth(50,150,5,500);
D8=myDirCorrect(D8,h8,'B');

imOut8a=real(myFiltFreq(demo2Im1,D8));
imOut8b=myFiltFreq(demo2Im1,h8);
imOut8c=real(myFiltFreq(demo2Im2,D8));
imOut8d=myFiltFreq(demo2Im2,h8);

figure(25);
g=suptitle('Total Smooth Directional vs Original Butterworth Band Pass filter applied on demo2Im1 image');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,3,1);
imshow(demo2Im1);
title('Original Image');
subplot(1,3,2);
imshow(imOut8a);
title('Filtered Image - Total Smooth Directional');
subplot(1,3,3);
imshow(imOut8b);
title('Filtered Image - Original'); 

figure(26);
g=suptitle('Total Smooth Directional vs Original Butterworth Band Pass filter applied on demo2Im2 image');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,3,1);
imshow(demo2Im2);
title('Original Image');
subplot(1,3,2);
imshow(imOut8c);
title('Filtered Image - Total Smooth Directional');
subplot(1,3,3);
imshow(imOut8d);
title('Filtered Image - Original');

figure(27)
g=suptitle('Total Smooth Directional vs Original Butterworth Band Pass filter');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,2,1);
mesh(D8);
title('Total Smooth Directional Filter ');
subplot(1,2,2);
mesh(h8);
title('Original Filter');

%% Filter Apllication #9 : Gauss Directional BandPass on demo2Im1 & demo2Im2
d9=zeros(500,500,6);
D9=zeros(500,500);

for i=1:6
    d9(:,:,i)=myBandPassGaussDirSmooth(50,150,500,30*(i-1),30,'G',30,15);
    D9=D9+d9(:,:,i);
end

h9=myBandPassGauss(50,150,500);
D9=myDirCorrect(D9,h9,'B');


imOut9a=real(myFiltFreq(demo2Im1,D9));
imOut9b=myFiltFreq(demo2Im1,h9);
imOut9c=real(myFiltFreq(demo2Im2,D9));
imOut9d=myFiltFreq(demo2Im2,h9);

figure(28);
g=suptitle('Total Smooth Directional vs Original Gauss Band Pass filter applied on demo2Im1 image');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,3,1);
imshow(demo2Im1);
title('Original Image');
subplot(1,3,2);
imshow(imOut9a);
title('Filtered Image - Total Smooth Directional');
subplot(1,3,3);
imshow(imOut9b);
title('Filtered Image - Original'); 

figure(29);
g=suptitle('Total Smooth Directional vs Original Gauss Band Pass filter applied on demo2Im2 image');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,3,1);
imshow(demo2Im2);
title('Original Image');
subplot(1,3,2);
imshow(imOut9c);
title('Filtered Image - Total Smooth Directional');
subplot(1,3,3);
imshow(imOut9d);
title('Filtered Image - Original');

figure(30)
g=suptitle('Total Smooth Directional vs Original Gauss Band Pass filter');
set(g,'FontSize',12,'FontWeight','normal')
subplot(1,2,1);
mesh(D9);
title('Total Smooth Directional Filter ');
subplot(1,2,2);
mesh(h9);
title('Original Filter');



%% Demonstration for Smooth Directional Butterworth Filters

%% Low Pass
figure(31)
g=suptitle('Total vs Smooth Directional Butterworth Low Pass Filter');
set(g,'FontSize',12,'FontWeight','normal')
g1 = myLowPassButterworthDir(120,5,500,30,40);
subplot(2,2,1)
mesh(g1);
view(2);
subplot(2,2,3);
mesh(g1);
g2 = myLowPassButterworthDirSmooth(120,5,500,30,40,'G',20,10);
subplot(2,2,2);
mesh(g2);
view(2);
subplot(2,2,4);
mesh(g2);

%% High Pass
figure(32)
g=suptitle('Total vs Smooth Directional Butterworth High Pass Filter');
set(g,'FontSize',12,'FontWeight','normal')
g3 = myHighPassButterworthDir(120,5,500,30,40);
subplot(2,2,1)
mesh(g3);
view(2);
subplot(2,2,3);
mesh(g3);
g4 = myHighPassButterworthDirSmooth(120,5,500,30,40,'G',20,10);
subplot(2,2,2);
mesh(g4);
view(2);
subplot(2,2,4);
mesh(g4);

%% Band Pass
figure(33)
g=suptitle('Total vs Smooth Directional Butterworth Band Pass Filter');
set(g,'FontSize',12,'FontWeight','normal')
g5 = myBandPassButterworthDir(50,150,5,500,30,40);
subplot(2,2,1)
mesh(g5);
view(2);
subplot(2,2,3);
mesh(g5);
g6 = myBandPassButterworthDirSmooth(50,150,5,500,30,40,'G',20,10);
subplot(2,2,2);
mesh(g6);
view(2);
subplot(2,2,4);
mesh(g6);



%% Embedded function myDirCorrect to fix inaccuracies in D filters

function D=myDirCorrect(D,h,filtType)

  N=size(D);
  N=N(1);
  center=ceil((size(D)+1)/2);
  
  
  if mod(N,2)==0
    D(center(1)-1,center(2)-1)=D(center(1)+1,center(2)+1);
    D(center(1)-1,center(2))=D(center(1)+1,center(2));
    D(center(1),center(2)-1)=D(center(1),center(2)+1);
  else
    D(center(1),center(2))=h(center(1),center(2));
    D(center(1)+1,center(2))=h(center(1)+1,center(2));
    D(center(1),center(2)+1)=h(center(1),center(2)+1);
    D(center(1),center(2)-1)=h(center(1),center(2)-1);
    D(center(1)-1,center(2))=h(center(1)-1,center(2));
  end
  
  if filtType == 'L' 
      D(center(1),center(2))=1;
  elseif filtType == 'B' || filtType == 'H'
      D(center(1),center(2))=D(center(1),center(2)); %%leave it unchanged.
  else 
      error('Wrong filter type input.');
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