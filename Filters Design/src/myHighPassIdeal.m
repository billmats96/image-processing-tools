function filtOut = myHighPassIdeal(cutOff, M)
%myHighPassIdeal - Implements an ideal High Pass filter in Frequency Domain
%
% SYNTAX
%
%   filtOut = myHighPassIdeal(cutOff, M)
%   
% INPUT
%
%   cutOff    CutOff frequency
%   M         Filter's dimension     
%
% OUTPUT
%
%   filtOut    Filter implementation in Frequency Domain
%
% 

filtOut = 1 - myLowPassIdeal(cutOff,M);

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