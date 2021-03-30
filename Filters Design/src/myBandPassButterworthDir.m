function filtOut = myBandPassButterworthDir(cutOffLow , cutOffHigh , n, M, theta, phi)
%myBandPassButterworthDir - Implements a directional Band Pass Butterworth filter in Frequency Domain
%
% SYNTAX
%
%   filtOut = myBandPassButterworthDir(cutOffLow , cutOffHigh , n, M, theta, phi)
%   
% INPUT
%
%   cutOffLow    Low CutOff frequency
%   cutOffHigh   High CutOff frequency    
%   n            Filter's order
%   M            Filter's dimension 
%   theta        Filter's orientation (direction) (in degrees)
%   phi          Filter's size of circular sector (in degrees)
%
% OUTPUT
%
%   filtOut    Filter implementation in Frequency Domain
%
%

filtOut = myBandPassButterworth(cutOffLow,cutOffHigh,n,M);
h = myDirMask(theta,phi,M);
filtOut = filtOut.*h;


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