function h = myDirMask(theta,phi,N)
%myDirMask - Produces a directional mask defined by theta and phi
%
% SYNTAX
%
%   h = myDirMask(theta,phi,N)
%   
% INPUT
% 
%   theta       The angle of the line in the m matrix (in degrees)
%   phi         Size of circular sector (in degrees)
%   N           Size of mask  [N by N]
%
% OUTPUT
%
%   h           Output directional mask [N by N]
%
% DESCRIPTION
%
%   myDirMask uses myLine2mat and myFillMat to create a directional mask 
%   with angle theta and "stretching" phi (degrees). Three line matrices
%   are created with angles theta, theta-phi/2, theta+phi/2 . The matrices
%   are then filled with myFillMat. The overlaping part "thrown away" and 
%   what is left is the directional mask. Additional scan is made to ensure 
%   that mask has been constructed correctly by comparing the mask with 
%   the initial lines. Finally, the  edges of tha mask are reduced to 1/2 
%   so that directional masks can be placed together and make an 
%   omni-directional mask.
%
%

if phi>=180   % phi limit
    phi=180;
end

%% Construct line matrices and fill them
m1=myLine2mat(theta,N);            
m2=myLine2mat(theta-phi/2,N);
m3=myLine2mat(theta+phi/2,N);

m1_init=m1; %store initial matrices before filling for later usage
m2_init=m2; 
m3_init=m3;

m2 = myFillMat(m2,theta-phi/2); 
m3 = myFillMat(m3,theta+phi/2);

h=m2+m3;

%% Throw away the overlaping part of the matrix h 

for i=1:N
    for j=1:N
        if h(i,j)==2
           h(i,j)=0;
        end
    end
end

%% Scan initial matrices m1,m2,m3 for missing coefficients in h 

delta_m=floor(0.5*N); % define scan "window"  
center=ceil((size(h)+1)/2);

for i=center(1)-delta_m:1:center(1)+delta_m-1+mod(N,2)
    for j=center(2)-delta_m:1:center(2)+delta_m-1+mod(N,2)
        if h(i,j)==0 && ( m2_init(i,j)>0 || m3_init(i,j)>0) %m1_init(i,j)>0 ||
           h(i,j)=1;
        end
    end
end



%% Modify the lines in the edges of the mask

h= h + m2_init + m3_init; % spot lines in the edges  

for i=1:N
    for j=1:N
        if h(i,j)==2     % edge point
           h(i,j)=0.5;   % new value of edge point
        end
    end
end

h(center(1),center(2))=1;

if mod(N,2)==0 
    h(center(1)-1,center(2)-1)=1;
end

%final Correction 
for i=1:N
    for j=1:N
        if h(i,j)>1     
           h(i,j)=1;   % new value of edge point
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