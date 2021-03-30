function filtOut = myLowPassButterworth(cutOff, n, M)
%myLowPassButterworth - Implements a Low Pass Butterworth filter in Frequency Domain
%
% SYNTAX
%
%   filtOut = myLowPassButterworth(cutOff, n, M)
%   
% INPUT
%
%   cutOff     Cutoff frequency
%   n          Filter's order 
%   M          Filter's dimension     
%
% OUTPUT
%
%   filtOut    Filter implementation in Frequency Domain
%


filtOut=zeros(M,M);

for i=1:M
    for j=1:M
        temp=sqrt((i-M/2-1)^2+(j-M/2-1)^2);
        if cutOff~=0
          filtOut(i,j)=1/(1+(temp/cutOff)^(2*n));
        end
    end
end

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