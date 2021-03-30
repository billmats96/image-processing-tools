function filtOut = myBandPassIdeal(cutOffLow ,cutOffHigh , M)
%myBandPassIdeal - Implements an ideal Band Pass filter in Frequency Domain
%
% SYNTAX
%
%   filtOut = myBandPassIdeal(cutOffLow ,cutOffHigh , M)
%   
% INPUT
%
%   cutOffLow    Low cutOff frequency
%   cutOffHigh   High cutOff frequency
%   M            Filter's dimension     
%
% OUTPUT
%
%   filtOut    Filter implementation in Frequency Domain
%
% 

filtOut = myLowPassIdeal(cutOffHigh,M)-myLowPassIdeal(cutOffLow,M);

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