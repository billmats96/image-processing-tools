function filtOut = myBandPassGauss(sigmaLow ,sigmaHigh, M)
%myBandPassGauss - Implements a Band Pass Gauss filter in Frequency Domain
%
% SYNTAX
%
%   filtOut = myBandPassGauss(sigmaLow ,sigmaHigh, M)
%   
% INPUT
%
%   sigmaLow     Standard deviation of the function that defines low cutoff frequency 
%   sigmaHigh    Standard deviation of the function that defines high cutoff frequency
%   M            Filter's dimension     
%
% OUTPUT
%
%   filtOut    Filter implementation in Frequency Domain
%
%

filtOut = myLowPassGauss(sigmaHigh,M)-myLowPassGauss(sigmaLow,M);
filtOut = filtOut./max(filtOut(:));

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