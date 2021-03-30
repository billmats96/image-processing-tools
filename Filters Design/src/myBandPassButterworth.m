function filtOut = myBandPassButterworth(cutOffLow, cutOffHigh, n, M)
%myBandPassButterworth - Implements a Band Pass Butterworth filter in Frequency Domain
%
% SYNTAX
%
%   filtOut = myBandPassButterworth(cutOffLow, cutOffHigh, n, M)
%   
% INPUT
%
%   cutOffLow    Low CutOff frequency
%   cutOffHigh   High CutOff frequency
%   n            Filter's order
%   M            Filter's dimension     
%
% OUTPUT
%
%   filtOut      Filter implementation in Frequency Domain
%
% 


filtOut = myLowPassButterworth(cutOffHigh,n,M)-myLowPassButterworth(cutOffLow,n,M);

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