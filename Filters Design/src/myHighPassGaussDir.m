function filtOut = myHighPassGaussDir(sigma, M, theta, phi)
%myHighPassGaussDir - Implements a directional High Pass Gauss filter in Frequency Domain
%
% SYNTAX
%
%   filtOut = myHighPassGaussDir(sigma, M, theta, phi))
%   
% INPUT
%
%   sigma      Standard deviation of the function that defines cutoff frequency    
%   M          Filter's dimension 
%   theta      Filter's orientation (direction) (in degrees)
%   phi        Filter's size of circular sector (in degrees)
%
% OUTPUT
%
%   filtOut    Filter implementation in Frequency Domain
%
% 

filtOut = myHighPassGauss(sigma,M);
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