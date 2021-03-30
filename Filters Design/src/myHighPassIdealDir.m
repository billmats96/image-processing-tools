function filtOut = myHighPassIdealDir(cutOff, M, theta, phi)
%myHighPassIdealDir - Implements an ideal directional High Pass filter in Frequency Domain
%
% SYNTAX
%
%   filtOut = myHighPassIdealDir(cutOff, M, theta, phi)
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
% DESCRIPTION
%
%   myHighPassIdealDir
%

filtOut = myHighPassIdeal(cutOff,M);
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