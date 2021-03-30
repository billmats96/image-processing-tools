function filtOut = myBandPassGaussDir(sigmaLow ,sigmaHigh , M, theta, phi)
%myBandPassGaussDir - Implements a directional Band Pass Gauss filter in Frequency Domain
%
% SYNTAX
%
%   filtOut = myBandPassGaussDir(sigmaLow ,sigmaHigh, M, theta, phi)
%   
% INPUT
%
%   sigmaLow     Standard deviation of the function that defines low cutoff frequency 
%   sigmaHigh    Standard deviation of the function that defines high cutoff frequency
%   M            Filter's dimension
%   theta        Filter's orientation (direction) (in degrees)
%   phi          Filter's size of circular sector (in degrees)
%
% OUTPUT
%
%   filtOut    Filter implementation in Frequency Domain
%
%

filtOut=myBandPassGauss(sigmaLow ,sigmaHigh , M);
h=myDirMask(theta,phi,M);
filtOut=filtOut.*h;

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