function filtOut = myLowPassButterworthDir(cutOff, n, M, theta, phi)
%myLowPassButterworthDir - Implements a directional Low Pass Butterworth filter in Frequency Domain
%
% SYNTAX
%
%   filtOut = myLowPassButterworthDir(cutOff, n, M, theta, phi)
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

filtOut = myLowPassButterworth(cutOff,n,M);
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