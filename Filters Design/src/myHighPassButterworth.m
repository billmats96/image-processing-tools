function filtOut = myHighPassButterworth(cutOff, n, M)
%myHighPassButterworth - Implements a High Pass Butterworth filter in Frequency Domain
%
% SYNTAX
%
%   filtOut = myHighPassButterworth(cutOff, n, M)
%   
% INPUT
%
%   cutOff    CutOff frequency
%   n         Filter's order
%   M         Filter's dimension     
%
% OUTPUT
%
%   filtOut    Filter implementation in Frequency Domain
%
% 

filtOut = 1 - myLowPassButterworth(cutOff, n, M);

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