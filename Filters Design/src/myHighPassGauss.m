function filtOut = myHighPassGauss(sigma,M)
%myHighPassGauss - Implements a High Pass Gauss filter in Frequency Domain
%
% SYNTAX
%
%   filtOut = myHighPassGauss(sigma, M)
%   
% INPUT
%
%   sigma     Standard deviation of the function that defines cutoff frequency 
%   M         Filter's dimension     
%
% OUTPUT
%
%   filtOut    Filter implementation in Frequency Domain
%
% 

filtOut = 1 - myLowPassGauss(sigma, M);

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