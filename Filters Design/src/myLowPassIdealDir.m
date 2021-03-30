function filtOut = myLowPassIdealDir(cutOff, M, theta, phi)
%myLowPassIdealDir - Implements an ideal directional Low Pass filter in Frequency Domain
%
% SYNTAX
%
%   filtOut = myLowPassIdealDir(cutOff, M, theta, phi)
%   
% INPUT
%
%   cutOff     Cutoff frequency       
%   M          Filter's dimension 
%   theta      Filter's orientation (direction) (in degrees)
%   phi        Filter's size of circular sector (in degrees)
%
% OUTPUT
%
%   filtOut    Filter implementation in Frequency Domain
%
% 

filtOut = myLowPassIdeal(cutOff,M);
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