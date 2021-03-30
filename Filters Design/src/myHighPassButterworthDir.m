function filtOut = myHighPassButterworthDir(cutOff, n, M, theta, phi)
%myHighPassButterworthDir - Implements a directional High Pass Butterworth filter in Frequency Domain
%
% SYNTAX
%
%   filtOut = myHighPassButterworthDir(cutOff, n, M, theta, phi)
%   
% INPUT
%
%   cutOff     Cutoff frequency
%   n          Filter's order
%   M          Filter's dimension 
%   theta      Filter's orientation (direction) (in degrees)
%   phi        Filter's size of circular sector (in degrees)
%
% OUTPUT
%
%   filtOut    Filter implementation in Frequency Domain
%
%

filtOut = myHighPassButterworth(cutOff,n,M);
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