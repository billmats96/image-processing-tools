function filtOut = myBandPassIdealDir(cutOffLow ,cutOffHigh , M, theta, phi)
%myBandPassIdealDir - Implements an ideal directional Band Pass filter in Frequency Domain
%
% SYNTAX
%
%   filtOut = myBandPassIdealDir(cutOffLow ,cutOffHigh , M, theta, phi)
%   
% INPUT
%
%   cutOffLow    Low cutOff frequency
%   cutOffHigh   High cutOff frequency
%   M            Filter's dimension
%   theta        Filter's orientation (direction) (in degrees)
%   phi          Filter's size of circular sector (in degrees)
%
% OUTPUT
%
%   filtOut    Filter implementation in Frequency Domain
%
% 

filtOut = myBandPassIdeal(cutOffLow,cutOffHigh,M);
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